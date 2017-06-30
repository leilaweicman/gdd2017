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
        List<Turno> turnos  = new List<Turno>();
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
                turnos.Add(turno);

                dgvTurnos.Rows.Add(turno.Id_Turno, turno.HoraInicio.TimeOfDay, turno.HoraFin.TimeOfDay, turno.Descripcion, turno.ValorKilometro, turno.PrecioBase,
                    turno.Habilitado);

            }
        }


    }
}
