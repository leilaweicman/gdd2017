using Classes;
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

namespace UberFrba.Rendicion_Viajes
{
    public partial class Detalle : Form
    {
        private RendicionDetalle rdForm;
        public Detalle(RendicionDetalle rd)
        {
            rdForm = rd;
            InitializeComponent();
            CargarListado();
            lblTotal.Text=ObtenerTotal();
        }
         private string ObtenerTotal()
        {
            try
            {
                SQLHelper.Inicializar();
             string query = "exec girlpower.PR_TotalRendicion '" + rdForm.Fecha + "'," + rdForm.Porcentaje+","+rdForm.idchofer+","+rdForm.IDTurno;
              var aux = SQLHelper.ExecuteQuery(query);
              SQLHelper.Cerrar();
           string total ="";
            while (aux.Read())
            { if (!object.Equals(aux["total"], DBNull.Value))
                     total = aux["total"].ToString();
            }
                return total;
            }
            catch (ErrorConsultaException ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
             return "";
        }
         private void CargarListado()
        {
            try
            {
                //obtengo en un dataset todos los roles de la bd
                DataSet ds = RendicionDetalle.obtenerTodos(rdForm);
                configurarGrilla(ds);
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

        private void configurarGrilla(DataSet ds)
        {
            dgvRendicionesDetalle.Rows.Clear();
            List<RendicionDetalle> rendiciones = new List<RendicionDetalle>();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                RendicionDetalle rend = new RendicionDetalle();
                rend.DataRowToObject(row);
                rendiciones.Add(rend);

                dgvRendicionesDetalle.Rows.Add(rend.Cliente, rend.fechaFin, rend.PrecioViaje, rend.PrecioChofer);

            }
        }

        private void btnConfirmarRendicion_Click(object sender, EventArgs e)
        {
            rdForm.ConfirmarRendicion(rdForm);
            MessageBox.Show("Se ha creado la rendicion correctamente!");
             Rendicion_Viajes.Listado reind = new Rendicion_Viajes.Listado();
            this.Hide();
            reind.Show();
        }
    
      
    }
}
