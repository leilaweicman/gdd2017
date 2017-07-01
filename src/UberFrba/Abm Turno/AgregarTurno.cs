using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Utilities;
using Classes;
using Connection;
using System.Data.SqlClient;

namespace UberFrba.Abm_Turno
{
    public partial class AgregarTurno : Form
    {
        bool editing = false;
        Turno turnoNuevo = new Turno();
                
        public AgregarTurno()
        {
            InitializeComponent();
        }

        public AgregarTurno(Turno turnoAEditar)
        {
            InitializeComponent();
            turnoNuevo = turnoAEditar;
            editing = true;
        }


        private void AgregarTurno_Load(object sender, EventArgs e)
        {
            for (int i = 0; i <= 24; i++)
            {
                if (i == 0)
                {
                    cmbHoraInicio.Items.Add(i);
                }
                else if (i == 24)
                {
                    cmbHoraFin.Items.Add(i);
                }
                else
                {
                    cmbHoraInicio.Items.Add(i);
                    cmbHoraFin.Items.Add(i);
                }
            }
            if (editing)
            {
                txtDescripcion.Text = turnoNuevo.Descripcion;
                cmbHoraInicio.SelectedIndex = turnoNuevo.HoraInicio;
                cmbHoraFin.SelectedItem = turnoNuevo.HoraFin;
                txtPrecioBase.Text = turnoNuevo.PrecioBase.ToString();
                txtValorKilometro.Text = turnoNuevo.PrecioBase.ToString();
                chkHabilitado.Visible = true;
                if (turnoNuevo.Habilitado)
                {
                    chkHabilitado.Checked = true;
                }
            }
            else
            {
                cmbHoraFin.SelectedIndex = 0;
                cmbHoraInicio.SelectedIndex = 0;
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            AbmTurno abmTurnoForm = new AbmTurno();
            this.Hide();
            abmTurnoForm.Show();
        }

        private void btnRegistrar_Click(object sender, EventArgs e)
        {

            bool huboErrorDato = false;
            DateTime fechaMinSql = new DateTime(1753, 01, 01);
            DateTime fechaMaxSql = new DateTime(9999, 12, 12);

            List<string> lstErroresCampos = new List<string>();
            #region validacionCampos

            if (txtDescripcion.Text == "" || txtPrecioBase.Text == "" || txtValorKilometro.Text == "" || cmbHoraInicio.SelectedIndex == -1 ||
                cmbHoraFin.SelectedIndex==-1)
            {
                lstErroresCampos.Add("Complete todos los campos por favor.\n");
                huboErrorDato = true;
            }
            else
            {
                if(!Validator.EsNumero(txtPrecioBase.Text))
                {
                    lstErroresCampos.Add("El precio base debe ser numérico\n");
                } 
                else if (Validator.MayorACero(txtPrecioBase.Text, "Precio base")!="")
                {
                    lstErroresCampos.Add("El precio base debe ser mayor a cero\n");
                }

                if(!Validator.EsNumero(txtValorKilometro.Text))
                {
                    lstErroresCampos.Add("El valor del kilómetro base debe ser numérico\n");
                } 
                else if (Validator.MayorACero(txtValorKilometro.Text, "Valor kilómetro")!="")
                {
                    lstErroresCampos.Add("El valor del kilómetro debe ser mayor a cero\n");
                }
                if(int.Parse(cmbHoraInicio.SelectedItem.ToString()) <= int.Parse(cmbHoraFin.SelectedItem.ToString()))
                {
                    lstErroresCampos.Add("El horario de inicio debe ser mayor al de finalización\n");
                }
            }

            #endregion

            if (huboErrorDato)
            {
                Validator.mostrarErrores(lstErroresCampos, "");   
            }
            else
            {
                turnoNuevo.Descripcion = txtDescripcion.Text;
                turnoNuevo.HoraInicio = int.Parse(cmbHoraInicio.SelectedItem.ToString());
                turnoNuevo.HoraFin = int.Parse(cmbHoraFin.SelectedItem.ToString());
                turnoNuevo.PrecioBase = Decimal.Parse(txtPrecioBase.Text);
                turnoNuevo.ValorKilometro = Decimal.Parse(txtPrecioBase.Text);

                DataSet ds = SQLHelper.ExecuteDataSet("PR_traerTurnosHabilitados", CommandType.StoredProcedure);
                Dictionary<int, Turno> turnos = new Dictionary<int, Turno>();
                List<String> lstErrorSolapados = new List<string>();
                bool huboErrorSolapados = false;

                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    Turno turno = new Turno();
                    turno.DataRowToObject(row);
                    turnos.Add(turno.Id_Turno, turno);
                                                     
                    if (turnoNuevo.HoraInicio >= turno.HoraInicio && turnoNuevo.HoraInicio < turno.HoraFin)
                    {
                        lstErrorSolapados.Add("turno " + turno.Descripcion + " que es de " + turno.HoraInicio.ToString() + " hasta " + turno.HoraFin.ToString()+"\n");
                        huboErrorSolapados = true;
                    }
                    else if (turnoNuevo.HoraFin <= turno.HoraFin && turnoNuevo.HoraFin > turno.HoraInicio)
                    {
                        lstErrorSolapados.Add("turno " + turno.Descripcion + " que es de " + turno.HoraInicio.ToString() + " hasta " + turno.HoraFin.ToString()+"\n");
                        huboErrorSolapados = true;
                    }
                    else if (turnoNuevo.HoraInicio <= turno.HoraInicio && turnoNuevo.HoraFin >= turno.HoraFin)
                    {
                        lstErrorSolapados.Add("turno " + turno.Descripcion + " que es de " + turno.HoraInicio.ToString() + " hasta " + turno.HoraFin.ToString()+"\n");
                        huboErrorSolapados = true;
                    }
                }

                if (huboErrorSolapados)
                {
                    Validator.mostrarErrores(lstErrorSolapados, "No se pudo agregar el turno, se solapa con: \n");
                }
                else
                {
                    List<SqlParameter> parameterList = new List<SqlParameter>();

                    parameterList.Add(new SqlParameter("@descripcion", turnoNuevo.Descripcion));
                    parameterList.Add(new SqlParameter("@horaInicio", Convert.ToDecimal(turnoNuevo.HoraInicio)));
                    parameterList.Add(new SqlParameter("@horaFin", Convert.ToDecimal(turnoNuevo.HoraFin)));
                    parameterList.Add(new SqlParameter("@precioBase", turnoNuevo.PrecioBase));
                    parameterList.Add(new SqlParameter("@valorKilometro", turnoNuevo.ValorKilometro));

                    try
                    {
                        if (!editing)
                        {
                            SQLHelper.ExecuteNonQuery("PR_altaTurno", CommandType.StoredProcedure, parameterList);

                            MessageBox.Show("El turno se ha agregado correctamente");                            
                        }
                        else
                        {
                            if (chkHabilitado.Checked)
                            {
                                parameterList.Add(new SqlParameter("@habilitado", 1));
                            }
                            else
                            {
                                parameterList.Add(new SqlParameter("@habilitado", 0));
                            }

                            SQLHelper.ExecuteNonQuery("PR_editarTurno", CommandType.StoredProcedure, parameterList);
                            MessageBox.Show("El turno se ha modificado correctamente");
                        }

                        AbmTurno abmTurno = new AbmTurno();
                        this.Hide();
                        abmTurno.Show();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.ToString());
                    }


                }
                
            }

        }
    }
}
