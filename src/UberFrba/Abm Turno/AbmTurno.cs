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

        }







        private void cargarTurnos()
        {
            turnos.Clear();

            List<SqlParameter> parameterList = new List<SqlParameter>();
           /* if (txtFiltDni.Text == "")
            {
                Decimal dni = 0;
                parameterList.Add(new SqlParameter("@dni", dni));
            }
            else
            {
                parameterList.Add(new SqlParameter("@dni", int.Parse(txtFiltDni.Text)));
            }
            parameterList.Add(new SqlParameter("@nombre", txtFiltNombre.Text));
            parameterList.Add(new SqlParameter("@apellido", txtFiltApellido.Text));*/

            DataSet ds = SQLHelper.ExecuteDataSet("PR_traerTurnos", CommandType.StoredProcedure);

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Turno turno = new Turno();
                turno.DataRowToObject(row);
                turnos.Add(turno);

                dgvClientes.Rows.Add(turno.Id_Turno, turno.HoraInicio, turno.HoraFin, turno.Descripcion, turno.Habilitado);

            }
        }



    }
}
