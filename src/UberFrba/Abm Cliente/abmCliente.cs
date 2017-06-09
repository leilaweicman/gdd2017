using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Connection;
using Classes;

namespace UberFrba.Abm_Cliente
{
    public partial class AbmCliente : Form
    {
        public AbmCliente()
        {
            InitializeComponent();
        }

        private void AbmCliente_Load(object sender, EventArgs e)
        {
            List<Usuario> clientes = new List<Usuario>();
            DataSet ds = SQLHelper.ExecuteDataSet("PR_traerClientes");

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Usuario user = new Usuario();
                user.DataRowToObject(row);
                clientes.Add(user);

                dgvClientes.Rows.Add(user.Dni, user.Nombre, user.Apellido);


            }

            

        }

        private void btnInicio_Click(object sender, EventArgs e)
        {
            UberFrba.Inicial inicio = new Inicial();
            this.Hide();
            inicio.Show();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            //List<Usuario> users =  dgvClientes.SelectedRows;
        }
    }
}
