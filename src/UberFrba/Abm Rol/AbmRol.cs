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

namespace UberFrba.Abm_Rol
{
    public partial class AbmRol : Form
    {
        public AbmRol()
        {
            InitializeComponent();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            //agregar un nuevo rol

            UberFrba.Abm_Rol.frmRol rol = new Abm_Rol.frmRol();
            this.Hide();
            rol.Agregar();
           
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            //modificar un rol
            //instancio el rol con los datos de la fila seleccionada y abro el formulario para editarlo
            //configurado con esos datos para editarlos

            if (dgvRoles.SelectedRows.Count != 0)
            {
                DataGridViewRow row = this.dgvRoles.SelectedRows[0];
                var id = Convert.ToInt32(row.Cells["IDRol"].Value);
                var nombre = row.Cells["Nombre"].Value.ToString();
                var habilitado = (bool)row.Cells["Activo"].Value;
                UberFrba.Abm_Rol.frmRol rol = new Abm_Rol.frmRol();
                this.Hide();
                Rol unRol = new Rol(id, nombre, habilitado);
                rol.Editar(unRol);
            } else {
                MessageBox.Show("Por favor, seleccione un Rol a editar.");
            }
           
        }


        private void AbmRol_Load(object sender, EventArgs e)
        {
            CargarListado();
        }

        private void CargarListado()
        {
            try
            {
                //obtengo en un dataset todos los roles de la bd
                DataSet ds = Rol.obtenerTodos();
                configurarGrilla(ds);
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

        private void configurarGrilla(DataSet ds)
        {
            dgvRoles.Rows.Clear();
            List<Rol> roles = new List<Rol>();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Rol rol = new Rol();
                rol.DataRowToObject(row);
                roles.Add(rol);

                dgvRoles.Rows.Add(rol.Id_Rol ,rol.Nombre, rol.Habilitado);

            }
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            //eliminar un rol (baja logica)
            //genero un dialog donde le pregunto si esta seguro de eliminarlo
            //si responde que si, elimino el rol

            if (dgvRoles.SelectedRows.Count != 0)
            {
                DialogResult dr = MessageBox.Show("¿Está seguro que desea eliminar el rol?", "Confirmación", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dr == DialogResult.Yes)
                {
                    try
                    {
                        DataGridViewRow row = this.dgvRoles.SelectedRows[0];
                        var id = Convert.ToInt32(row.Cells["IDRol"].Value);
                        var nombre = row.Cells["Nombre"].Value.ToString();
                        var habilitado = (bool)row.Cells["Activo"].Value;
                        UberFrba.Abm_Rol.frmRol rol = new Abm_Rol.frmRol();
                        Rol unRol = new Rol(id, nombre, habilitado);
                        unRol.Eliminar();
                        MessageBox.Show("El rol ha quedado inhabilitado", "Deshabilitado", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        CargarListado();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }

               
            }
            else
            {
                MessageBox.Show("Por favor, seleccione un Rol a eliminar.");
            }

            
        }

    }
}
