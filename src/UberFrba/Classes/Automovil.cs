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

        public Automovil()
        {
        }
        public override string NombreTabla()
        {
            return "Automovil";
        }

        public override string NombreEntidad()
        {
            return "Automovil";
        }
     //   private int IDAutomovil;
   /*     private string Chofer;
        private string Marca;
        private string Modelo;
        private string Rodado;
        private string Patente;
            private string Licencia;*/
        public int IDAutomovil { get; set; }

        public string Chofer { get; set; }

        public string Marca { get; set; }

        public string Modelo { get; set; }
        public string Patente { get; set; }
        public string Rodado { get; set; }
        public string Licencia { get; set; }

        public bool Habilitado { get; set; }

        
        #region methods
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


        private void setearListaDeParametrosSoloConIdAutomovil()
        {
            parameterList.Add(new SqlParameter("@id", IDAutomovil));
        }
        public override void DataRowToObject(DataRow dr) //CAMBIAR CAMPOS!!!
        {
            // Esto es tal cual lo devuelve el stored de la DB
            this.IDAutomovil = Convert.ToInt32(dr["IDAutomovil"]);
            this.Chofer = dr["Chofer"].ToString();
            this.Marca = dr["Marca"].ToString();
            this.Modelo = dr["Modelo"].ToString();
            this.Patente = dr["Patente"].ToString();
            this.Licencia = dr["Licencia"].ToString();

            this.Rodado = dr["Rodado"].ToString();
            this.Habilitado =bool.Parse(dr["Habilitado"].ToString());
            // LOS COMENTO PORQUE ESTAN EN NULL Y TIRA ERROR
            // this.Localidad = dr["Localidad"].ToString();
            // this.Calle = dr["Calle"].ToString();
            // this.Piso = Convert.ToDecimal(dr["Piso"]);
            // this.Depto = dr["Depto"].ToString();
        }


        #endregion

      
    }
}
