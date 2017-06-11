using Classes;
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

namespace UberFrba.Abm_Automovil
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

            CargarAuomoviles();
        }
          private void CargarAuomoviles(){
              dgvAutomoviles.Rows.Clear();
              List<Automovil> clientes = new List<Automovil>();
              DataSet ds = SQLHelper.ExecuteDataSet("PR_TraerAutomoviles");

              foreach (DataRow row in ds.Tables[0].Rows)
              {
                  Automovil user = new Automovil();
                  user.DataRowToObject(row);
                  clientes.Add(user);

                  dgvAutomoviles.Rows.Add(user.IDAutomovil, user.Chofer, user.Marca, user.Modelo, user.Patente, user.Licencia, user.Rodado, user.Habilitado);


              }
          }
        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            UberFrba.Abm_Automovil.RegistroAutomovil registroAutomovilForm = new Abm_Automovil.RegistroAutomovil();
            this.Hide();
            registroAutomovilForm.Show();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (dgvAutomoviles.SelectedRows.Count != 0)
            {
                DataGridViewRow row = this.dgvAutomoviles.SelectedRows[0];
                var id=row.Cells["IDAutomovil"].Value.ToString();
                UberFrba.Abm_Automovil.RegistroAutomovil registroAutomovilForm = new Abm_Automovil.RegistroAutomovil(int.Parse(id));
                this.Hide();
                registroAutomovilForm.Show();
            }
           
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {

            if (dgvAutomoviles.SelectedRows.Count != 0)
            {
                DataGridViewRow row = this.dgvAutomoviles.SelectedRows[0];
                var id = row.Cells["IDAutomovil"].Value.ToString();
                Automovil auto = new Automovil();
                auto.Deshabilitar(int.Parse(id));
                CargarAuomoviles();
            }
        }
    }
}
