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

namespace UberFrba.Abm_Cliente
{
    public partial class Editar : Form
    {
        Usuario user; 

        public Editar(Usuario usuario)
        {
            user = usuario;
            InitializeComponent();
        }

        private void Editar_Load(object sender, EventArgs e)
        {
            txtNombre.Text = user.Nombre;
            txtApellido.Text = user.Apellido;
            txtDni.Text = user.Dni.ToString();
            txtUsername.Text = user.Username;
            maskedTxtFechaNac.Text = user.FechaNac.ToString();
            txtCalle.Text = user.Direccion;
            txtDepto.Text = user.Depto;
            txtPiso.Text = user.Piso.ToString();
            txtCP.Text = user.CodPost.ToString();
            txtLocalidad.Text = user.Localidad;
            txtMail.Text = user.Mail;
            txtTel.Text = user.Tel.ToString();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            UberFrba.Abm_Cliente.AbmCliente abmCliente = new AbmCliente();
            this.Hide();
            abmCliente.Show();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {


            //PR_editarCliente
        }
    }
}
