using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Classes
{
    public class Turno
    {
        #region variables
        List<SqlParameter> parameterList = new List<SqlParameter>();
        #endregion

        #region atributos

        private int _id_Turno;
        private int _horaInicio;
        private int _horaFin;
        private string _descripcion;
        private Decimal _valorKilometro;
        private Decimal _precio;
        private bool _habilitado;

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

        public int HoraInicio
        {
            get
            {
                return _horaInicio;
            }

            set
            {
                _horaInicio = value;
            }
        }

        public int HoraFin
        {
            get
            {
                return _horaFin;
            }

            set
            {
                _horaFin = value;
            }
        }

        public string Descripcion
        {
            get
            {
                return _descripcion;
            }

            set
            {
                _descripcion = value;
            }
        }

        public decimal ValorKilometro
        {
            get
            {
                return _valorKilometro;
            }

            set
            {
                _valorKilometro = value;
            }
        }

        public decimal Precio
        {
            get
            {
                return _precio;
            }

            set
            {
                _precio = value;
            }
        }

        public bool Habilitado
        {
            get
            {
                return _habilitado;
            }

            set
            {
                _habilitado = value;
            }
        }

        #endregion

        #region constructor
        public Turno()
        {

        }
        #endregion


        public void DataRowToObject(DataRow dr)
        {
            // Esto es tal cual lo devuelve el stored de la DB
            this.Id_Turno = Convert.ToInt32(dr["IDTurno"]);
            this.HoraInicio = Convert.ToInt32(dr["HoraInicio"]);
            this.HoraFin = Convert.ToInt32(dr["HoraFin"]);
            this.Descripcion = dr["Descripcion"].ToString();
            this.ValorKilometro = Convert.ToDecimal(dr["ValorKilometro"]);
            this.Precio = Convert.ToDecimal(dr["Precio"]);
            this.Habilitado = Convert.ToBoolean(dr["Habilitado"]);
        }

    }
}
