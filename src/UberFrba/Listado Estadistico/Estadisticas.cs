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

namespace UberFrba.Listado_Estadistico
{
    public partial class Estadisticas : Form
    {
        Usuario unUsuario = new Usuario();
        //variables donde se van a guardar todos los datos que van a ser enviados a los store procedures
        private DateTime Fecha_Hasta;
        private DateTime Fecha_Desde;
        private string Año;

        public Estadisticas()
        {
            InitializeComponent();
        }

        private void btnVer_Click(object sender, EventArgs e)
        {
            if (ValidarCampos())
            {
                Año = txtAño.Text;
                //segun el trimestre elegido se guardan en las variables las fechas de comienzo y fin del trimestre
                if (cmbTrimestre.SelectedIndex == 0) cargarParametrosPrimerTrimestre();
                if (cmbTrimestre.SelectedIndex == 1) cargarParametrosSegundoTrimestre();
                if (cmbTrimestre.SelectedIndex == 2) cargarParametrosTercerTrimestre();
                if (cmbTrimestre.SelectedIndex == 3) cargarParametrosCuartoTrimestre();

                //segun la operación elegida, se carga el listado de esa operación 
                //y luego se configura la grilla con las columnas correspondientes
                if (cmbTipo.SelectedIndex == 0)
                {
                    cargarListadoChoferesConMayorRecaudacion();
                }
                if (cmbTipo.SelectedIndex == 1)
                {
                    cargarListadoChoferesConViajeMasLargo();
                }
                if (cmbTipo.SelectedIndex == 2)
                {
                    cargarListadoClientesConMayorConsumo();
                }
                if (cmbTipo.SelectedIndex == 3)
                {
                    cargarListadoClienteQueUtilizoMasVecesElMismoAutomovil();
                }

                dgvListado.Visible = true;
            }
        }

