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
using Exceptions;

namespace UberFrba.Registro_usuario
{
    public partial class RegistroUsuario : Form
    {
        Usuario userAEditar = new Usuario();
        bool editing = false;
        int tipoUsuario = 0;
        bool ejecutaAdmin= false;
        bool altaConRol = false;
        int rolAlta;
        Principal frmPrincipal;

        public RegistroUsuario()
        {
            InitializeComponent();
        }

        public RegistroUsuario(Usuario usuario, Principal frmPrincipal)
        {
            List<SqlParameter> parameterList = new List<SqlParameter>();
            parameterList.Add(new SqlParameter("@idUsuario", usuario.Id_Usuario));

            DataSet ds = new DataSet();

            userAEditar.Rol = new Rol();

            if (usuario.Rol.Id_Rol == 2)
            {
                ds = SQLHelper.ExecuteDataSet("PR_traerChoferes", CommandType.StoredProcedure, parameterList);
                userAEditar.Rol.Id_Rol = 2;
            }
            else if (usuario.Rol.Id_Rol == 3)
            {
                ds = SQLHelper.ExecuteDataSet("PR_traerClientes", CommandType.StoredProcedure, parameterList);
                userAEditar.Rol.Id_Rol = 3;
            }

            if (ds.Tables[0].Rows.Count == 1)
            {
                DataRow row = ds.Tables[0].Rows[0];
                userAEditar.DataRowToObject(row);
            }
            else
            {
                MessageBox.Show("Ocurrio un error cargando los datos del usuario");
            }

            editing = true;
            tipoUsuario = usuario.Rol.Id_Rol;

            this.frmPrincipal = frmPrincipal;

            InitializeComponent();
        }

        public RegistroUsuario(Usuario usuario)
        {
            userAEditar = usuario;            
            editing = true;
            tipoUsuario = usuario.Rol.Id_Rol;
            ejecutaAdmin = true;
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
                    chkCliente.Checked = true;
                    chkChofer.Checked = false;
                }
                else if (tipoUsuario == 2)//es chofer. no deberia haber mas tipos pero porlas de que se agreguen mas
                {
                    chkChofer.Checked = true;
                    chkCliente.Checked = false;
                }
                gpbDatosPersonales.Enabled = true;
                txtNombre.Text = userAEditar.Nombre;
                txtApellido.Text = userAEditar.Apellido;
                txtDni.Text = userAEditar.Dni.ToString();
                txtUsername.Text = userAEditar.Username;
                dtpFechaNac.Text = userAEditar.FechaNac.ToString();
                dtpFechaNac.Text = userAEditar.FechaNac.ToString();
                txtCalle.Text = userAEditar.Direccion;
                txtDepto.Text = userAEditar.Depto;
                if (userAEditar.Habilitado == true)
                {
                    chkHabilitado.Checked = true;
                }
                else
                {
                    chkHabilitado.Checked = false;
                }
                if (userAEditar.Piso == -1)
                {
                    txtPiso.Text = "";
                }
                else
                {
                    txtPiso.Text = userAEditar.Piso.ToString();
                }
                if (userAEditar.CodPost == -1)
                {
                    txtCP.Text = "";
                }
                else
                {
                    txtCP.Text = userAEditar.CodPost.ToString();
                }
                txtLocalidad.Text = userAEditar.Localidad;
                txtMail.Text = userAEditar.Mail;
                txtTel.Text = userAEditar.Tel.ToString();
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
            int esChofer = 0;
            int esCliente = 0;

            bool huboErrorDato = false;
            bool errorYaExiste = false;

            List<string> lstErroresCampos = new List<string>();
            List<string> lstErroresExistencia = new List<string>();

            huboErrorDato = validarCampos(ref lstErroresCampos);

