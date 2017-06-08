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
            Decimal dni;
            string contra;
            string confContra;
            int diaNac;
            int mesNac;
            int anioNac;
            Decimal tel;
            string mail;
            string calle;
            string depto;
            Decimal piso;
            string localidad;
            int esChofer = 0;
            int esCliente = 0;
            DateTime fechaNac;

            bool huboErrorDato = false;
            
            List<string> lstErroresCampos = new List<string>();
            #region validacionCampos

            if (txtNombre.Text=="" || txtApellido.Text =="" || txtDni.Text=="" || txtContrasenia.Text=="" || 
                txtConfContrasenia.Text =="" || txtDiaNac.Text=="" || txtMesNac.Text=="" || txtAnioNac.Text=="" || 
                txtTel.Text=="" || txtMail.Text=="" || txtCalle.Text=="" || txtDepto.Text=="" || txtPiso.Text=="")
            {
                lstErroresCampos.Add("Complete todos los campos por favor.\n");
                huboErrorDato = true;
            }
            else
            {
                if (!chkCliente.Checked && !chkChofer.Checked)
                {
                    lstErroresCampos.Add("Indique el tipo de usuario.\n");
                    huboErrorDato = true;
                }
                if (txtContrasenia.Text != txtConfContrasenia.Text)
                {
                    lstErroresCampos.Add("Las constrasenias no coinciden.\n");
                    huboErrorDato = true;
                }
                if (!Validator.EsNumero(txtDni.Text))
                {
                    lstErroresCampos.Add("El dni debe contener solo números.\n");
                    huboErrorDato = true;
                }
                if (!Validator.EsNumero(txtTel.Text))
                {
                    lstErroresCampos.Add("El telefono debe contener solo números.\n");
                    huboErrorDato = true;
                }
                if (!Validator.EsNumero(txtDiaNac.Text))
                {
                    lstErroresCampos.Add("El dia de nacimiento debe contener solo números.\n");
                    huboErrorDato = true;
                }
                if (!Validator.EsNumero(txtMesNac.Text))
                {
                    lstErroresCampos.Add("El mes de nacimiento debe contener solo números.\n");
                    huboErrorDato = true;
                }
                if (!Validator.EsNumero(txtAnioNac.Text))
                {
                    lstErroresCampos.Add("El anio de nacimiento debe contener solo números.\n");
                    huboErrorDato = true;
                }
                if (!Validator.EsNumero(txtPiso.Text))
                {
                    lstErroresCampos.Add("El piso debe contener solo números.\n");
                    huboErrorDato = true;
                }
            }

           

            #endregion

            if (huboErrorDato)
            {
                string textoError="";
                foreach(string error in lstErroresCampos)
                {
                    textoError = textoError + error;   
                }
                MessageBox.Show(textoError);
            }
            else 
            {
                nombre = txtNombre.Text;
                apellido = txtApellido.Text;
                dni = Decimal.Parse(txtDni.Text);
                contra = txtContrasenia.Text;
                confContra = txtConfContrasenia.Text;
                diaNac = int.Parse(txtDiaNac.Text);
                mesNac = int.Parse(txtMesNac.Text);
                anioNac = int.Parse(txtAnioNac.Text);
                fechaNac = new DateTime(anioNac, mesNac, diaNac);
                tel = Decimal.Parse(txtTel.Text);
                mail = txtMail.Text;
                calle = txtCalle.Text;
                depto = txtDepto.Text;
                piso = Decimal.Parse(txtPiso.Text);
                localidad = txtLocalidad.Text;
                
                if (chkChofer.Checked)
                {
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

                string nomProcedure ="PR_altaUsuario";
                int result = SQLHelper.ExecuteNonQuery(nomProcedure, CommandType.StoredProcedure, parameterList);
                //SQLHelper.Cerrar();
                if (result > 1)
                {
                    MessageBox.Show("cant filas afectadas" + result);
                }               

            }

        }
    }
}
