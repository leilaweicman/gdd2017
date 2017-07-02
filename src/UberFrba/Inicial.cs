using Connection;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace UberFrba
{
    public partial class Inicial : Form
    {
        public Inicial()
        {
            InitializeComponent();
        }

        private void lblIniciarSesion_Click(object sender, EventArgs e)
        {
            LogIn.LogIn loginForm = new LogIn.LogIn();
            this.Hide();
            loginForm.Show();
        }

        private void Inicial_Load(object sender, EventArgs e)
        {
            try
            {
                SQLHelper.Inicializar();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void lblRegistrarUsuario_Click(object sender, EventArgs e)
        {
            Registro_usuario.RegistroUsuario registroUsuarioForm = new Registro_usuario.RegistroUsuario();
            this.Hide();
            registroUsuarioForm.Show();
        }

        private void lblRegistrarAutomovil_Click(object sender, EventArgs e)
        {
            UberFrba.Abm_Automovil.RegistroAutomovil registroAutomovilForm = new Abm_Automovil.RegistroAutomovil(3);
            this.Hide();
            registroAutomovilForm.Show();
        }
    

        //abm cliente
        private void label1_Click(object sender, EventArgs e) 
        {
            UberFrba.Abm_Cliente.AbmCliente abmCliente = new Abm_Cliente.AbmCliente();
            this.Hide();
            abmCliente.Show();
        }

        private void lblListadoAutomoviles_Click(object sender, EventArgs e)
        {
            UberFrba.Abm_Automovil.Form1 listado = new Abm_Automovil.Form1();
            this.Hide();
            listado.Show();
        }

        private void lblAbmChofer_Click(object sender, EventArgs e)
        {
            UberFrba.Abm_Chofer.AbmChofer abmChofer = new Abm_Chofer.AbmChofer();
            this.Hide();
            abmChofer.Show();
        }

        private void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            LogIn.LogIn loginForm = new LogIn.LogIn();
            this.Hide();
            loginForm.Show();
        }

        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            Registro_usuario.RegistroUsuario registroUsuarioForm = new Registro_usuario.RegistroUsuario();
            this.Hide();
            registroUsuarioForm.Show();
        }
    }
}
