using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Classes
{
    public class Rendicion : Base
    {

        List<SqlParameter> parameterList = new List<SqlParameter>();
        #region atributos
        private int _nroRendicion;
        private string _chofer;
        private string _fecha;
        private string _turno;
        private decimal _total;
       
        #endregion
        public int nro_Rendicion
        {
            get { return _nroRendicion; }
            set { _nroRendicion = value; }
        }
        public string Chofer
        {
            get { return _chofer; }
            set { _chofer = value; }
        }
        public string Fecha
        {
            get { return _fecha; }
            set { _fecha = value; }
        }
        public string Turno
        {
            get { return _turno; }
            set { _turno = value; }
        }
        public decimal Total
        {
            get { return _total; }
            set { _total = value; }
        }
        public override string NombreTabla()
        {
            return "Rendicion";
        }

        public override string NombreEntidad()
        {
            return "Rendicion";
        }

        public override void DataRowToObject(DataRow dr)
        {
            // Esto es tal cual lo devuelve el stored de la DB
            this.nro_Rendicion = Convert.ToInt32(dr["NroRendicion"]);
            this.Total =Convert.ToDecimal(dr["ImporteTotal"]);
            this.Turno = dr["Descripcion"].ToString();
            this.Fecha = dr["Fecha"].ToString();
            this.Chofer = dr["Nombre"].ToString(); 
        }
        public static DataSet obtenerTodos()
        {
            Rendicion rend = new Rendicion();
            return rend.TraerListado(rend.parameterList, "");
        }
    }
}
