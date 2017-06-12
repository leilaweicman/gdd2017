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
    public partial class Home : Form
    {
        public Home()
        {
            InitializeComponent();
        }
        
        private void lblRegistrarAutomovil_Click(object sender, EventArgs e)
        {
            UberFrba.Abm_Automovil.RegistroAutomovil registroAutomovilForm = new Abm_Automovil.RegistroAutomovil(3);
            this.Hide();
            registroAutomovilForm.Show();
        }

        private void lblAbmCliente_Click(object sender, EventArgs e)
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

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Inicial inicialForm = new Inicial();
            this.Hide();
            inicialForm.Show();
        }
    }
}
