using Connection;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Classes
{
    public class RendicionDetalle : Base
    {
        List<SqlParameter> parameterList = new List<SqlParameter>();
        #region atributos
        private int _idViaje;
        private string _cliente;
        private string _fecha;
        private int _porcentaje;
        private decimal _precioViaje;
        private decimal _precioChofer;
        private int _idTurno;
        private int _idchofer;
        private string _fechaFin;
        #endregion


        public int idViaje
        {
            get { return _idViaje; }
            set { _idViaje = value; }
        }
        public string Cliente
        {
            get { return _cliente; }
            set { _cliente = value; }
        }
        public string Fecha
        {
            get { return _fecha; }
            set { _fecha = value; }
        }
        public int IDTurno
        {
            get { return _idTurno; }
            set { _idTurno = value; }
        }
        public decimal PrecioViaje
        {
            get { return _precioViaje; }
            set { _precioViaje = value; }
        }
        public decimal PrecioChofer
        {
            get { return _precioChofer; }
            set { _precioChofer = value; }
        }
        public int Porcentaje
        {
            get { return _porcentaje; }
            set { _porcentaje = value; }
        }
        public int idchofer
        {
            get { return _idchofer; }
            set { _idchofer = value; }
        }
        public string fechaFin
        {
            get { return _fechaFin; }
            set { _fechaFin = value; }
        }
        public override string NombreTabla()
        {
            return "RendicionDetalle";
        }

        public override string NombreEntidad()
        {
            return "RendicionDetalle";
        }

        public override void DataRowToObject(DataRow dr)
        {
            // Esto es tal cual lo devuelve el stored de la DB
            this.PrecioChofer = Convert.ToDecimal(dr["precioChofer"]);
            this.PrecioViaje =  Convert.ToDecimal(dr["precioViaje"]);
            this.fechaFin = dr["FechaFin"].ToString();
            this.Cliente = dr["Nombre"].ToString();
        }
        public static DataSet obtenerTodos(RendicionDetalle rd)
        {
            RendicionDetalle rend = new RendicionDetalle();
            rend.parameterList.Clear();

            rend.setearListaDeParametrosDetalle(rd.Fecha,rd.Porcentaje,rd.idchofer,rd.IDTurno);           

            return rend.TraerListado(rend.parameterList, "");
        }
        private void setearListaDeParametrosDetalle(string fecha, int porc, int idchofer, int idturno)
        {
            parameterList.Add(new SqlParameter("@fecha", fecha));
            parameterList.Add(new SqlParameter("@porcentaje", porc));
            parameterList.Add(new SqlParameter("@idchofer", idchofer));
            parameterList.Add(new SqlParameter("@idturno", idturno));

        }
        public void ConfirmarRendicion(RendicionDetalle rd)
        {
            RendicionDetalle rend = new RendicionDetalle();
            rend.parameterList.Clear();

            rend.setearListaDeParametrosDetalle(rd.Fecha, rd.Porcentaje, rd.idchofer, rd.IDTurno);

            SQLHelper.ExecuteDataSet("PR_GenerarRendicion", CommandType.StoredProcedure, rend.parameterList);
        }

    }
}
