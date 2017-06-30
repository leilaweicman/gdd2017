using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Classes
{
    public class Viaje: Base
    {
         #region variables
        List<SqlParameter> parameterList = new List<SqlParameter>();
        #endregion

        #region atributos

        private int _id_Viaje;
        private string _fechaYHoraInicio;
        private string _fechaYHoraFin;
        private int _id_Chofer;
        private int _id_Cliente;
        private int _id_Automovil;
        private int _id_Turno;
        private decimal _cant_Km;

        #endregion

        #region getters y setters
        public int Id_Turno
        {
            get
            {
                return _id_Turno;
            }

            set
            {
                _id_Turno = value;
            }
        }

        public string FechaYHoraInicio
        {
            get
            {
                return _fechaYHoraInicio;
            }

            set
            {
                _fechaYHoraInicio = value;
            }
        }

        public string FechaYHoraFin
        {
            get
            {
                return _fechaYHoraFin;
            }

            set
            {
                _fechaYHoraFin = value;
            }
        }

        public int Id_Chofer
        {
            get
            {
                return _id_Chofer;
            }

            set
            {
                _id_Chofer = value;
            }
        }

        public decimal CantKilometros
        {
            get
            {
                return _cant_Km;
            }

            set
            {
                _cant_Km = value;
            }
        }

        public int Id_Viaje
        {
            get
            {
                return _id_Viaje;
            }

            set
            {
                _id_Viaje = value;
            }
        }

        public int Id_Cliente
        {
            get
            {
                return _id_Cliente;
            }

            set
            {
                _id_Cliente = value;
            }
        }

        public int Id_Automovil
        {
            get
            {
                return _id_Automovil;
            }

            set
            {
                _id_Automovil = value;
            }
        }
        #endregion

        #region constructor
        public Viaje()
        {

        }
        #endregion

        #region metodos publicos
        public override string NombreTabla()
        {
            return "Viaje";
        }

        public override string NombreEntidad()
        {
            return "Viaje";
        }

        public static DataSet obtenerTodos()
        {
            Viaje unViaje = new Viaje();
            return unViaje.TraerListado(unViaje.parameterList, "");
        }
        #endregion

        public void DataRowToObject(DataRow dr)
        {
            // Esto es tal cual lo devuelve el stored de la DB
            this.Id_Viaje = Convert.ToInt32(dr["IDViaje"]);
            this.Id_Turno = Convert.ToInt32(dr["IDTurno"]);
            this.Id_Cliente = Convert.ToInt32(dr["IDCliente"]);
            this.Id_Chofer = Convert.ToInt32(dr["IDChofer"]);
            this.Id_Automovil = Convert.ToInt32(dr["IDAutomovil"]);
            this.FechaYHoraInicio = dr["FechaInicio"].ToString();
            this.FechaYHoraFin = dr["FechaFin"].ToString();
            this.CantKilometros = Convert.ToDecimal(dr["CantidadKilometros"]);
        }


        public void guardarDatosDeViajeNuevo()
        {
            //creo el rol viaje
            setearListaDeParametros(this.Id_Turno, this.Id_Cliente, this.Id_Chofer, this.Id_Automovil, this._fechaYHoraInicio, this.FechaYHoraFin, this.CantKilometros);
            this.Guardar(parameterList);
            parameterList.Clear();
        }

        private void setearListaDeParametros(int p1, int p2, int p3, int p4, string p5, string p6, decimal p7)
        {
            parameterList.Add(new SqlParameter("@IDTurno", this.Id_Turno));
            parameterList.Add(new SqlParameter("@IDCliente", this.Id_Cliente));
            parameterList.Add(new SqlParameter("@IDChofer", this.Id_Chofer));
            parameterList.Add(new SqlParameter("@IDAutomovil", this.Id_Automovil));
            parameterList.Add(new SqlParameter("@FechaInicio", this.FechaYHoraInicio));
            parameterList.Add(new SqlParameter("@FechaFin", this.FechaYHoraFin));
            parameterList.Add(new SqlParameter("@CantKM", this.CantKilometros));
        }
    }
}
