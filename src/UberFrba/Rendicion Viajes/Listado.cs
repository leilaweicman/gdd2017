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

namespace UberFrba.Rendicion_Viajes
{
    public partial class Listado : Form
    {
        public Listado()
        {
            InitializeComponent();
            CargarListado();
        }
        private void CargarListado()
        {
            try
            {
                //obtengo en un dataset todos los roles de la bd
                DataSet ds = Rendicion.obtenerTodos();
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
            dgvRendiciones.Rows.Clear();
            List<Rendicion> rendiciones = new List<Rendicion>();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Rendicion rend = new Rendicion();
                rend.DataRowToObject(row);
                rendiciones.Add(rend);

                dgvRendiciones.Rows.Add(rend.Chofer, rend.nro_Rendicion, rend.Turno,rend.Fecha,rend.Total);

            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Rendicion_Viajes.Registro registro = new Rendicion_Viajes.Registro();
            this.Hide();
            registro.Show();
        }
    }
}
