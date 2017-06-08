using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace UberFrba.Registro_usuario
{
    public partial class RegistroUsuario : Form
    {
        public RegistroUsuario()
        {
            InitializeComponent();
        }

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void label9_Click(object sender, EventArgs e)
        {

        }

        private void RegistroUsuario_Load(object sender, EventArgs e)
        {

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Inicial formInicial = new Inicial();
            this.Hide();
            formInicial.Show();
        }

        private void btnRegistrar_Click(object sender, EventArgs e)
        {


            //tengo que verificar que sean no nulos antes de parsear
            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            int dni = int.Parse(txtDni.Text);
            
            string contra = txtContrasenia.Text;
            string confContra = txtConfContrasenia.Text;
            int diaNac = int.Parse(txtDiaNac.Text);
            int mesNac = int.Parse(txtMesNac.Text);
            int anioNac = int.Parse(txtAnioNac.Text);
            int tel = int.Parse(txtTel.Text);
            string mail = txtMail.Text;
            string calle = txtCalle.Text;
            string depto = txtDepto.Text;
            int piso = int.Parse(txtPiso.Text);


            //if(nombre=="" || apellido =="" || dni==null ||

        }
    }
}
