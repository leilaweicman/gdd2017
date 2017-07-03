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
using Classes;

namespace UberFrba.Registro_usuario
{
    public partial class RegistroUsuario : Form
    {
        Usuario user;
        bool editing= false;
        int tipoUsuario=0;
        bool ejecutaAdmin;
        bool altaConRol = false;
        int rolAlta;

        public RegistroUsuario()
        {
            InitializeComponent();
        }

        public RegistroUsuario(Usuario usuario, bool ejecutaAdmin)
        {
            user = usuario;
            editing = true;
            tipoUsuario = usuario.Rol.Id_Rol;
            this.ejecutaAdmin = ejecutaAdmin;
            InitializeComponent();
        }

        public RegistroUsuario(int rol)
        {
            altaConRol = true;
            rolAlta = rol;
            InitializeComponent();
        }
    
        private void RegistroUsuario_Load(object sender, EventArgs e)
        {
            if (ejecutaAdmin)
            {
                txtConfContrasenia.Enabled = false;
                txtContrasenia.Enabled = false;
            }
            if (altaConRol)
            {
                if (rolAlta == 2)
                {
                    chkChofer.Checked = true;
                }
                else if (rolAlta == 3)
                {
                    chkCliente.Checked = true;
                }
                gpbTipoUsuario.Enabled = false;
            }


            if (editing)
            {
                chkHabilitado.Visible = true;
                gpbTipoUsuario.Enabled = false;
                if (tipoUsuario == 3)//es cliente
                {
                    chkCliente.Checked=true;
                    chkChofer.Checked = false;
                }
                else if (tipoUsuario == 2)//es chofer. no deberia haber mas tipos pero porlas de que se agreguen mas
                {
                    chkChofer.Checked = true;
                    chkCliente.Checked = false;
                }              
                gpbDatosPersonales.Enabled = true;
                txtNombre.Text = user.Nombre;
                txtApellido.Text = user.Apellido;
                txtDni.Text = user.Dni.ToString();
                txtUsername.Text = user.Username;
                dtpFechaNac.Text = user.FechaNac.ToString();
                dtpFechaNac.Text = user.FechaNac.ToString();
                txtCalle.Text = user.Direccion;
                txtDepto.Text = user.Depto;
                if (user.Habilitado == true)
                {
                    chkHabilitado.Checked = true;
                } 
                if (user.Piso == -1)
                {
                    txtPiso.Text = "";
                }
                else
                {
                    txtPiso.Text = user.Piso.ToString();
                }
                if (user.CodPost == -1)
                {
                    txtCP.Text = "";
                }
                else
                {
                    txtCP.Text = user.CodPost.ToString();
                }
                txtLocalidad.Text = user.Localidad;
                txtMail.Text = user.Mail;
                txtTel.Text = user.Tel.ToString();
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            if (editing)
            {
                if (ejecutaAdmin)
                {
                    if (tipoUsuario == 3)
                    {
                        UberFrba.Abm_Cliente.AbmCliente abmCliente = new Abm_Cliente.AbmCliente();
                        this.Hide();
                        abmCliente.Show();
                    }
                    else
                    {
                        UberFrba.Abm_Chofer.AbmChofer abmChofer = new Abm_Chofer.AbmChofer();
                        this.Hide();
                        abmChofer.Show();
                    }
                }
                else
                {
                    this.Hide();                    
                }
            }
            else
            {
                if (altaConRol)
                {
                    if (tipoUsuario == 3)
                    {
                        UberFrba.Abm_Cliente.AbmCliente abmCliente = new Abm_Cliente.AbmCliente();
                        this.Hide();
                        abmCliente.Show();
                    }
                    else
                    {
                        UberFrba.Abm_Chofer.AbmChofer abmChofer = new Abm_Chofer.AbmChofer();
                        this.Hide();
                        abmChofer.Show();
                    }
                }
                else
                {
                    Inicial formInicial = new Inicial();
                    this.Hide();
                    formInicial.Show();
                }
            }
        }

        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            string nombre;
            string apellido;
            Decimal dni;
            string contraEncriptada;
            Decimal tel;
            string mail;
            string calle;
            string depto;
            Decimal piso;
            string localidad;
            int esChofer = 0;
            int esCliente = 0;
            DateTime fechaNac;
            int codPost;
            string username;
            bool habilitado;

            bool huboErrorDato = false;
            bool errorYaExiste = false;
            DateTime fechaMinSql = new DateTime(1753, 01, 01);
            DateTime fechaMaxSql = new DateTime(9999, 12, 12);

            List<string> lstErroresCampos = new List<string>();
            List<string> lstErroresExistencia = new List<string>();

            #region validacionCampos

            if (txtNombre.Text=="" || txtApellido.Text =="" || txtDni.Text=="" || ((txtContrasenia.Text=="" || 
                txtConfContrasenia.Text =="") && !editing)|| txtUsername.Text =="" || txtTel.Text=="" || txtMail.Text=="" || 
                txtCalle.Text=="" || txtLocalidad.Text == ""|| (txtCP.Enabled && txtCP.Text==""))
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
                    lstErroresCampos.Add("Las constraseñas no coinciden.\n");
                    huboErrorDato = true;
                }
                if (!Validator.EsNumero(txtDni.Text))
                {
                    lstErroresCampos.Add("El dni debe contener solo números.\n");
                    huboErrorDato = true;
                }
                else if (int.Parse(txtDni.Text) <= 0)
                {
                    lstErroresCampos.Add("El dni debe ser mayor a cero.\n");
                    huboErrorDato = true;
                }
                
