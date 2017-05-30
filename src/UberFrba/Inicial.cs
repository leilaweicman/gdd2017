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



    }
}