            if (huboErrorDato)
            {
                Validator.mostrarErrores(lstErroresCampos, "");
            }
            else
            {

                Usuario usuarioNuevo = crearNuevoUsuario(ref esChofer, ref esCliente);

                errorYaExiste = verificarExistencia(ref lstErroresExistencia, usuarioNuevo);
                
                if (errorYaExiste)
                {
                    Validator.mostrarErrores(lstErroresExistencia, "");
                }
                else
                {
                    List<SqlParameter> parameterList = cargarParametrosComunesQuery(usuarioNuevo);

                    try
                    {                       
                        if (editing)
                        {
                            #region if editing

                            bool continuar = true;
                            
                            if (!chkHabilitado.Checked && !ejecutaAdmin)
                            {
                                DialogResult dr = MessageBox.Show("Si se inhabilita saldrá automáticamente del sistema y tendrá que contactar al administrador para volver a ingresar. ¿Desea continuar?",
                                    "Confirmación", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                                if(dr == DialogResult.No){
                                    continuar = false;
                                    chkHabilitado.Checked = true;
                                }
                            }

                            if (continuar)
                            {
                                if (chkHabilitado.Checked)
                                {
                                    parameterList.Add(new SqlParameter("@habilitado", 1));
                                }
                                else
                                {
                                    parameterList.Add(new SqlParameter("@habilitado", 0));
                                }

                                parameterList.Add(new SqlParameter("@idUsuario", userAEditar.Id_Usuario));
                                if (tipoUsuario == 3)
                                {
                                    parameterList.Add(new SqlParameter("@codPost", usuarioNuevo.CodPost));
                                    SQLHelper.ExecuteNonQuery("PR_editarCliente", CommandType.StoredProcedure, parameterList);
                                }
                                else if (tipoUsuario == 2)
                                {
                                    SQLHelper.ExecuteNonQuery("PR_editarChofer", CommandType.StoredProcedure, parameterList);
                                }

                                MessageBox.Show("El usuario se ha modificado");

                                userAEditar = usuarioNuevo;

                                if (ejecutaAdmin)
                                {
                                    if (tipoUsuario == 3)
                                    {
                                        UberFrba.Abm_Cliente.AbmCliente abmCliente = new Abm_Cliente.AbmCliente();
                                        this.Hide();
                                        abmCliente.Show();
                                    }
                                    else if (tipoUsuario == 2)
                                    {
                                        UberFrba.Abm_Chofer.AbmChofer abmChofer = new Abm_Chofer.AbmChofer();
                                        this.Hide();
                                        abmChofer.Show();
                                    }
                                }
                                else
                                {
                                    if (usuarioNuevo.Habilitado)
                                    {
                                        this.Hide();
                                    }
                                    else
                                    {
                                        Inicial frmInicial = new Inicial();
                                        frmPrincipal.Close();
                                        frmInicial.Show();
                                        this.Close();
                                    }
                                }
                            }
                            #endregion
                        }
                        else
                        {
                            parameterList.Add(new SqlParameter("@esChofer", esChofer));
                            parameterList.Add(new SqlParameter("@esCliente", esCliente));
                            parameterList.Add(new SqlParameter("@codPost", usuarioNuevo.CodPost));

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
                                else if (rolAlta == 2)
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
            else if (!chkCliente.Checked)
            {
                gpbDatosPersonales.Enabled = false;
                txtCP.Enabled = false;
            }
        } 

        private bool verificarExistencia(ref List<String> lstErroresExistencia, Usuario usuario)
        {
            bool errorYaExiste = false; 

            List<SqlParameter> parameterList = new List<SqlParameter>();
            if (editing)
            {
                parameterList.Add(new SqlParameter("@idUsuario", userAEditar.Id_Usuario)); //es el user que estoy editando
            }
            else
            {
                parameterList.Add(new SqlParameter("@idUsuario", 0));
            }

            SqlParameter param = new SqlParameter("@username", usuario.Username);
            parameterList.Add(param);
            if (SQLHelper.ExecuteDataSet("PR_verifExisteUsuario", CommandType.StoredProcedure, parameterList).Tables[0].Rows.Count > 0)
            {
                errorYaExiste = true;
                lstErroresExistencia.Add("El usuario ya existe\n");
            }

            parameterList.Remove(param);
            param = new SqlParameter("@dni", usuario.Dni);
            parameterList.Add(param);
            if (SQLHelper.ExecuteDataSet("PR_verifExisteDni", CommandType.StoredProcedure, parameterList).Tables[0].Rows.Count > 0)
            {
                errorYaExiste = true;
                lstErroresExistencia.Add("El dni ya existe\n");
            }

            parameterList.Remove(param);
            param = new SqlParameter("@telefono", usuario.Tel);
            parameterList.Add(param);
            if (SQLHelper.ExecuteDataSet("PR_verifExisteTelefono", CommandType.StoredProcedure, parameterList).Tables[0].Rows.Count > 0)
            {
                errorYaExiste = true;
                lstErroresExistencia.Add("El telefono ya existe\n");
            }
            parameterList.Clear();
            return errorYaExiste;
        }

        private Usuario crearNuevoUsuario(ref int esChofer, ref int esCliente)
        {
            Usuario nuevoUsuario = new Usuario();
            nuevoUsuario.Nombre = txtNombre.Text;
            nuevoUsuario.Apellido = txtApellido.Text;
            nuevoUsuario.Dni = Decimal.Parse(txtDni.Text);
            if (txtContrasenia.Text == "" && editing)
            {
                nuevoUsuario.ContraseniaEncriptada = userAEditar.ContraseniaEncriptada;
            }
            else
            {
                nuevoUsuario.ContraseniaEncriptada = Encryptor.GetSHA256(txtContrasenia.Text);
            }
            nuevoUsuario.FechaNac = Convert.ToDateTime(dtpFechaNac.Text);
            nuevoUsuario.Tel = Decimal.Parse(txtTel.Text);
            nuevoUsuario.Mail = txtMail.Text;
            nuevoUsuario.Direccion = txtCalle.Text;
            nuevoUsuario.Depto = txtDepto.Text;
            if (txtPiso.Text == "")
            {
                nuevoUsuario.Piso = -1;
            }
            else
            {
                nuevoUsuario.Piso = Decimal.Parse(txtPiso.Text);
            }
            nuevoUsuario.Localidad = txtLocalidad.Text;
            nuevoUsuario.Username = txtUsername.Text;

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
                nuevoUsuario.CodPost = int.Parse(txtCP.Text);
            }
            else
            {
                nuevoUsuario.CodPost = -1;
            }
            if (chkHabilitado.Enabled)
            {
                if (chkHabilitado.Checked == true)
                {
                    nuevoUsuario.Habilitado = true;
                }
                else
                {
                    nuevoUsuario.Habilitado = false;
                }
            }
                    
            return nuevoUsuario;
        }

        private List<SqlParameter> cargarParametrosComunesQuery (Usuario usuario)
        {
            List<SqlParameter> parameterList = new List<SqlParameter>();
            parameterList.Add(new SqlParameter("@nombre", usuario.Nombre));
            parameterList.Add(new SqlParameter("@apellido", usuario.Apellido));
            parameterList.Add(new SqlParameter("@direccion", usuario.Direccion));
            parameterList.Add(new SqlParameter("@telefono", usuario.Tel));
            parameterList.Add(new SqlParameter("@dni", usuario.Dni));
            parameterList.Add(new SqlParameter("@fechaNac", usuario.FechaNac));
            parameterList.Add(new SqlParameter("@contrasenia", usuario.ContraseniaEncriptada));
            parameterList.Add(new SqlParameter("@mail", usuario.Mail));
            parameterList.Add(new SqlParameter("@piso", usuario.Piso));
            parameterList.Add(new SqlParameter("@depto", usuario.Depto));
            parameterList.Add(new SqlParameter("@localidad", usuario.Localidad));
            parameterList.Add(new SqlParameter("@username", usuario.Username));

            return parameterList;
        }

        public bool validarCampos(ref List<string> lstErroresCampos)
        {
            bool huboErrorDato = false;

            DateTime fechaMinSql = new DateTime(1753, 01, 01);
            DateTime fechaMaxSql = new DateTime(9999, 12, 12);
            DateTime fechaNac;

            String error="";

            if (txtNombre.Text == "" || txtApellido.Text == "" || txtDni.Text == "" || ((txtContrasenia.Text == "" ||
                txtConfContrasenia.Text == "") && !editing) || txtUsername.Text == "" || txtTel.Text == "" || txtMail.Text == "" ||
                txtCalle.Text == "" || txtLocalidad.Text == "" || (txtCP.Enabled && txtCP.Text == ""))
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
                    lstErroresCampos.Add("Las contraseñas no coinciden.\n");
                    huboErrorDato = true;
                }

                error = Validator.MayorACero(txtDni.Text, "Dni");
                if(error!="")
                {
                    lstErroresCampos.Add(error);
                    huboErrorDato = true;
                    error = "";
                }
                else if (!Validator.EsNumero(txtDni.Text))
                {
                    lstErroresCampos.Add("El dni debe contener solo números.\n");
                    huboErrorDato = true;
                }

                error = Validator.MayorACero(txtTel.Text, "Telefono");
                if (error != "")
                {
                    lstErroresCampos.Add(error);
                    huboErrorDato = true;
                    error = "";
                }
                else if (!Validator.EsNumero(txtTel.Text))
                {
                    lstErroresCampos.Add("El teléfono debe contener solo números.\n");
                    huboErrorDato = true;
                }

                error = Validator.MayorACero(txtPiso.Text, "Piso");
                if (txtPiso.Text != "" && error != "")
                {
                    lstErroresCampos.Add(error);
                    huboErrorDato = true;
                    error = "";
                }
                else if (txtPiso.Text != "" && !Validator.EsNumero(txtPiso.Text))
                {
                    lstErroresCampos.Add("El piso debe contener solo números.\n");
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
                    lstErroresCampos.Add("La fecha de nacimiento debe ser anterior a la del dia de hoy.\n");
                    huboErrorDato = true;
                }

                error = Validator.MayorACero(txtCP.Text, "C. P.");
                if (txtCP.Enabled && error != "")
                {
                    lstErroresCampos.Add(error);
                    huboErrorDato = true;
                    error = "";
                }
                else if (txtCP.Enabled && !Validator.EsNumero(txtCP.Text))
                {
                    lstErroresCampos.Add("El código postal debe ser numérico");
                    huboErrorDato = true;
                }

            }

            return huboErrorDato;
        }

       
    }
}
