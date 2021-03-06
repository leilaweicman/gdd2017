﻿using Classes;
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
        Usuario usuario = new Usuario();
        bool choferTieneAuto = true;
        public RegistroViaje()
        {
            InitializeComponent();
        }

        public RegistroViaje(Usuario u)
        {
            InitializeComponent();
            usuario = u;

        }

        private void RegistroViaje_Load(object sender, EventArgs e)
        {
            
                txtAutomovil.Enabled = false;
                dtpFechaInicio.CustomFormat = "dd/MM/yyyy HH:mm:ss";
                dtpFechaInicio.Format = DateTimePickerFormat.Custom;
                dtpFechaFin.CustomFormat = "dd/MM/yyyy HH:mm:ss";
                dtpFechaFin.Format = DateTimePickerFormat.Custom;

                //me fijo con que rol ingresó al sistema
                //si entro con chofer, cargo los datos de ese chofer en el combo y desahbilito el cmbChofer
                //si entro con cliente, cargo los datos de ese cliente en el combo y desahbilito el cmbCliente
                if (usuario.Rol.Id_Rol == 2)
                {
                    CargarChofer();
                    cmbChofer.Enabled = false;
                }
                else
                {
                    CargarChoferes();
                }
                if (usuario.Rol.Id_Rol == 3)
                {
                    CargarClienter();
                    cmbCliente.Enabled = false;
                }
                else
                {
                    CargarClientes();
                }

               // cargarTurnos(); los turnos se cargan cuando selecciona el chofer

                //si está ingresando como chofer, debe tener automovil
                if (! choferTieneAuto)
                {
                    //no puede registrar viaje porque no tiene automovil
                    cmbChofer.Enabled = false;
                    cmbCliente.Enabled = false;
                    cmbTurno.Enabled = false;
                    txtAutomovil.Enabled = false;
                    txtKilometros.Enabled = false;
                    dtpFechaFin.Enabled = false;
                    dtpFechaInicio.Enabled = false;
                    btnRegistrar.Enabled = false;

                    MessageBox.Show("Debe tener automovil para regisrtar su viaje. Contacte con el administrador para asignarle uno.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                   
                }
        }

        private void CargarClienter()
        {
            try
            {
                //Obtengo el cliente que ingresó al sistema y lo muestro en el combo
                DataSet ds = usuario.ObtenerClienteHabilitado();
                if (ds.Tables[0].Rows.Count != 0)
                {
                    //Uso el manager de dropdowns para cargar el comboBox con el chofer
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

        private void CargarChofer()
        {
            try
            {
                //Obtengo el chofer que ingresó al sistema y lo muestro en el combo
                DataSet ds = usuario.ObtenerChoferHabilitadoConAuto();
                if (ds.Tables[0].Rows.Count != 0)
                {
                    //Uso el manager de dropdowns para cargar el comboBox con el chofer
                    DropDownListManager.CargarCombo(cmbChofer, ds.Tables[0], "IDChofer", "Nombre", false, "");
                }
                else
                {
                    choferTieneAuto = false;                   
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

        private void cargarTurnos()
        {
            try
            {
                //Obtengo los clientes y los muestro en el combobox.
                DataSet ds = Turno.ObtenerTurnosHabilitadosDelAuto(IDAutomovil);
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
                DataSet ds = Usuario.ObtenerClientesHabilitados();
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
                //Obtengo los choferes habilitados y que tengan autos habilitados, y los muestro en el combobox.
                DataSet ds = Usuario.ObtenerChoferesHabilitadosConAuto();
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

                cargarTurnos();
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
                //los campos son validos, valido que no exista el viaje y lo registro
              
                Viaje unNuevoViaje = new Viaje();
                unNuevoViaje.Id_Chofer = Convert.ToInt32(cmbChofer.SelectedValue);
                unNuevoViaje.Id_Automovil = IDAutomovil;
                unNuevoViaje.Id_Turno = Convert.ToInt32(cmbTurno.SelectedValue);
                unNuevoViaje.Id_Cliente = Convert.ToInt32(cmbCliente.SelectedValue);
                unNuevoViaje.CantKilometros = Convert.ToDecimal(txtKilometros.Text); 
                unNuevoViaje.FechaYHoraInicio = dtpFechaInicio.Value.ToString("yyyy-MM-dd HH:mm:ss");
                unNuevoViaje.FechaYHoraFin = dtpFechaFin.Value.ToString("yyyy-MM-dd HH:mm:ss");

                if (!unNuevoViaje.ViajeExistente())
                {
                    //obtengo el turno para calcular el precio del viaje y para verificar que el horario de turno este entre los horarios ingresados
                    //precio base turno + valor del km * cant km

                    Turno unTurno = new Turno();
                    DataSet ds = unTurno.obtenerTurnoPorId(unNuevoViaje.Id_Turno);
                    unTurno.DataRowToObject(ds.Tables[0].Rows[0]);
                    if (ds.Tables[0].Rows.Count != 0)
                    {
                        if (ValidarHorario(unTurno))
                        {
                            unNuevoViaje.Precio = unTurno.PrecioBase + unTurno.ValorKilometro * unNuevoViaje.CantKilometros;
                            unNuevoViaje.guardarDatosDeViajeNuevo();
                            DialogResult dr = MessageBox.Show("El viaje ha sido creado", "Perfecto!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            if (dr == DialogResult.OK)
                            {
                                resetearCampos();
                            }
                        }
                        else
                        {
                            MessageBox.Show("El horario ingresado esta fuera del rango del turno", "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }

                    }
                }
                else
                {
                    MessageBox.Show("Ya existe un viaje dentro de ese rango horario para ese chofer, turno y/o cliente.", "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
               
            }

        }

        private bool ValidarHorario(Turno unTurno)
        {
            int horarioInicio = Convert.ToInt32(dtpFechaInicio.Value.ToString("HH"));
            int horarioFinal = Convert.ToInt32(dtpFechaFin.Value.ToString("HH"));
            int diaInicial = Convert.ToInt32(dtpFechaInicio.Value.ToString("dd"));
            int diaFin = Convert.ToInt32(dtpFechaFin.Value.ToString("dd"));

            if (diaFin != diaInicial) { 
                //si entra aca significa que el turno paso de un dia al otro, entonces le sumo las horas del otro
                horarioFinal = 24 + Convert.ToInt32(dtpFechaFin.Value.ToString("HH"));
            }

            //primero valido el inicio
            if(horarioInicio < unTurno.HoraInicio){
                return false;
            }

            //despues valido el de fin

            if (horarioFinal > unTurno.HoraFin) {
                return false;
            }

            return true;

        }

        private void resetearCampos()
        {
            txtAutomovil.Text = "";
            txtKilometros.Text = "";
            txtAutomovil.Enabled = false;
            
            if (usuario.Rol.Id_Rol == 2)
            {
                CargarChofer();
                cmbChofer.Enabled = false;
            }
            else
            {
                CargarChoferes();
            }

            if (usuario.Rol.Id_Rol == 3)
            {
                CargarClienter();
                cmbCliente.Enabled = false;
            }
            else
            {
                CargarClientes();
            }

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
            strErrores += Validator.FechaMenorOIgualAFechaActual(dtpFechaInicio.Value, "Fecha Inicio");
            strErrores += Validator.FechaMenorOIgualAFechaActual(dtpFechaFin.Value, "Fecha Fin");
            strErrores += Validator.SoloNumerosODecimales(txtKilometros.Text, "Kilometros");
            strErrores += Validator.MayorACero(txtKilometros.Text, "Kilometros");
            strErrores += Validator.ValidarNulo(cmbChofer.Text, "Chofer");
            strErrores += Validator.ValidarNulo(cmbCliente.Text, "Cliente");
            strErrores += Validator.ValidarNulo(cmbTurno.Text, "Turno");

            //valido que no sea el mismo usario cliente y chofer

            if (Usuario.UsuarioChoferDistintoDeUsuarioCliente(Convert.ToInt32(cmbChofer.SelectedValue), Convert.ToInt32(cmbCliente.SelectedValue)))
            {
                strErrores += "El cliente y el chofer deben ser distintos usuarios";
            }
            
            if (strErrores.Length > 0)
            {
                MessageBox.Show(strErrores, "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            return true;
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Hide();
        }
    }
}
