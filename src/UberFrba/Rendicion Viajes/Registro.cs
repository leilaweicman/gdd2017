﻿using Classes;
using Connection;
using Exceptions;
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

namespace UberFrba.Rendicion_Viajes
{
    public partial class Registro : Form
    {
        public Registro()
        {
          
            InitializeComponent();
            cargarTurnos();
            CargarChoferes();

        }
        private void txtPorcentaje_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = !char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar);
        }
        private void cargarTurnos()
        {
            try
            {
                //Obtengo los clientes y los muestro en el combobox.
                DataSet ds = Turno.obtenerTurnosHabilitados();
                if (ds.Tables[0].Rows.Count != 0)
                {
                    //Uso el manager de dropdowns para cargar el comboBox con los clientes
                    DropDownListManager.CargarCombo(cmbTurno, ds.Tables[0], "IDTurno", "Descripcion", false, "");
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
        private void CargarChoferes()
        {
            try
            {
                //Obtengo los choferes y los muestro en el combobox.
                DataSet ds = Usuario.ObtenerChoferesHabilitados();
                if (ds.Tables[0].Rows.Count != 0)
                {
                    //Uso el manager de dropdowns para cargar el comboBox con los choferes
                    DropDownListManager.CargarCombo(cmbChofer, ds.Tables[0], "IDChofer", "Nombre", false, "");
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

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void btnCancelar_KeyPress(object sender, KeyPressEventArgs e)
        {

        }

        private void txtPorcentaje_KeyPress_1(object sender, KeyPressEventArgs e)
        {
              const char Delete = (char)8;
              e.Handled = !Char.IsDigit(e.KeyChar) && e.KeyChar != Delete;
        }
        private bool existe()
        {
            string query = "EXEC  [GIRLPOWER].PR_verifExisteRendicion '" + this.dtpFecha.Value.ToString("yyyy-MM-dd") + "'," + this.cmbTurno.SelectedValue + "," + this.cmbChofer.SelectedValue;
            var aux = SQLHelper.ExecuteQuery(query);
            int existe= 0;
            while (aux.Read())
            {
                if (!object.Equals(aux["Existe"], DBNull.Value))
                    existe = int.Parse(aux["Existe"].ToString());
            }
            return existe==1?true:false;
        }

        private int ObtenerCantidadViajes()
        {
           
            string query = "select count(*) as Cantidad from  [GIRLPOWER].Viaje where cast(FechaFin as date)='" + this.dtpFecha.Value.ToString("yyyy-MM-dd") + "' and idTurno=" + this.cmbTurno.SelectedValue + " and idChofer=" + this.cmbChofer.SelectedValue;
            var aux = SQLHelper.ExecuteQuery(query);
            int cant= 0;
            while (aux.Read())
            {
                if (!object.Equals(aux["Cantidad"], DBNull.Value))
                    cant = int.Parse(aux["Cantidad"].ToString());
            }
            return cant;
        }
        private void btnSiguiente_Click(object sender, EventArgs e)
        {
                DateTime fechaMinSql = new DateTime(1753, 01, 01);
                DateTime fechaMaxSql = new DateTime(9999, 12, 12);
                DateTime fecha=Convert.ToDateTime(dtpFecha.Text);

                List<String> lstErrores = new List<string>();
                bool huboErrorDato = false;

                string error="";

            if (this.txtPorcentaje.Text != "" && this.dtpFecha.Value.ToString("yyyy-MM-dd") != "")
            {  
                error = Validator.MayorACero(txtPorcentaje.Text, "Porcentaje");
                if (error != "")
                {
                    lstErrores.Add(error);
                    huboErrorDato = true;
                }
                else
                {
                    int num;
                    bool resul = Int32.TryParse(txtPorcentaje.Text, out num);
                    if (resul)
                    {
                        if (int.Parse(txtPorcentaje.Text) > 100)
                        {
                            lstErrores.Add("El porcentaje debe estar entre 0 y 100.\n");
                            huboErrorDato = true;
                        }
                    }
                    else
                    {
                        lstErrores.Add("El porcentaje debe estar entre 0 y 100.\n");
                        huboErrorDato = true;
                    }                 

                }
                
                if (fecha.CompareTo(fechaMinSql) < 0 || fecha.CompareTo(fechaMaxSql) > 0)
                {
                    lstErrores.Add("La fecha debe estar entre 1/1/1753 y 12/12/9999.\n");
                    huboErrorDato = true;
                }
          /*      if (fecha >= DateTime.Now.Date)
                {
                    lstErrores.Add("La fecha debe ser anterior a la del dia de hoy.\n");
                    huboErrorDato = true;
                }

                if (int.Parse(txtPorcentaje.Text) > 100)
                {
                    lstErrores.Add("El porcentaje debe estar entre 0 y 100.\n");
                    huboErrorDato = true;
                }*/

                if(huboErrorDato){
                    Validator.mostrarErrores(lstErrores, "");    
                }
                else 
                {
                    if (!existe())
                    {
                        if (ObtenerCantidadViajes() > 0)
                        {
                            RendicionDetalle rd = new RendicionDetalle();
                            rd.Fecha = this.dtpFecha.Value.ToString("yyyy-MM-dd");
                            rd.Porcentaje = int.Parse(this.txtPorcentaje.Text);
                            rd.idchofer = int.Parse(this.cmbChofer.SelectedValue.ToString());
                            rd.IDTurno = int.Parse(this.cmbTurno.SelectedValue.ToString());
                            Rendicion_Viajes.Detalle reind = new Rendicion_Viajes.Detalle(rd);
                            this.Hide();
                            reind.Show();
                        }
                        else
                        {
                            MessageBox.Show("No hay ningun viaje para realizar la rendicion");
                        }
                    }
                    else
                    {
                        MessageBox.Show("Ya existe una rendicion para ese turno, fecha y chofer");
                    }
                }
            }
            else
            {
                MessageBox.Show("Debe completar todos los campos");
            }
        }

        private void groupBoxReg_Enter(object sender, EventArgs e)
        {

        }

        private void Registro_Load(object sender, EventArgs e)
        {
            dtpFecha.CustomFormat = "dd/MM/yyyy";
            dtpFecha.Format = DateTimePickerFormat.Custom;
            txtPorcentaje.Text = "30";
        }

    }
}
