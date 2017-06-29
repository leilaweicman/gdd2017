using Connection;
using Exceptions;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Classes
{
    public class Automovil:Base
    {
        List<SqlParameter> parameterList = new List<SqlParameter>();

        #region constructor
        public Automovil()
        {
        }
        #endregion

        #region atributos

        private int _ID_Automovil;
        private string _Chofer;
        private string _Marca;
        private string _Turno;
        private string _Modelo;
        private string _Rodado;
        private string _Patente;
        private string _Licencia;
        private bool _Habilitado;

        #endregion

        #region properties
        public int IDAutomovil 
        {
            get { return _ID_Automovil; }
            set { _ID_Automovil = value; }
        }

        public string Chofer 
        {
            get { return _Chofer; }
            set { _Chofer = value; }
        }

        public string Marca
        {
            get { return _Marca; }
            set { _Marca = value; }
        }
        public string Modelo
        {
            get { return _Modelo; }
            set { _Modelo = value; }
        }
        public string Patente
        {
            get { return _Patente; }
            set { _Patente = value; }
        }
        public string Rodado
        {
            get { return _Rodado; }
            set { _Rodado = value; }
        }
        public string Licencia
        {
            get { return _Licencia; }
            set { _Licencia = value; }
        }

        public bool Habilitado
        {
            get { return _Habilitado; }
            set { _Habilitado = value; }
        }
        public string Turno
        {
            get { return _Turno; }
            set { _Turno = value; }
        }
        #endregion

        #region methods

        public override string NombreTabla()
        {
            return "Automovil";
        }

        public override string NombreEntidad()
        {
            return "Automovil";
        }

        public void Deshabilitar(int id)
        {
             /*
            DataSet ds = SQLHelper.ExecuteDataSet("PR_TraerAutomoviles", CommandType.StoredProcedure, parameterList);
            parameterList.Clear();
            if (ds.Tables[0].Rows.Count == 0)
            {
                throw new NoEntidadException();
            }
            */
            IDAutomovil = Convert.ToInt32(id);

            setearListaDeParametrosSoloConIdAutomovil();
            base.Deshabilitar(parameterList);
            parameterList.Clear();
        }

        public override void DataRowToObject(DataRow dr)
        {
            // Esto es tal cual lo devuelve el stored de la DB
            this.IDAutomovil = Convert.ToInt32(dr["IDAutomovil"]);
            this.Chofer = dr["Chofer"].ToString();
            this.Marca = dr["Marca"].ToString();
            this.Modelo = dr["Modelo"].ToString();
            this.Patente = dr["Patente"].ToString();
            this.Licencia = dr["Licencia"].ToString();
           // this.Turno = dr["Turno"].ToString();
            this.Rodado = dr["Rodado"].ToString();
            this.Habilitado =bool.Parse(dr["Habilitado"].ToString());           
        }
        
        public DataSet ObtenerAutomovilPorChofer(int IDChofer)
        {
            setearListaDeParametrosSoloConIdChofer(IDChofer);            
            DataSet ds = SQLHelper.ExecuteDataSet("traerAutomovilDelChofer", CommandType.StoredProcedure, parameterList);
            parameterList.Clear();          

            return ds;

        }

        private void setearListaDeParametrosSoloConIdAutomovil()
        {
            parameterList.Add(new SqlParameter("@id", IDAutomovil));
        }

        private void setearListaDeParametrosSoloConIdChofer(int IDChofer)
        {
            parameterList.Add(new SqlParameter("@IDChofer", IDChofer));
        }

        #endregion
       
    }
}