        private bool ValidarCampos()
        {
            //se valida que el año ingresado esté entre 1900 y 2017, que sea un número y que no sea nulo
            string strErrores = "";
            strErrores += Validator.ValidarNulo(txtAño.Text, "Año");
            if (strErrores.Length > 0)
            {
                MessageBox.Show(strErrores, "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            strErrores += Validator.SoloNumeros(txtAño.Text, "Año");

            if (strErrores.Length > 0)
            {
                MessageBox.Show(strErrores, "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            strErrores += Validator.EsAño(txtAño.Text, "Año");           

            //se valida que los combobox no esten vacíos
            strErrores += Validator.ValidarNulo(cmbTrimestre.Text, "Trimestre");
            strErrores += Validator.ValidarNulo(cmbTipo.Text, "Tipo");
            if (strErrores.Length > 0)
            {
                MessageBox.Show(strErrores, "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;        
            }

            return true;
        }

        private void cargarListadoClienteQueUtilizoMasVecesElMismoAutomovil()
        {
            try
            {
                DataSet ds = unUsuario.obtenerClienteQueUtilizoMasVecesElMismoAutomovil(Fecha_Hasta, Fecha_Desde);
                if (ds.Tables[0].Rows.Count <= 0)
                {
                    MessageBox.Show("No hay resultados para el listado solicitado en el trimestre del año ingresado");
                }
                else
                {
                    configurarGrillaClienteQueUtilizoMasVecesElMismoAutomovil(ds);
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

        private void configurarGrillaClienteQueUtilizoMasVecesElMismoAutomovil(DataSet ds)
        {
            dgvListado.Columns.Clear();
            dgvListado.AutoGenerateColumns = false;

            DataGridViewTextBoxColumn clmChofer = new DataGridViewTextBoxColumn();
            clmChofer.Width = 150;
            clmChofer.ReadOnly = true;
            clmChofer.DataPropertyName = "Nombre";
            clmChofer.HeaderText = "Cliente";
            dgvListado.Columns.Add(clmChofer);

            DataGridViewTextBoxColumn clmPatente = new DataGridViewTextBoxColumn();
            clmPatente.Width = 200;
            clmPatente.ReadOnly = true;
            clmPatente.DataPropertyName = "Patente";
            clmPatente.HeaderText = "Automovil";
            dgvListado.Columns.Add(clmPatente);

            DataGridViewTextBoxColumn clmCantidad = new DataGridViewTextBoxColumn();
            clmCantidad.Width = 200;
            clmCantidad.ReadOnly = true;
            clmCantidad.DataPropertyName = "Cantidad";
            clmCantidad.HeaderText = "Cantidad";
            dgvListado.Columns.Add(clmCantidad);

            dgvListado.DataSource = ds.Tables[0];

            dgvListado.Sort(clmCantidad, ListSortDirection.Descending);
        }

        private void cargarListadoClientesConMayorConsumo()
        {
            try
            {
                DataSet ds = unUsuario.obtenerClientesConMayorConsumo(Fecha_Hasta, Fecha_Desde);
                if (ds.Tables[0].Rows.Count <= 0)
                {
                    MessageBox.Show("No hay resultados para el listado solicitado en el trimestre del año ingresado");
                }
                else
                {
                    configurarGrillaClientesConMayorConsumo(ds);
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

        private void configurarGrillaClientesConMayorConsumo(DataSet ds)
        {
            dgvListado.Columns.Clear();
            dgvListado.AutoGenerateColumns = false;

            DataGridViewTextBoxColumn clmChofer = new DataGridViewTextBoxColumn();
            clmChofer.Width = 150;
            clmChofer.ReadOnly = true;
            clmChofer.DataPropertyName = "Nombre";
            clmChofer.HeaderText = "Cliente";
            dgvListado.Columns.Add(clmChofer);

            DataGridViewTextBoxColumn clmTotal = new DataGridViewTextBoxColumn();
            clmTotal.Width = 200;
            clmTotal.ReadOnly = true;
            clmTotal.DataPropertyName = "Total";
            clmTotal.HeaderText = "ConsumoTotal";
            dgvListado.Columns.Add(clmTotal);

            dgvListado.DataSource = ds.Tables[0];
        }

        private void cargarListadoChoferesConViajeMasLargo()
        {
            try
            {
                DataSet ds = unUsuario.obtenerChoferesConViajeMasLargo(Fecha_Hasta, Fecha_Desde);
                if (ds.Tables[0].Rows.Count <= 0)
                {
                    MessageBox.Show("No hay resultados para el listado solicitado en el trimestre del año ingresado");
                }
                else
                {
                    configurarGrillaChoferesConViajeMasLargo(ds);
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

        private void configurarGrillaChoferesConViajeMasLargo(DataSet ds)
        {
            dgvListado.Columns.Clear();
            dgvListado.AutoGenerateColumns = false;

            DataGridViewTextBoxColumn clmChofer = new DataGridViewTextBoxColumn();
            clmChofer.Width = 150;
            clmChofer.ReadOnly = true;
            clmChofer.DataPropertyName = "Nombre";
            clmChofer.HeaderText = "Chofer";
            dgvListado.Columns.Add(clmChofer);

            DataGridViewTextBoxColumn clmTotal = new DataGridViewTextBoxColumn();
            clmTotal.Width = 200;
            clmTotal.ReadOnly = true;
            clmTotal.DataPropertyName = "Kilometros";
            clmTotal.HeaderText = "Kilometros";
            dgvListado.Columns.Add(clmTotal);

            dgvListado.DataSource = ds.Tables[0];
        }

        private void cargarListadoChoferesConMayorRecaudacion()
        {
            try
            {
                DataSet ds = unUsuario.obtenerChoferesConMayorRecaudacion(Fecha_Hasta, Fecha_Desde);
                if (ds.Tables[0].Rows.Count <= 0)
                {
                    MessageBox.Show("No hay resultados para el listado solicitado en el trimestre del año ingresado");
                }
                else
                {
                    configurarGrillaChoferesConMayorRecaudacion(ds);
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

        private void configurarGrillaChoferesConMayorRecaudacion(DataSet ds)
        {
            dgvListado.Columns.Clear();
            dgvListado.AutoGenerateColumns = false;

            DataGridViewTextBoxColumn clmChofer = new DataGridViewTextBoxColumn();
            clmChofer.Width = 150;
            clmChofer.ReadOnly = true;
            clmChofer.DataPropertyName = "Nombre";
            clmChofer.HeaderText = "Chofer";
            dgvListado.Columns.Add(clmChofer);

            DataGridViewTextBoxColumn clmTotal = new DataGridViewTextBoxColumn();
            clmTotal.Width = 200;
            clmTotal.ReadOnly = true;
            clmTotal.DataPropertyName = "Total";
            clmTotal.HeaderText = "TotalRecaudado";
            dgvListado.Columns.Add(clmTotal);

            dgvListado.DataSource = ds.Tables[0];
        }

        private void cargarParametrosCuartoTrimestre()
        {
            Fecha_Desde = new DateTime(Convert.ToInt32(Año), 10, 1);
            Fecha_Hasta = new DateTime(Convert.ToInt32(Año), 12, 31);
        }

        private void cargarParametrosSegundoTrimestre()
        {
            Fecha_Desde = new DateTime(Convert.ToInt32(Año), 4, 1);
            Fecha_Hasta = new DateTime(Convert.ToInt32(Año), 6, 30);
        }

        private void cargarParametrosTercerTrimestre()
        {
            Fecha_Desde = new DateTime(Convert.ToInt32(Año), 7, 1);
            Fecha_Hasta = new DateTime(Convert.ToInt32(Año), 9, 30);
        }

        private void cargarParametrosPrimerTrimestre()
        {
            Fecha_Desde = new DateTime(Convert.ToInt32(Año), 1, 1);
            Fecha_Hasta = new DateTime(Convert.ToInt32(Año), 3, 31);
        }

        private void Estadisticas_Load(object sender, EventArgs e)
        {
            dgvListado.Visible = false;
        }

        private void btnVolver_Click(object sender, EventArgs e)
        {
            this.Hide();
        }
    }
}
