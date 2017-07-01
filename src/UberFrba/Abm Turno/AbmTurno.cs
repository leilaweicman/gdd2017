using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Classes;
using System.Data.SqlClient;
using Connection;

namespace UberFrba.Abm_Turno
{
    public partial class AbmTurno : Form
    {
        Dictionary<int, Turno> turnos  = new Dictionary<int, Turno>();
        public AbmTurno()
        {
            InitializeComponent();
        }

        private void dgvClientes_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void AbmTurno_Load(object sender, EventArgs e)
        {
            cargarTurnos();
        }      

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            cargarTurnos();
        }
        
        private void btnLimpiarFiltro_Click(object sender, EventArgs e)
        {
            txtFiltroDescrip.Text = "";
            cargarTurnos();
        }

        private void cargarTurnos()
        {
            turnos.Clear();
            dgvTurnos.Rows.Clear();

            List<SqlParameter> parameterList = new List<SqlParameter>();

            parameterList.Add(new SqlParameter("@descripcion", txtFiltroDescrip.Text));

            DataSet ds = SQLHelper.ExecuteDataSet("PR_traerTurnos", CommandType.StoredProcedure, parameterList);
     
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Turno turno = new Turno();
                turno.DataRowToObject(row);
                turnos.Add(turno.Id_Turno, turno);

                dgvTurnos.Rows.Add(turno.Id_Turno, turno.HoraInicio, turno.HoraFin, turno.Descripcion, turno.ValorKilometro, turno.PrecioBase,
                    turno.Habilitado);
                dgvTurnos.Sort(dgvTurnos.Columns[1], ListSortDirection.Ascending);

            }
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (dgvTurnos.SelectedRows.Count == 0)
            {
                MessageBox.Show("Seleccione un turno para borarlo");
            }
            else
            {
                DataGridViewRow row = this.dgvTurnos.SelectedRows[0];
                int idTurno = int.Parse(row.Cells["IDTurno"].Value.ToString());

                Turno turnoSeleccionado = turnos[idTurno];

                List<SqlParameter> parameterList = new List<SqlParameter>();
                parameterList.Add(new SqlParameter("@idTurno", turnoSeleccionado.Id_Turno));

                try
                {
                    SQLHelper.ExecuteNonQuery("PR_inhabilitarTurno", CommandType.StoredProcedure, parameterList);
                    MessageBox.Show("El turno se ha eliminado correctamente");
                    cargarTurnos();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            AgregarTurno agregarTurnoForm = new AgregarTurno();
            this.Hide();
            agregarTurnoForm.Show();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (dgvTurnos.SelectedRows.Count != 0)
            {
                DataGridViewRow row = this.dgvTurnos.SelectedRows[0];
                int idTurno = int.Parse(row.Cells["IDTurno"].Value.ToString());

                Turno turnoSeleccionado = turnos[idTurno];

                AgregarTurno agregarTurnoForm = new AgregarTurno(turnoSeleccionado);

                this.Hide();


                agregarTurnoForm.Show();
            }
            else
            {
                MessageBox.Show("Seleccione un turno para editarlo");
            }
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            this.Hide();
        }


    }
}
