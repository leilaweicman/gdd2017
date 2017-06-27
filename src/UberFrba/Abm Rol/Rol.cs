using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace UberFrba.Abm_Rol
{
    public partial class Rol : Form
    {
        public Rol()
        {
            InitializeComponent();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            UberFrba.Abm_Rol.AbmRol abmRol = new Abm_Rol.AbmRol();
            this.Hide();
            abmRol.Show();
        }
    }
}
