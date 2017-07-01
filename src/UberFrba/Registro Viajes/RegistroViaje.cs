using Classes;
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

namespace UberFrba.Registro_Viajes
{
    public partial class RegistroViaje : Form
    {
        int IDAutomovil = 0;

        public RegistroViaje()
        {
            InitializeComponent();
        }

        private void RegistroViaje_Load(object sender, EventArgs e)
        {
            txtAutomovil.Enabled = false;
            dtpFechaInicio.CustomFormat = "dd/MM/yyyy HH:mm:ss";
            dtpFechaInicio.Format = DateTimePickerFormat.Custom;
            dtpFechaFin.CustomFormat = "dd/MM/yyyy HH:mm:ss";
            dtpFechaFin.Format = DateTimePickerFormat.Custom;
            CargarChoferes();
            CargarClientes();
            cargarTurnos();
        }

        private void cargarTurnos()
        {
            try
            {
                //Obtengo los clientes y los muestro en el combobox.
                DataSet ds = Turno.obtenerTodos();
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

        private void CargarClientes()
        {
            try
            {
                //Obtengo los clientes y los muestro en el combobox.
                DataSet ds = Usuario.ObtenerClientes();
                if (ds.Tables[0].Rows.Count != 0)
                {
                    //Uso el manager de dropdowns para cargar el comboBox con los clientes
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

        private void CargarChoferes()
        {
            try
            {
                //Obtengo los choferes y los muestro en el combobox.
                DataSet ds = Usuario.ObtenerChoferes();
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

        private void cmbChofer_SelectedIndexChanged(object sender, EventArgs e)
        {
            //cuando selecciona un chofer tengo que cargar el automovil de ese chofer
            try
            {
                //Obtengo el automovil y lo muestro en el txt.
                Automovil auto = new Automovil();           
                DataSet ds = auto.ObtenerAutomovilPorChofer(Convert.ToInt32(cmbChofer.SelectedValue));
                auto.DataRowToObject(ds.Tables[0].Rows[0]);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    txtAutomovil.Text = auto.Patente;
                    IDAutomovil = auto.IDAutomovil;
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

        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            //valido campos ingresados
            if (ValidarCampos())
            {
                //los campos son validos, registro el viaje
              
                Viaje unNuevoViaje = new Viaje();
                unNuevoViaje.Id_Chofer = Convert.ToInt32(cmbChofer.SelectedValue);
                unNuevoViaje.Id_Automovil = IDAutomovil;
                unNuevoViaje.Id_Turno = Convert.ToInt32(cmbTurno.SelectedValue);
                unNuevoViaje.Id_Cliente = Convert.ToInt32(cmbCliente.SelectedValue);
                unNuevoViaje.CantKilometros = Convert.ToDecimal(txtKilometros.Text); 
                unNuevoViaje.FechaYHoraInicio = dtpFechaInicio.Value.ToString("yyyy-MM-dd HH:mm:ss");
                unNuevoViaje.FechaYHoraFin = dtpFechaFin.Value.ToString("yyyy-MM-dd HH:mm:ss");

                //obtengo el turno para calcular el precio del viaje
                //precio base turno + valor del km * cant km

                Turno unTurno = new Turno();
                DataSet ds = unTurno.obtenerTurnoPorId(unNuevoViaje.Id_Turno);
                unTurno.DataRowToObject(ds.Tables[0].Rows[0]);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    unNuevoViaje.Precio = unTurno.PrecioBase + unTurno.ValorKilometro * unNuevoViaje.CantKilometros;
                    unNuevoViaje.guardarDatosDeViajeNuevo();
                    DialogResult dr = MessageBox.Show("El viaje ha sido creado", "Perfecto!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    if (dr == DialogResult.OK)
                    {
                        resetearCampos();
                    }

                }          
                  
               
            }

        }

        private void resetearCampos()
        {
            txtAutomovil.Text = "";
            txtKilometros.Text = "";
            txtAutomovil.Enabled = false;
            CargarChoferes();
            CargarClientes();
            cargarTurnos();            
            dtpFechaInicio.Text = "";
            dtpFechaFin.Text = "";
            dtpFechaInicio.CustomFormat = "dd/MM/yyyy HH:mm:ss";
            dtpFechaInicio.Format = DateTimePickerFormat.Custom;
            dtpFechaFin.CustomFormat = "dd/MM/yyyy HH:mm:ss";
            dtpFechaFin.Format = DateTimePickerFormat.Custom;
            
        }

        private bool ValidarCampos()
        {
            string strErrores = "";
            strErrores = Validator.FechaMenor(dtpFechaInicio.Value, dtpFechaFin.Value);
            strErrores += Validator.SoloNumerosODecimales(txtKilometros.Text, "Kilometros");
            strErrores += Validator.MayorACero(txtKilometros.Text, "Kilometros");

            if (strErrores.Length > 0)
            {
                MessageBox.Show(strErrores, "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            return true;
        }
    }
}