                if (!Validator.EsNumero(txtTel.Text))
                {
                    lstErroresCampos.Add("El teléfono debe contener solo números.\n");
                    huboErrorDato = true;
                }
                else if (int.Parse(txtTel.Text) <= 0)
                {
                    lstErroresCampos.Add("El telefono debe ser mayor a cero.\n");
                    huboErrorDato = true;
                }
                
                if (txtPiso.Text != "" && !Validator.EsNumero(txtPiso.Text))
                {
                    lstErroresCampos.Add("El piso debe contener solo números.\n");
                    huboErrorDato = true;
                }
                else if (Validator.EsNumero(txtPiso.Text) && int.Parse(txtPiso.Text) < 0)
                {
                    lstErroresCampos.Add("El piso debe ser mayor o igual a cero.\n");
                    huboErrorDato = true;
                }
                fechaNac = Convert.ToDateTime(dtpFechaNac.Text);
                if (fechaNac.CompareTo(fechaMinSql) < 0 || fechaNac.CompareTo(fechaMaxSql) > 0)
                {
                    lstErroresCampos.Add("La fecha de nacimiento debe estar entre 1/1/1753 y 12/12/9999.\n");
                    huboErrorDato = true;
                }
                if (fechaNac >= DateTime.Now.Date)
                {
                    lstErroresCampos.Add("La fecha de nacimiento debe anterior a la del dia de hoy.\n");
                    huboErrorDato = true;
                }

                if(txtCP.Enabled && !Validator.EsNumero(txtCP.Text))
                {
                    lstErroresCampos.Add("El código postal debe ser numérico");
                    huboErrorDato = true;
                }
                else if(txtCP.Enabled && Validator.EsNumero(txtCP.Text) && int.Parse(txtCP.Text) <= 0)
                {
                    lstErroresCampos.Add("El código postal debe ser mayor a cero.\n");
                    huboErrorDato = true;
                }
            }

            #endregion

