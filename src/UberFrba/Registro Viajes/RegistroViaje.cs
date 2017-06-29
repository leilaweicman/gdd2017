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

        public RegistroViaje()
        {
            InitializeComponent();
        }

        private void RegistroViaje_Load(object sender, EventArgs e)
        {
            txtAutomovil.Enabled = false;
            CargarChoferes();
            CargarClientes();
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
    }
}