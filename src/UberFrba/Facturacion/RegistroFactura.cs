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
using Exceptions;

namespace UberFrba.Facturacion
{
    public partial class RegistroFactura : Form
    {
        public RegistroFactura()
        {
            InitializeComponent();
        }

        private void btnSiguiente_Click(object sender, EventArgs e)
        {
            bool huboErrorCampo = false;
            bool fechasValidas = true;
            List<String> lstErroresCampos = new List<string>();
            
            DateTime fechaMinSql = new DateTime(1753, 01, 01);
            DateTime fechaMaxSql = new DateTime(9999, 12, 12);

            DateTime fechaInicio = new DateTime();
            DateTime fechaFin = new DateTime();

            if (maskedTxtFechaFin.Text == "  /  /    " || maskedTxtFechaInicio.Text == "  /  /    " || cmbCliente.SelectedIndex == -1)
            {
                huboErrorCampo = true;
                lstErroresCampos.Add("Complete todos los campos por favor");
            }
            else
            {
                if (!DateTime.TryParse(maskedTxtFechaInicio.Text, out fechaInicio))
                {
                    lstErroresCampos.Add("La fecha de inicio ingresada es incorrecta. El formato debe ser dd/mm/aaaa.\n");
                    huboErrorCampo = true;
                    fechasValidas = false;
                }
                else
                {
                    fechaInicio = Convert.ToDateTime(maskedTxtFechaInicio.Text);
                    if (fechaInicio.CompareTo(fechaMinSql) < 0 || fechaInicio.CompareTo(fechaMaxSql) > 0)
                    {
                        lstErroresCampos.Add("La fecha de inicio debe estar entre 1/1/1753 y 12/12/9999.\n");
                        huboErrorCampo = true;
                        fechasValidas = false;
                    }
                }
                
                if (!DateTime.TryParse(maskedTxtFechaFin.Text, out fechaFin))
                {
                    lstErroresCampos.Add("La fecha de finalización ingresada es incorrecta. El formato debe ser dd/mm/aaaa.\n");
                    huboErrorCampo = true;
                    fechasValidas = false;
                }
                else
                {
                    fechaFin = Convert.ToDateTime(maskedTxtFechaFin.Text);
                    if (fechaFin.CompareTo(fechaMinSql) < 0 || fechaFin.CompareTo(fechaMaxSql) > 0)
                    {
                        lstErroresCampos.Add("La fecha de finalización debe estar entre 1/1/1753 y 12/12/9999.\n");
                        huboErrorCampo = true;
                        fechasValidas = false;
                    }
                }

                if (fechasValidas)
                {
                    if (fechaInicio.CompareTo(fechaFin) >= 0)
                    {
                        lstErroresCampos.Add("La fecha de finalización debe ser posterior a la de inicio.\n");
                        huboErrorCampo = true;
                    }
                }
            }
            if (huboErrorCampo)
            {
                Validator.mostrarErrores(lstErroresCampos, "");
            }
            else
            {
                //verifico si existe factura en ese mes
                int idCliente = Convert.ToInt32(cmbCliente.SelectedValue);
                    
                List<SqlParameter> parameterList = new List<SqlParameter>();
                parameterList.Add(new SqlParameter("@idCliente", idCliente));
                parameterList.Add(new SqlParameter("@fechaInicio", fechaInicio));

                DataSet ds = SQLHelper.ExecuteDataSet("PR_verifExisteFacturaEseMes", CommandType.StoredProcedure, parameterList);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    DateTime fechaFinFacturaExistente = new DateTime();
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        fechaFinFacturaExistente = Convert.ToDateTime(dr["FechaFin"]);
                    }
                    MessageBox.Show("Ya existe una factura para el mes y año ingresado que finaliza el " + fechaFinFacturaExistente.ToString());
                }
                else
                {
                    string nomCliente = cmbCliente.SelectedItem.ToString();
                    FacturaDetalle factDetalleForm = new FacturaDetalle(idCliente, nomCliente, fechaInicio, fechaFin);
                    this.Hide();
                    factDetalleForm.Show();
                }
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void RegistroFactura_Load(object sender, EventArgs e)
        {
            CargarClientes();
        }

        private void CargarClientes()
        {
            try
            {
                //Obtengo los choferes y los muestro en el combobox.
                DataSet ds = Usuario.ObtenerClientes();
                if (ds.Tables[0].Rows.Count != 0)
                {
                    //Uso el manager de dropdowns para cargar el comboBox con los cliente
                    DropDownListManager.CargarCombo(cmbCliente, ds.Tables[0], "IDCliente", "Nombre", false, "");
                }
            }
            catch (ErrorConsultaException ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

    }
}
