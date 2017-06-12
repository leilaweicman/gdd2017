using Classes;
using Connection;
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

namespace UberFrba.Abm_Chofer
{
    public partial class AbmChofer : Form
    {
        Dictionary<Decimal, Usuario> choferes = new Dictionary<decimal, Usuario>();

        public AbmChofer()
        {
            InitializeComponent();
        }
        private void cargarChoferes()
        {
            choferes.Clear();

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

            DataSet ds = SQLHelper.ExecuteDataSet("PR_traerChoferes", CommandType.StoredProcedure, parameterList);

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Usuario user = new Usuario();
                user.DataRowToObject(row);
                choferes.Add(user.Dni, user);

                dgvChoferes.Rows.Add(user.Dni, user.Nombre, user.Apellido, user.Tel, user.Username, user.Habilitado, user.FechaNac, user.Mail,
                    user.Direccion, user.Piso, user.Depto, user.Localidad);

            }
        }
        
        private void AbmChofer_Load(object sender, EventArgs e)
        {
            cargarChoferes();
        }

        private void btnLimpiarFiltro_Click(object sender, EventArgs e)
        {
            txtFiltDni.Text = "";
            txtFiltNombre.Text = "";
            txtFiltApellido.Text = "";
            dgvChoferes.Rows.Clear();
            cargarChoferes();
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            dgvChoferes.Rows.Clear();

            cargarChoferes();           
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (dgvChoferes.SelectedRows.Count != 0)
            {
                DataGridViewRow row = this.dgvChoferes.SelectedRows[0];
                Decimal dni = Decimal.Parse(row.Cells["Dni"].Value.ToString());

                Usuario userSeleccionado = choferes[dni];

                UberFrba.Registro_usuario.RegistroUsuario registrarForm = new Registro_usuario.RegistroUsuario(userSeleccionado, 2);// 2 es chofer

                this.Hide();
                

                registrarForm.Show();
            }
            else
            {
                MessageBox.Show("Seleccione un usuario para editarlo");
            }
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {

            if (dgvChoferes.SelectedRows.Count == 0)
            {
                MessageBox.Show("Seleccione un usuario para editarlo");
            }
            else
            {
                DataGridViewRow row = this.dgvChoferes.SelectedRows[0];
                Decimal dni = Decimal.Parse(row.Cells["Dni"].Value.ToString());

                Usuario userSeleccionado = choferes[dni];

                List<SqlParameter> parameterList = new List<SqlParameter>();
                parameterList.Add(new SqlParameter("@idUsuario", userSeleccionado.Id_Usuario));

                try
                {
                    SQLHelper.ExecuteNonQuery("PR_inhabilitarChofer", CommandType.StoredProcedure, parameterList);
                    dgvChoferes.Rows.Clear();
                    cargarChoferes();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void btnInicio_Click(object sender, EventArgs e)
        {
            UberFrba.Inicial inicio = new Inicial();
            this.Hide();
            inicio.Show();
        }


    }
}
