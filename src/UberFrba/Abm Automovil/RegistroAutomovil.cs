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
        public RegistroAutomovil()
        {
            InitializeComponent();
            CargarCombos();
           
        }
        private void CargarCombos()
        {

            //Con esto cargo los combos por bd falta hacerlo

            SQLHelper.Inicializar();
            string query = "select IDMarca,Nombre from [GIRLPOWER].Marca";
            var result = SQLHelper.ExecuteQuery(query);
            SQLHelper.Cerrar();
            List<ComboPrueba>list=new List<ComboPrueba>();
            while (result.Read())
            {
                //ComboPrueba aux = Activator.CreateInstance<ComboPrueba>();
                //foreach (PropertyInfo prop in result.GetType().GetProperties())
                //{
                    if (!object.Equals(result["IDMarca"], DBNull.Value))
                    {
                        var a = result["IDMarca"].ToString();
                        if (!object.Equals(result["Nombre"], DBNull.Value))
                        {
                            var g = result["Nombre"].ToString();

                        }
                //    }
                }
            }
//list.Add(aux);
    

            //CAMBIAR PARA QUE SALGA DE LA BD
            //choferes
            IList<ComboPrueba> choferes = new List<ComboPrueba>();
            choferes.Add(new ComboPrueba("chofer 1", 1));
            choferes.Add(new ComboPrueba("chofer 2", 2));

            cmbChofer.DataSource = choferes;
            cmbChofer.DisplayMember = "Name";
            cmbChofer.ValueMember = "Value";
        
        


            //cargo combo de marcas
            IList<ComboPrueba> marcas = new List<ComboPrueba>();
            marcas.Add(new ComboPrueba("marca 1", 1));
            marcas.Add(new ComboPrueba("marca 2", 2));

            cmbMarca.DataSource = marcas;
            cmbMarca.DisplayMember = "Name";
            cmbMarca.ValueMember = "Value";
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Inicial formInicial = new Inicial();
            this.Hide();
            formInicial.Show();
        
        }

        private void cmbMarca_SelectedIndexChanged(object sender, EventArgs e)
        {
            //CAMBIAR PARA QUE SALGA DE LA BD SEGUN MARCA
            //cargo modelos segun valor
            //cargo combo de marcas
            IList<ComboPrueba> modelos = new List<ComboPrueba>();
            modelos.Add(new ComboPrueba("modelo 1", 29));
            modelos.Add(new ComboPrueba("modelo 2", 30));

            cmbModelo.DataSource = modelos;
            cmbModelo.DisplayMember = "Name";
            cmbModelo.ValueMember = "Value";
    
        }
        private bool patenteYaRegistrada(string patente)
        {
            
            return false;
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
            else if (patenteYaRegistrada(txtPatente.ToString()))
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
                string nomProcedure ="PR_altaAutomovil";
                int result =SQLHelper.ExecuteNonQuery(nomProcedure, CommandType.StoredProcedure, parameterList);
                SQLHelper.Cerrar();
                MessageBox.Show("cant filas afectadas" + result);

                //deberia ir al listado de automoviles

            }

        }
    }
}
