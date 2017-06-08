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
using Utilities;

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

            string nombre;
            string apellido;
            int dni;
            string contra;
            string confContra;
            int diaNac;
            int mesNac;
            int anioNac;
            int tel;
            string mail;
            string calle;
            string depto;
            int piso;
            string localidad;
            int esChofer = 0;
            int esCliente = 0;
            DateTime fechaNac;

            if(txtNombre.Text=="" || txtApellido.Text =="" || txtDni.Text=="" || txtContrasenia.Text=="" || 
                txtConfContrasenia.Text =="" || txtDiaNac.Text=="" || txtMesNac.Text=="" || txtAnioNac.Text=="" || 
                txtTel.Text=="" || txtMail.Text=="" || txtCalle.Text=="" || txtDepto.Text=="" || txtPiso.Text=="")
            {
                MessageBox.Show("Complete todos los campos por favor");
            }
            else if (!chkCliente.Checked && !chkChofer.Checked)
            {
                MessageBox.Show("Indique el tipo de usuario");
            }
            else if(txtContrasenia.Text != txtContrasenia.Text)
            {
                MessageBox.Show("Las constrasenias no coinciden");
            }//podria validar qeu los int sean numericos posta
            else 
            {
                nombre = txtNombre.Text;
                apellido = txtApellido.Text;
                dni = int.Parse(txtDni.Text);
                contra = txtContrasenia.Text;
                confContra = txtConfContrasenia.Text;
                diaNac = int.Parse(txtDiaNac.Text);
                mesNac = int.Parse(txtMesNac.Text);
                anioNac = int.Parse(txtAnioNac.Text);
                fechaNac = new DateTime(anioNac, mesNac, diaNac);
                tel = int.Parse(txtTel.Text);
                mail = txtMail.Text;
                calle = txtCalle.Text;
                depto = txtDepto.Text;
                piso = int.Parse(txtPiso.Text);
                localidad = txtLocalidad.Text;
                
                if (chkChofer.Checked) {
                    esChofer = 1;
                }
                if (chkCliente.Checked)
                {
                    esCliente = 1;
                }

               //falta encriptar la contrasenia


                List<SqlParameter> parameterList = new List<SqlParameter>();
                parameterList.Add(new SqlParameter("@nombre", nombre));
                parameterList.Add(new SqlParameter("@apellido", apellido));
                parameterList.Add(new SqlParameter("@direccion", calle));
                parameterList.Add(new SqlParameter("@telefono", tel));
                parameterList.Add(new SqlParameter("@dni", dni));
                parameterList.Add(new SqlParameter("@fechaNac", fechaNac));
                parameterList.Add(new SqlParameter("@contrasenia", contra)); 
                parameterList.Add(new SqlParameter("@mail", mail));
                parameterList.Add(new SqlParameter("@piso", piso));
                parameterList.Add(new SqlParameter("@depto", depto));
                parameterList.Add(new SqlParameter("@localidad", localidad));
                parameterList.Add(new SqlParameter("@esChofer", esChofer));
                parameterList.Add(new SqlParameter("@esCliente", esCliente));


//    public static int ExecuteNonQuery(string nombreProcedure, CommandType Tipo, List<SqlParameter> ParameterList)
                
                string nomProcedure ="PR_altaUsuario";
                int result = SQLHelper.ExecuteNonQuery(nomProcedure, CommandType.StoredProcedure, parameterList);

                MessageBox.Show("cant filas afectadas" + result);

            }

        }
    }
}
