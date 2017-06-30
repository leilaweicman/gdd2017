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
            CargarCombos();
            CargarAuomoviles();
        }
        private void CargarCombos()
        {
            SQLHelper.Inicializar();
            string query = "select IDMarca,Nombre from [GIRLPOWER].Marca";
            var resultMarcas = SQLHelper.ExecuteQuery(query);

            string query2 = "select c.IDChofer, u.Nombre from [GIRLPOWER].Chofer c inner join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario";
            var resultChoferes = SQLHelper.ExecuteQuery(query2);
            string query3 = "select IDModelo,Nombre from [GIRLPOWER].Modelo";
            var resultModelos = SQLHelper.ExecuteQuery(query3);
            SQLHelper.Cerrar();
            List<ComboPrueba> marcas = new List<ComboPrueba>();
            ComboPrueba todas = new ComboPrueba("TODAS", 0);
            marcas.Add(todas);
            while (resultMarcas.Read())
            {
                ComboPrueba aux;
                int idMarca = 0;
                string Nombre = "";
                if (!object.Equals(resultMarcas["IDMarca"], DBNull.Value))
                    idMarca = int.Parse(resultMarcas["IDMarca"].ToString());

                if (!object.Equals(resultMarcas["Nombre"], DBNull.Value))
                    Nombre = resultMarcas["Nombre"].ToString();
                aux = new ComboPrueba(Nombre, idMarca);
                marcas.Add(aux);
            }

            cmbMarca.DataSource = marcas;
            cmbMarca.DisplayMember = "Name";
            cmbMarca.ValueMember = "Value";
            cmbMarca.SelectedIndex = 0;
            List<ComboPrueba> choferes = new List<ComboPrueba>();
            ComboPrueba todos = new ComboPrueba("TODOS", 0);
            choferes.Add(todos);
            while (resultChoferes.Read())
            {
                ComboPrueba aux;
                int idchofer = 0;
                string Nombre = "";
                if (!object.Equals(resultChoferes["IDChofer"], DBNull.Value))
                    idchofer = int.Parse(resultChoferes["IDChofer"].ToString());

                if (!object.Equals(resultChoferes["Nombre"], DBNull.Value))
                    Nombre = resultChoferes["Nombre"].ToString();
                aux = new ComboPrueba(Nombre, idchofer);
                choferes.Add(aux);
            }


            cmbChofer.DataSource = choferes;
            cmbChofer.DisplayMember = "Name";
            cmbChofer.ValueMember = "Value";
            cmbChofer.SelectedIndex = 0;




            List<ComboPrueba> Modelos = new List<ComboPrueba>();
            ComboPrueba todosm = new ComboPrueba("TODOS", 0);
            Modelos.Add(todosm);
            while (resultModelos.Read())
            {
                ComboPrueba aux;
                int idmodelo = 0;
                string Nombre = "";
                if (!object.Equals(resultModelos["IDModelo"], DBNull.Value))
                    idmodelo = int.Parse(resultModelos["IDModelo"].ToString());

                if (!object.Equals(resultModelos["Nombre"], DBNull.Value))
                    Nombre = resultModelos["Nombre"].ToString();
                aux = new ComboPrueba(Nombre, idmodelo);
                Modelos.Add(aux);
            }


            cmbModelo.DataSource = Modelos;
            cmbModelo.DisplayMember = "Name";
            cmbModelo.ValueMember = "Value";
            cmbModelo.SelectedIndex = 0;
        }
          private void CargarAuomoviles(){
              dgvAutomoviles.Rows.Clear();
              List<Automovil> clientes = new List<Automovil>();
               List<SqlParameter> parameterList = new List<SqlParameter>();
               parameterList.Add(new SqlParameter("@idChofer", int.Parse(cmbChofer.SelectedValue.ToString())));
               parameterList.Add(new SqlParameter("@idMarca",int.Parse(cmbMarca.SelectedValue.ToString())));
               parameterList.Add(new SqlParameter("@patente", txtPatente.Text));
               parameterList.Add(new SqlParameter("@idModelo", int.Parse(cmbModelo.SelectedValue.ToString())));

              DataSet ds = SQLHelper.ExecuteDataSet("PR_TraerAutomoviles",CommandType.StoredProcedure,parameterList);

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

        private void btnFiltrarTristes_Click(object sender, EventArgs e)
        {
            cmbChofer.SelectedValue = 0;
            cmbModelo.SelectedValue = 0;
            cmbMarca.SelectedValue = 0;
            txtPatente.Text = "";
            CargarAuomoviles();
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            CargarAuomoviles();

        }

        private void btnVolver_Click(object sender, EventArgs e)
        {
            Home formHome = new Home();
            this.Hide();
            formHome.Show();
        }

        private void dgvAutomoviles_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
