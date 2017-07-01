using Classes;
using Exceptions;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Utilities;

namespace UberFrba.LogIn
{
    public partial class LogIn : Form
    {
        int intentosFallidos = 0;
        string ultimoUserIngresado = "";
        int maxIntentosFallidos = Convert.ToInt32(ConfigurationManager.AppSettings["MaxIntentosFallidosLogIn"]);
        Usuario user = new Usuario();

        public LogIn()
        {
            InitializeComponent();
        }

        private void LogIn_Load(object sender, EventArgs e)
        {
            grpRol.Visible = false;
            grpLogIn.Visible = true;
        }

        private void btnLogIn_Click(object sender, EventArgs e)
        {
            string claveIngresada = Encryptor.GetSHA256(txtContrasena.Text);
          
            try
            {
                ValidarCampos();
                user.Username = txtUsuario.Text;

                //voy a la BD a buscar el usuario con los datos ingresados. si lo encuentra, realiza las acciones
                //correspondientes a un logueo exitoso, sino, suma un intento fallido, avisa, y verifica si ya alcanzo
                //la maxima cantidad de intentos fallidos
                
                if (user.obtenerUsuarioPorUsername())
                {
                    //existe usuario
                    //MessageBox.Show(user.ContraseniaEncriptada.Trim() + "\n" + claveIngresada);
                    //textBox1.Text = claveIngresada.Trim();
                    
                    if (user.ContraseniaEncriptada.Trim() == claveIngresada.Trim())
                    {
                        RealizarAccionesLogInExitoso();
                    }
                    else
                    {
                        if (user.Username != ultimoUserIngresado)
                        {
                            intentosFallidos = 0;
                            ultimoUserIngresado = txtUsuario.Text;
                        }
                        intentosFallidos++;
                        MessageBox.Show("El usuario o clave ingresado es incorrecto. Por favor, ingrese los datos correctamente", "Log In fallido", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                        VerificarSiSeAlcanzoLaCantidadMaxima();
                    }

                }
                else
                {
                    //no existe el usario 
                    intentosFallidos = 0;
                    MessageBox.Show("El usuario o clave ingresado es incorrecto. Por favor, ingrese los datos correctamente", "Log In fallido", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (ErrorConsultaException ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void VerificarSiSeAlcanzoLaCantidadMaxima()
        {
            if (intentosFallidos == maxIntentosFallidos)
            {
                try
                {
                    //Si alcanzo la cantidad maxima de fallidos, deshabilito el usuario y le aviso
                    user.Deshabilitar();
                    intentosFallidos = 0;
                    MessageBox.Show("El usuario ha quedado deshabilitado por los reiterados fallos en el inicio de sesion", "Deshabilitacion", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (NoEntidadException ex)
                {
                    //el username ingresado no existe
                    //No lo deshabilito
                    intentosFallidos = 0;
                }
            }
        }

        private void RealizarAccionesLogInExitoso()
        {
            //limpio los intentos y voy a seleccionar el rol del usuario
            intentosFallidos = 0;
            SeleccionarRol();
        }

        public void SeleccionarRol()
        {
            try
            {
                //Obtengo roles del usuario. Si no tiene, muestro mensaje de error. 
                DataSet ds = Rol.ObtenerRolesPorUsuario(user.Id_Usuario);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    MessageBox.Show("El usuario no tiene roles", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    //Verifico la cantidad de roles del usuario. 
                    //Si tiene mas de 1, se lo asigno y lo dejo entrar al sistema

                    if (ds.Tables[0].Rows.Count == 1)
                    {
                        user.AsignarRol(ds);
                        Ingresar();
                    }
                    else
                    {
                        //Si tiene mas de 1 rol, le pido que seleccione con cual ingresar
                        MostrarListadoRoles(ds);                        
                    }
                }

            }
            catch (ErrorConsultaException ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void MostrarListadoRoles(DataSet ds)
        {
            grpLogIn.Visible = false;
            grpRol.Visible = true;
            //Usamos el manager de dropdowns para cargar el comboBox con los roles. y seleccionar uno
            DropDownListManager.CargarCombo(cmbRol, ds.Tables[0], "idRol", "Nombre", false, "");
        }

        private void Ingresar()
        {
            Principal homeForm = new Principal();
            this.Hide();
           // homeForm.Show();
            homeForm.abrirConUsuario(user);
        }

        private void ValidarCampos()
        {
            string strErrores = "";
            strErrores = Validator.ValidarNulo(txtUsuario.Text, "Usuario");
            strErrores += Validator.ValidarNulo(txtContrasena.Text, "Contraseña");
            if (strErrores.Length > 0)
            {
                throw new Exception(strErrores);
            }
        }

        private void btnRol_Click(object sender, EventArgs e)
        {
            Rol rolAAsignar = new Rol();
            rolAAsignar.Id_Rol = Convert.ToInt32(cmbRol.SelectedValue);
            rolAAsignar.Nombre = cmbRol.SelectedText.ToString();
            user.Rol = rolAAsignar;
            Ingresar();
            
        }

        


    }
}
