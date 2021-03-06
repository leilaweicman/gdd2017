﻿using Connection;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Classes
{
    public class Turno : Base
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
        private Decimal _precioBase;
        private bool _habilitado;
        /*public DateTime hora = new DateTime(1,1,2017,7,59,59);
        TimeSpan horita = new TimeSpan();
      */




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

        public decimal PrecioBase
        {
            get
            {
                return _precioBase;
            }

            set
            {
                _precioBase = value;
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

        #region metodos publicos
        public override string NombreTabla()
        {
            return "Turno";
        }

        public override string NombreEntidad()
        {
            return "Turno";
        }

        public static DataSet obtenerTodos()
        {
            Turno unTurno = new Turno();
            return unTurno.TraerListado(unTurno.parameterList, "");
        }

        public static DataSet obtenerTurnosHabilitados()
        {            
            DataSet ds = SQLHelper.ExecuteDataSet("PR_traerTurnosHabilitados", CommandType.StoredProcedure);          
            return ds;
        }


        public DataSet obtenerTurnoPorId(int idTurno)
        {
            Turno unTurno = new Turno();
            unTurno.setearListaDeParametrosConId(idTurno);
            DataSet ds = unTurno.TraerListado(unTurno.parameterList, "PorId");
            unTurno.parameterList.Clear();
            return ds;
        }

        private void setearListaDeParametrosConId(int idTurno)
        {
            parameterList.Add(new SqlParameter("@IDTurno", idTurno));
        }

        public override void DataRowToObject(DataRow dr)
        {
            // Esto es tal cual lo devuelve el stored de la DB
            this.Id_Turno = Convert.ToInt32(dr["IDTurno"]);
            this.HoraInicio = Convert.ToInt32(dr["HoraInicio"]);
            this.HoraFin = Convert.ToInt32(dr["HoraFin"]);
            this.Descripcion = dr["Descripcion"].ToString();
            this.ValorKilometro = Convert.ToDecimal(dr["ValorKilometro"]);
            this.PrecioBase = Convert.ToDecimal(dr["PrecioBase"]);
            this.Habilitado = Convert.ToBoolean(dr["Habilitado"]);

        }
        public static DataSet ObtenerTurnosPorAutomovil(int id)
        {
            Turno turno = new Turno();
            turno.parameterList.Add(new SqlParameter("@IDAutomovil ", id));
            DataSet ds = turno.TraerListado(turno.parameterList, "PorAutomovil");
            turno.parameterList.Clear();
            return ds;
        }

        public static DataSet ObtenerTurnosHabilitadosDelAuto(int IDAutomovil)
        {
            Turno turno = new Turno();
            turno.parameterList.Add(new SqlParameter("@IDAutomovil ", IDAutomovil));
            DataSet ds = turno.TraerListado(turno.parameterList, "HabilitadosPorAutomovil");
            turno.parameterList.Clear();
            return ds;
        }
        
        #endregion
    }
}