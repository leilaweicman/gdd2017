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
            string contraEncriptada;
            //string confContra;
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
            bool fechaOk = true;
            DateTime fechaMinSql = new DateTime(1753, 01, 01);
            DateTime fechaMaxSql = new DateTime(9999, 12, 12);

            List<string> lstErroresCampos = new List<string>();
            #region validacionCampos

            if (txtNombre.Text=="" || txtApellido.Text =="" || txtDni.Text=="" || txtContrasenia.Text=="" || 
                txtConfContrasenia.Text =="" || /*txtDiaNac.Text=="" || txtMesNac.Text=="" || txtAnioNac.Text=="" || */
                maskedTxtFechaNac.Text == "  /  /    " ||
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
               
                if (!Validator.EsNumero(txtPiso.Text))
                {
                    lstErroresCampos.Add("El piso debe contener solo números.\n");
                    huboErrorDato = true;
                }
                if (!DateTime.TryParse(maskedTxtFechaNac.Text, out fechaNac))
                {

                    lstErroresCampos.Add("La fecha ingresada es incorrecta. El formato debe ser mm/dd/aaaa.\n");
                    huboErrorDato = true;
                }
                else
                {
                    
                    fechaNac = Convert.ToDateTime(maskedTxtFechaNac.Text);
                    if (fechaNac.CompareTo(fechaMinSql) < 0 || fechaNac.CompareTo(fechaMaxSql) > 0)//(fechaNac.Year < 1753 || fechaNac.Year > 9999){//fechaNac.CompareTo(fechaMinSql) < 0 && fechaNac.CompareTo(fechaMaxSql) > 0)
                    {
                        lstErroresCampos.Add("La fecha debe estar entre 1/1/1753 y 12/12/9999.\n");
                        huboErrorDato = true;
                    }
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
                contraEncriptada = Encryptor.GetSHA256(txtContrasenia.Text);
                fechaNac = Convert.ToDateTime(maskedTxtFechaNac.Text);
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
                
                List<SqlParameter> parameterList = new List<SqlParameter>();
                parameterList.Add(new SqlParameter("@nombre", nombre));
                parameterList.Add(new SqlParameter("@apellido", apellido));
                parameterList.Add(new SqlParameter("@direccion", calle));
                parameterList.Add(new SqlParameter("@telefono", tel));
                parameterList.Add(new SqlParameter("@dni", dni));
                parameterList.Add(new SqlParameter("@fechaNac", fechaNac));
                parameterList.Add(new SqlParameter("@contrasenia", contraEncriptada)); 
                parameterList.Add(new SqlParameter("@mail", mail));
                parameterList.Add(new SqlParameter("@piso", piso));
                parameterList.Add(new SqlParameter("@depto", depto));
                parameterList.Add(new SqlParameter("@localidad", localidad));
                parameterList.Add(new SqlParameter("@esChofer", esChofer));
                parameterList.Add(new SqlParameter("@esCliente", esCliente));

                try
                {
                    int result = SQLHelper.ExecuteNonQuery("PR_altaUsuario", CommandType.StoredProcedure, parameterList);

                    if (result > 1)
                    {
                        MessageBox.Show("cant filas afectadas" + result);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                    MessageBox.Show("Hubo un error registrando el usuario. Revise los datos ingresados e intente de nuevo");
                }              

            }

        }

        private void chkCliente_CheckedChanged(object sender, EventArgs e)
        {
            if (chkCliente.Checked)
            {
                txtCP.Enabled = true;
                if (!gpbDatosPersonales.Enabled)
                {
                    gpbDatosPersonales.Enabled = true;
                }
            }
            else 
            {
                txtCP.Enabled = false;
                if (!chkChofer.Checked)
                {
                    gpbDatosPersonales.Enabled = false;
                }
            }

        }

        private void chkChofer_CheckedChanged(object sender, EventArgs e)
        {
            if (chkChofer.Checked)
            {
                if (!chkCliente.Checked && txtCP.Enabled)
                {
                    txtCP.Enabled = false;
                }
                if (!gpbDatosPersonales.Enabled)
                {
                    gpbDatosPersonales.Enabled = true;
                    
                }
            } 
            else if(!chkCliente.Checked)
            {
                gpbDatosPersonales.Enabled = false;
                txtCP.Enabled = false;
            }
        }
    }
}
