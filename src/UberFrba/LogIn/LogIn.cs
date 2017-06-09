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
                    //Si alcanzo la cantidad maxima de fallidos, deshabilito el usuario y le aviso de esto
                    user.Deshabilitar();
                    intentosFallidos = 0;
                    MessageBox.Show("El usuario ha quedado deshabilitado por los reiterados fallos en el inicio de sesion", "Deshabilitacion", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (NoEntidadException ex)
                {
                    //Significa que el username que esta ingresando no existe, no que se equivoca con la password. 
                    //No lo deshabilito
                    intentosFallidos = 0;
                }
            }
        }

        private void RealizarAccionesLogInExitoso()
        {
            //limpio los intentos y voy a la seleccion de rol del usuario
            intentosFallidos = 0;
            //SeleccionDeRol();
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


    }
}
