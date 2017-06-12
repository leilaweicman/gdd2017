using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Connection;
using System.Data.SqlClient;
using System.Reflection;

namespace UberFrba.Abm_Automovil
{
    public partial class RegistroAutomovil : Form
    {
        int idAutomovil;
        public RegistroAutomovil()
        {
          InitializeComponent();
          CargarCombos();
          CargarModelos();
          this.idAutomovil = 0;
        }
        public RegistroAutomovil(int ID)
        {
            InitializeComponent();
            CargarCombos();
            CargarModelos();
            this.idAutomovil = ID;

            CargarDatos();
       
        }
        private void CargarDatos()
        {
            SQLHelper.Inicializar();

            string query = "select IDChofer,IDMarca,IDModelo,Patente,Licencia,Rodado from [GIRLPOWER].Automovil a inner join [GIRLPOWER].MarcaModelo m on m.IDMarcaModelo=a.IDMarcaModelo where IDAutomovil=" + this.idAutomovil;

            var result = SQLHelper.ExecuteQuery(query);
            SQLHelper.Cerrar();
            while (result.Read())
            {
                
                if (!object.Equals(result["IDChofer"], DBNull.Value))
                    cmbChofer.SelectedValue = int.Parse(result["IDChofer"].ToString());

                if (!object.Equals(result["IDMarca"], DBNull.Value))
                    cmbMarca.SelectedValue =int.Parse(result["IDMarca"].ToString());

                if (!object.Equals(result["IDModelo"], DBNull.Value))
                    cmbModelo.SelectedValue =int.Parse( result["IDModelo"].ToString());
                
                string f;
                if (!object.Equals(result["IDChofer"], DBNull.Value))
                    f = result["IDChofer"].ToString();

                if (!object.Equals(result["Patente"], DBNull.Value))
                    txtPatente.Text = result["Patente"].ToString();

                if (!object.Equals(result["Licencia"], DBNull.Value))
                    txtLicencia.Text = result["Licencia"].ToString();

                if (!object.Equals(result["Rodado"], DBNull.Value))
                    txtRodado.Text = result["Rodado"].ToString();

            }


        }
        private void CargarCombos()
        {
            SQLHelper.Inicializar();
            string query = "select IDMarca,Nombre from [GIRLPOWER].Marca";
            var resultMarcas = SQLHelper.ExecuteQuery(query);

            string query2 = "select c.IDChofer, u.Nombre from [GIRLPOWER].Chofer c inner join [GIRLPOWER].Usuario u on u.IDUsuario=c.IDUsuario";
            var resultChoferes = SQLHelper.ExecuteQuery(query2);
            
            SQLHelper.Cerrar();
            List<ComboPrueba>marcas=new List<ComboPrueba>();
            while (resultMarcas.Read())
            {
                ComboPrueba aux;
                int idMarca=0 ;
                string Nombre="";
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
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            UberFrba.Abm_Automovil.Form1 listado = new Abm_Automovil.Form1();
            this.Hide();
            listado.Show();
        
        }

        private void cmbMarca_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idmarca = 0;
            bool marca = Int32.TryParse(cmbMarca.SelectedValue.ToString(),out idmarca);
            if (marca)
            {
                CargarModelos();
            }
        }
        private bool patenteYaRegistrada(string patente,int id)
        {
            /*
            SQLHelper.Inicializar();
            string nomProcedure = "select  [GIRLPOWER].FUNC_PatenteYaRegistrada ("+id+",'"+patente+"') ";

            var result = SQLHelper.ExecuteQuery(nomProcedure);
            
            SQLHelper.Cerrar();
           if (1==1)
                return true;
             * */
           return false;
        }
        private void CargarModelos()
        {
            SQLHelper.Inicializar();
            string query = "select mo.IDModelo,Nombre from [GIRLPOWER].Modelo mo inner join [GIRLPOWER].MarcaModelo ma on mo.IDModelo=ma.IDModelo where IDMarca=" + int.Parse(cmbMarca.SelectedValue.ToString());
            int i = 0;
            var resultModelos = SQLHelper.ExecuteQuery(query);

            SQLHelper.Cerrar();
            List<ComboPrueba> modelos = new List<ComboPrueba>();
            while (resultModelos.Read())
            {
                ComboPrueba aux;
                int idMarca = 0;
                string Nombre = "";
                if (!object.Equals(resultModelos["IDModelo"], DBNull.Value))
                    idMarca = int.Parse(resultModelos["IDModelo"].ToString());

                if (!object.Equals(resultModelos["Nombre"], DBNull.Value))
                    Nombre = resultModelos["Nombre"].ToString();
                aux = new ComboPrueba(Nombre, idMarca);
                modelos.Add(aux);
            }
            cmbModelo.DataSource = modelos;
            cmbModelo.DisplayMember = "Name";
            cmbModelo.ValueMember = "Value";
        }
        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            int idChofer;
            int idMarca;
            int idModelo;
            string patente;
            string licencia;
            string rodado;
            if (cmbChofer.SelectedValue.ToString() == "0" || cmbMarca.SelectedValue.ToString() == "0" ||
                cmbModelo.SelectedValue.ToString() == "0" || txtPatente.Text == "" || txtLicencia.Text == "" ||
                txtRodado.Text == "")
            {
                MessageBox.Show("Complete todos los campos por favor");
            }
            else if (patenteYaRegistrada(txtPatente.Text,this.idAutomovil))
            {
                MessageBox.Show("La patente ya se encuentra registrada, por favor ingrese una diferente");

            }
            else
            {
                idChofer = int.Parse(cmbChofer.SelectedValue.ToString());
                idMarca = int.Parse(cmbMarca.SelectedValue.ToString());
                idModelo = int.Parse(cmbModelo.SelectedValue.ToString());
                patente = txtPatente.Text;
                licencia = txtLicencia.Text;
                rodado=txtRodado.Text;
                 List<SqlParameter> parameterList = new List<SqlParameter>();
                parameterList.Add(new SqlParameter("@idChofer", idChofer));
                parameterList.Add(new SqlParameter("@idMarca", idMarca));
                parameterList.Add(new SqlParameter("@idModelo", idModelo));
                parameterList.Add(new SqlParameter("@patente", patente));
                parameterList.Add(new SqlParameter("@licencia", licencia));
                parameterList.Add(new SqlParameter("@rodado", rodado));


                SQLHelper.Inicializar();
                string nomProcedure="";
                if(this.idAutomovil==0)
                     nomProcedure ="PR_altaAutomovil";
                else{
                                    parameterList.Add(new SqlParameter("@idAutomovil", this.idAutomovil));
                    nomProcedure="PR_modificarAutomovil";
                }
                try
                {

                    int result = SQLHelper.ExecuteNonQuery(nomProcedure, CommandType.StoredProcedure, parameterList);

                    SQLHelper.Cerrar();

                    UberFrba.Abm_Automovil.Form1 listado = new Abm_Automovil.Form1();
                    this.Hide();
                    listado.Show();
                }
                catch (Exception ex)
                {
                    SQLHelper.Cerrar();
                    MessageBox.Show(ex.ToString());

                }

                //deberia ir al listado de automoviles

            }

        }
    }
}
