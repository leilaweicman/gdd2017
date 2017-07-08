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
using Utilities;

namespace UberFrba.Abm_Cliente
{
    public partial class AbmCliente : Form
    {
        
        Dictionary<int, Usuario> clientes = new Dictionary<int, Usuario>();

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
            this.Hide();            
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (dgvClientes.SelectedRows.Count != 0)
            {
                DataGridViewRow row = this.dgvClientes.SelectedRows[0];
                int idCliente = int.Parse(row.Cells["IDCliente"].Value.ToString());

                Usuario userSeleccionado = clientes[idCliente];

                UberFrba.Registro_usuario.RegistroUsuario registrarForm = new Registro_usuario.RegistroUsuario(userSeleccionado, true);//3 es cliente

                this.Hide();
                
                registrarForm.Show();
            }
            else
            {
                MessageBox.Show("Seleccione un usuario para editarlo");
            }           
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            List<String> lstErrores = new List<string>();
            bool huboErrorDato = false;
            String error = "";

            if (txtFiltDni.Text != "")
            {

                error = Validator.MayorACero(txtFiltDni.Text, "Dni");
                if (error != "")
                {
                    lstErrores.Add(error);
                    huboErrorDato = true;
                    error = "";
                }
            }
            else if (txtFiltDni.Text != "")
            {
                if (!Validator.EsNumero(txtFiltDni.Text))
                {
                    lstErrores.Add("El dni debe ser numérico");
                    huboErrorDato = true;
                }
                else if (int.Parse(txtFiltDni.Text) <= 0)
                {
                    lstErrores.Add("El dni debe ser mayor a cero");
                    huboErrorDato = true;
                }
            }
            
            if (huboErrorDato)
            {
                Validator.mostrarErrores(lstErrores, "");
            }
            else
            {
                cargarClientes();
            }                        
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {

            if (dgvClientes.SelectedRows.Count == 0)
            {
                MessageBox.Show("Seleccione un usuario para borrarlo");
            }
            else
            {
                DataGridViewRow row = this.dgvClientes.SelectedRows[0];
                int idCliente = int.Parse(row.Cells["IDCliente"].Value.ToString());

                List<SqlParameter> parameterList = new List<SqlParameter>();
                parameterList.Add(new SqlParameter("@idUsuario", idCliente));

                try
                {
                    SQLHelper.ExecuteNonQuery("PR_inhabilitarCliente", CommandType.StoredProcedure, parameterList);
                    MessageBox.Show("El cliente se ha inhabilitado");
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
            dgvClientes.Rows.Clear();
                    
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
                user.Rol = new Rol();
                user.Rol.Id_Rol = 3;
                clientes.Add(user.Id_Usuario, user);

                dgvClientes.Rows.Add(user.Id_Usuario, user.Dni, user.Nombre, user.Apellido, user.Tel, user.Username, user.Habilitado, user.FechaNac, user.Mail,
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

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            Registro_usuario.RegistroUsuario registroUsuarioForm = new Registro_usuario.RegistroUsuario(3);//porque el id de rol cliente es 3
            this.Hide();
            registroUsuarioForm.Show();
        }
    }
}