            if (huboErrorDato)
            {
                Validator.mostrarErrores(lstErroresCampos, "");
            }
            else 
            { 
                nombre = txtNombre.Text;
                apellido = txtApellido.Text;
                dni = Decimal.Parse(txtDni.Text);
                if (txtContrasenia.Text == "" && editing)
                {
                    contraEncriptada = user.ContraseniaEncriptada;
                }
                else
                {
                    contraEncriptada = Encryptor.GetSHA256(txtContrasenia.Text);
                }
                fechaNac = Convert.ToDateTime(dtpFechaNac.Text);
                tel = Decimal.Parse(txtTel.Text);
                mail = txtMail.Text;
                calle = txtCalle.Text;
                depto = txtDepto.Text;
                if (txtPiso.Text == "")
                {
                    piso = -1;
                }
                else
                {
                    piso = Decimal.Parse(txtPiso.Text);
                }
                localidad = txtLocalidad.Text;
                username = txtUsername.Text;
                
                if (chkChofer.Checked)
                {
                    esChofer = 1;
                }
                if (chkCliente.Checked)
                {
                    esCliente = 1;
                }

                if (txtCP.Enabled)
                {
                    codPost = int.Parse(txtCP.Text);
                }
                else
                {
                    codPost = -1;
                }


                List<SqlParameter> parameterList = new List<SqlParameter>();
                if (editing)
                {
                    parameterList.Add(new SqlParameter("@idUsuario", user.Id_Usuario));
                }
                else
                {
                    parameterList.Add(new SqlParameter("@idUsuario", 0));
                }
                
                SqlParameter param = new SqlParameter("@username", username);
                parameterList.Add(param);
                if (SQLHelper.ExecuteDataSet("PR_verifExisteUsuario", CommandType.StoredProcedure, parameterList).Tables[0].Rows.Count>0)
                {
                    errorYaExiste = true;
                    lstErroresExistencia.Add("El usuario ya existe\n");
                }

                parameterList.Remove(param);
                param = new SqlParameter("@dni", dni);
                parameterList.Add(param);
                if (SQLHelper.ExecuteDataSet("PR_verifExisteDni", CommandType.StoredProcedure, parameterList).Tables[0].Rows.Count > 0)
                {
                    errorYaExiste = true;
                    lstErroresExistencia.Add("El dni ya existe\n");
                }

                parameterList.Remove(param);
                param = new SqlParameter("@telefono", tel);
                parameterList.Add(param);
                if (SQLHelper.ExecuteDataSet("PR_verifExisteTelefono", CommandType.StoredProcedure, parameterList).Tables[0].Rows.Count > 0)
                {
                    errorYaExiste = true;
                    lstErroresExistencia.Add("El telefono ya existe\n");
                }
                parameterList.Clear();
                if (errorYaExiste)
                {
                    Validator.mostrarErrores(lstErroresExistencia, "");
                }
                else
                {

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
                    parameterList.Add(new SqlParameter("@username", username));

                    try
                    {
                        if (editing)
                        {
                            if(chkHabilitado.Checked){
                                parameterList.Add(new SqlParameter("@habilitado", 1));
                            } else {
                                parameterList.Add(new SqlParameter("@habilitado", 0));
                            }
                            parameterList.Add(new SqlParameter("@idUsuario", user.Id_Usuario));
                            if (tipoUsuario == 3)
                            {
                                parameterList.Add(new SqlParameter("@codPost", codPost));
                                SQLHelper.ExecuteNonQuery("PR_editarCliente", CommandType.StoredProcedure, parameterList);
                            }
                            else if (tipoUsuario == 2)
                            {
                                SQLHelper.ExecuteNonQuery("PR_editarChofer", CommandType.StoredProcedure, parameterList);
                            }
                            MessageBox.Show("El usuario se ha modificado");

                            if (ejecutaAdmin)
                            {
                                if (tipoUsuario == 3)
                                {
                                    UberFrba.Abm_Cliente.AbmCliente abmCliente = new Abm_Cliente.AbmCliente();
                                    this.Hide();
                                    abmCliente.Show();
                                }
                                else if(tipoUsuario ==2)
                                {
                                    UberFrba.Abm_Chofer.AbmChofer abmChofer = new Abm_Chofer.AbmChofer();
                                    this.Hide();
                                    abmChofer.Show();
                                }
                            }
                            else
                            {
                                this.Hide();
                            }
                        }
                        else
                        {
                            parameterList.Add(new SqlParameter("@esChofer", esChofer));
                            parameterList.Add(new SqlParameter("@esCliente", esCliente));
                            parameterList.Add(new SqlParameter("@codPost", codPost));

                            SQLHelper.ExecuteNonQuery("PR_altaUsuario", CommandType.StoredProcedure, parameterList);
                            MessageBox.Show("El usuario se ha registrado correctamente");

                            if (altaConRol)
                            {
                                if (rolAlta == 3)
                                {
                                    UberFrba.Abm_Cliente.AbmCliente abmCliente = new Abm_Cliente.AbmCliente();
                                    this.Hide();
                                    abmCliente.Show();
                                }
                                else if(rolAlta ==2)
                                {
                                    UberFrba.Abm_Chofer.AbmChofer abmChofer = new Abm_Chofer.AbmChofer();
                                    this.Hide();
                                    abmChofer.Show();
                                }
                            }
                            else
                            {
                                Inicial inicialForm = new Inicial();
                                this.Hide();
                                inicialForm.Show();
                            }
                        }



                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.ToString());
                        //MessageBox.Show("Hubo un error registrando el usuario. Revise los datos ingresados e intente de nuevo");
                    }
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
