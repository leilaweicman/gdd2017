using Classes;
using Exceptions;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Utilities;

namespace UberFrba.Abm_Rol
{
    public partial class frmRol : Form
    {
        Rol rolDelForm = new Rol();

        public frmRol()
        {
            InitializeComponent();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Volver();
        }

        public void Agregar()
        {
            //si entra por aca, está agregando un nuevo rol
            //muestro todas las funcionalidades del sistema
            this.Show();
            lstFuncRol.Items.Clear();
            cargarListadoFuncionalidadesDelSistema();
            btnGuardar.Visible = false;
            btnAceptar.Visible = true;
            chkHabilitado.Visible = false;
        }

        public void Editar(Rol unRol)
        {
            //si entra por aca, está editando un rol
            //muestro todas las funcionalidades del sistema y las funcionalidades del rol, el nombre y si está deshabilitado, el campo para habilitarlo
            //en la modificacion de un rol solo se pueden alterar los campos: nombre y funcionalidades
            //y se debe poder habilitar un rol inhabilitado (entonces los habilitados no se podrían editar desde este abm)
            //si habilito el rol, no se recuperan asignaciones pasadas

            this.Show();
            rolDelForm = unRol;

            if (unRol.Habilitado == false)
            {
                chkHabilitado.Visible = true; 
            } else {
                chkHabilitado.Visible = false;
            }
            chkHabilitado.Checked = unRol.Habilitado;
            txtNombre.Text = unRol.Nombre;

            cargarListadoFuncionalidadesDelRol();
            cargarListadoFuncionalidadesDelSistema();
            btnGuardar.Visible = true;
            btnAceptar.Visible = false;

        }

        private void cargarListadoFuncionalidadesDelRol()
        {
            //cargo el listado de funcionalidades pertenecientes al rol 
            //exijo que se muestre solo el nombre de las funcionalidades
            lstFuncRol.Items.Clear();
            foreach (Funcionalidad unaFunc in rolDelForm.Funcionalidades)
            {
                lstFuncRol.Items.Add(unaFunc);
            }
            lstFuncRol.DisplayMember = "Nombre";
        }

        private void cargarListadoFuncionalidadesDelSistema()
        {
            //cargo el listado de funcionalidades no pertenecientes al rol cargadas en el sistema
            //exijo que se muestre solo el nombre de las funcionalidades
            lstFuncTot.Items.Clear();
            DataSet ds = Funcionalidad.obtenerTodas();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                Funcionalidad unaFunc = new Funcionalidad();
                unaFunc.DataRowToObject(dr);
                if (!(contieneLaListaDeFuncionalidadDeRoles(unaFunc)))
                    lstFuncTot.Items.Add(unaFunc);
            }
            lstFuncTot.DisplayMember = "Nombre";
        }

        private bool contieneLaListaDeFuncionalidadDeRoles(Funcionalidad unaFunc)
        {
            //valido si la funcionalidad existe entre las del rol
            foreach (Funcionalidad item in lstFuncRol.Items)
            {
                if (item.Nombre == unaFunc.Nombre)
                {
                    return true;
                }
            }
            return false;
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            //agrego funcionalidades al listado de funcionalidades del rol
            if (lstFuncTot.SelectedItem != null)
            {
                lstFuncRol.Items.Add(lstFuncTot.SelectedItem);
                lstFuncTot.Items.Remove(lstFuncTot.SelectedItem);
                lstFuncRol.DisplayMember = "Nombre";
            }
        }

        private void btnSacar_Click(object sender, EventArgs e)
        {
            //saco funcionalidades del rol
            if (lstFuncRol.SelectedItem != null)
            {
                lstFuncTot.Items.Add(lstFuncRol.SelectedItem);
                lstFuncRol.Items.Remove(lstFuncRol.SelectedItem);
            }
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            //crea un nuevo rol
            //instancio el rol con los datos ingresados por el usuario y lo creo
            try
            {
                ValidarCampos();
                string nombre = txtNombre.Text;

                Rol unRolNuevo = new Rol(nombre, true);

                foreach (Funcionalidad unaFunc in lstFuncRol.Items)
                {
                    unRolNuevo.Funcionalidades.Add(unaFunc);
                }

                unRolNuevo.guardarDatosDeRolNuevo();
                DialogResult dr = MessageBox.Show("El rol ha sido creado", "Perfecto!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                if (dr == DialogResult.OK)
                {
                    Volver();
                }
            }
            catch (EntidadExistenteException ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (ErrorConsultaException ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (BadInsertException ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void Volver()
        {
            UberFrba.Abm_Rol.AbmRol abmRol = new Abm_Rol.AbmRol();
            this.Hide();
            abmRol.Show();
        }

        private void ValidarCampos()
        {
            //valido que los campos a ingresar no sean nulos
            //Si lo son, lanzo excepcion para arriba para que quien llame a esta func controle y devuelva el error obtenido, es decir, que no se ha completado el campo
            string strErrores = "";
            strErrores = Validator.ValidarNulo(txtNombre.Text, "Nombre");
            if (lstFuncRol.Items.Count < 1)
            {
                strErrores = strErrores + "Complete la lista de funcionalidades.";
            }
            if (strErrores.Length > 0)
            {
                throw new Exception(strErrores);
            }
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            //guarda los cambios del rol modificado
            //valido los campos y seteo a los atributos del rol los nuevos campos ingresados por el usuario (hayan o no cambiado)
            //y realizo la modificacion
            try
            {
                ValidarCampos();
                string nombre = txtNombre.Text;
                bool habilitado = chkHabilitado.Checked;

                rolDelForm.Nombre = nombre;
                rolDelForm.Habilitado = habilitado;

                //borro las funcionalidades existentes
                // y cargo todas las funcionalidades del listado de funcionalidades del rol
                rolDelForm.Funcionalidades.Clear();
                foreach (Funcionalidad unaFunc in lstFuncRol.Items)
                {
                    rolDelForm.Funcionalidades.Add(unaFunc);
                }

                rolDelForm.ModificarDatos();
                DialogResult dr = MessageBox.Show("El rol ha sido modificado", "Perfecto!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                if (dr == DialogResult.OK)
                {
                    Volver();
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
    }
}
