using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Classes;
using Connection;
using System.Data.SqlClient;

namespace UberFrba.Facturacion
{
    public partial class FacturaDetalle : Form
    {
        int idCliente;
        string nomCliente;
        DateTime fechaInicio = new DateTime();
        DateTime fechaFin = new DateTime();
        DataSet ds;
        Decimal totalFactura = 0;

        public FacturaDetalle(int idCliente, string nomCliente, DateTime fechaInicio, DateTime fechaFin, DataSet ds)
        {
            InitializeComponent();
            this.idCliente = idCliente;
            this.nomCliente = nomCliente;
            this.fechaInicio = fechaInicio;
            this.fechaFin = fechaFin;
            this.ds = ds;
        }

        private void groupBoxReg_Enter(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void FacturaDetalle_Load(object sender, EventArgs e)
        {
            lblCliente.Text += nomCliente;
            lblFechaInicio.Text += fechaInicio.Date.ToString("d");
            lblFechaFin.Text += fechaFin.Date.ToString("d");
            cargarViajes();
            lblTotalFact.Text += Convert.ToString(totalFactura);
        }

        private void cargarViajes()
        {
            dgvViajes.Rows.Clear();

            List<SqlParameter> parameterList = new List<SqlParameter>();

            parameterList.Add(new SqlParameter("@idCliente", idCliente));
            parameterList.Add(new SqlParameter("@fechaInicio", fechaInicio));
            parameterList.Add(new SqlParameter("@fechaFin", fechaFin));

            //DataSet ds = SQLHelper.ExecuteDataSet("PR_traerViajesFacturaDetalle", CommandType.StoredProcedure, parameterList);
     
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Viaje viaje = new Viaje();
                viaje.DataRowToObject(row);

                dgvViajes.Rows.Add(viaje.Id_Viaje, viaje.Id_Chofer, viaje.Id_Automovil, viaje.Id_Turno, viaje.FechaYHoraInicio,
                    viaje.FechaYHoraFin, viaje.CantKilometros, viaje.Precio);
                dgvViajes.Sort(dgvViajes.Columns[2], ListSortDirection.Ascending);

                totalFactura += viaje.Precio;

            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            RegistroFactura regFacturaForm = new RegistroFactura();
            this.Hide();
            regFacturaForm.Show();
        }

        private void btnConfirmarRendicion_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameterList = new List<SqlParameter>();
            
            parameterList.Add(new SqlParameter("@idCliente", idCliente));
            parameterList.Add(new SqlParameter("@fechaInicio", fechaInicio));
            parameterList.Add(new SqlParameter("@fechaFin", fechaFin));
            parameterList.Add(new SqlParameter("@importeTotal", totalFactura));
            parameterList.Add(new SqlParameter("@fecha", DateTime.Now));

            try
            {
                SQLHelper.ExecuteNonQuery("PR_altaFactura", CommandType.StoredProcedure, parameterList);
                MessageBox.Show("La factura se registró correctamente");

                RegistroFactura regFacturaForm = new RegistroFactura();
                this.Hide();
                regFacturaForm.Show();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());

            }
        }

    }
}
