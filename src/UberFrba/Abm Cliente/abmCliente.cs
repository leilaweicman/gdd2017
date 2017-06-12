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
        
        Dictionary<Decimal, Usuario> clientes = new Dictionary<decimal, Usuario>();

        public AbmCliente()
        {
            InitializeComponent();
        }

        private void AbmCliente_Load(object sender, EventArgs e)
        {
            cargarClientes();            
        }

        private void btnInicio_Click(object sender, EventArgs e)
        {
            UberFrba.Inicial inicio = new Inicial();
            this.Hide();
            inicio.Show();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (dgvClientes.SelectedRows.Count != 0)
            {
                DataGridViewRow row = this.dgvClientes.SelectedRows[0];
                Decimal dni = Decimal.Parse(row.Cells["Dni"].Value.ToString());

                Usuario userSeleccionado = clientes[dni];

                //UberFrba.Abm_Cliente.Editar editarClienteForm = new Abm_Cliente.Editar(userSeleccionado);
                UberFrba.Registro_usuario.RegistroUsuario registrarForm = new Registro_usuario.RegistroUsuario(userSeleccionado, 1);

                this.Hide();
                //editarClienteForm.Show();

                registrarForm.Show();
            }
            else
            {
                MessageBox.Show("Seleccione un usuario para editarlo");
            }           
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            dgvClientes.Rows.Clear();
            
            cargarClientes();
            
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {

            if (dgvClientes.SelectedRows.Count == 0)
            {
                MessageBox.Show("Seleccione un usuario para editarlo");
            }
            else
            {
                DataGridViewRow row = this.dgvClientes.SelectedRows[0];
                Decimal dni = Decimal.Parse(row.Cells["Dni"].Value.ToString());

                Usuario userSeleccionado = clientes[dni];

                List<SqlParameter> parameterList = new List<SqlParameter>();
                parameterList.Add(new SqlParameter("@idUsuario", userSeleccionado.Id_Usuario));

                try
                {
                    SQLHelper.ExecuteNonQuery("PR_inhabilitarCliente", CommandType.StoredProcedure, parameterList);
                    dgvClientes.Rows.Clear();
                    cargarClientes();                    
                } 
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void cargarClientes()
        {
            clientes.Clear();

            List<SqlParameter> parameterList = new List<SqlParameter>();
            if (txtFiltDni.Text == "")
            {
                Decimal dni = 0;
                parameterList.Add(new SqlParameter("@dni", dni));
            }
            else
            {
                parameterList.Add(new SqlParameter("@dni", int.Parse(txtFiltDni.Text)));
            }
            parameterList.Add(new SqlParameter("@nombre", txtFiltNombre.Text));
            parameterList.Add(new SqlParameter("@apellido", txtFiltApellido.Text));

            DataSet ds = SQLHelper.ExecuteDataSet("PR_traerClientes", CommandType.StoredProcedure, parameterList);

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Usuario user = new Usuario();
                user.DataRowToObject(row);
                clientes.Add(user.Dni, user);

                dgvClientes.Rows.Add(user.Dni, user.Nombre, user.Apellido, user.Tel, user.Username, user.Habilitado, user.FechaNac, user.Mail,
                    user.Direccion, user.Piso, user.Depto, user.CodPost, user.Localidad);
            
            }
        }

        private void btnLimpiarFiltro_Click(object sender, EventArgs e)
        {
            txtFiltDni.Text = "";
            txtFiltNombre.Text = "";
            txtFiltApellido.Text = "";
            dgvClientes.Rows.Clear();
            cargarClientes();
        }
    }
}
