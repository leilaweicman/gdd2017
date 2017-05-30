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
    public class Usuario : Base
    {
        #region variables
        List<SqlParameter> parameterList = new List<SqlParameter>();
        #endregion

        #region atributos

        private int _id_Usuario;
        private string _username;
        private string _clave;
        private bool _claveAutoGenerada;
        private bool _activo;
        //private Rol _rol; AGREGAR DESPUES

        #endregion

        #region constructor
        public Usuario()
        {

        }
        
        #endregion

        //getters y setters
        #region properties

        public int Id_Usuario
        {
            get { return _id_Usuario; }
            set { _id_Usuario = value; }
        }
        public string Username
        {
            get { return _username; }
            set { _username = value; }
        }

        public string Clave
        {
            get { return _clave; }
            set { _clave = value; }
        }


        public bool ClaveAutoGenerada
        {
            get { return _claveAutoGenerada; }
            set { _claveAutoGenerada = value; }
        }

        public bool Activo
        {
            get { return _activo; }
            set { _activo = value; }
        }

        //public Rol Rol
        //{
        //    get { return _rol; }
        //    set { _rol = value; }
        //}
        #endregion 
        
        #region methods

        public override string NombreTabla()
        {
            return "Usuarios";
        }

        public override string NombreEntidad()
        {
            return "Usuario";
        }

        public bool obtenerUsuarioPorUsername()
        {
            setearListaDeParametrosConUsuario();
            DataSet ds = SQLHelper.ExecuteDataSet("traerUsuarioPorUsername", CommandType.StoredProcedure, parameterList);
            parameterList.Clear();
            if (ds.Tables[0].Rows.Count == 1)
            {
                DataRowToObject(ds.Tables[0].Rows[0]);
                if (this.Activo)
                    return true;
            }

            return false;
        }

        public override void DataRowToObject(DataRow dr) //CAMBIAR CAMPOS!!!
        {
            // Esto es tal cual lo devuelve el stored de la DB
            this.Id_Usuario = Convert.ToInt32(dr["id_Usuario"]);
            this.Username = dr["Username"].ToString();
            this.Clave = dr["Clave"].ToString();
            this.ClaveAutoGenerada = Convert.ToBoolean(dr["ClaveAutoGenerada"]);
            this.Activo = Convert.ToBoolean(dr["Activo"]);
        }

        private void setearListaDeParametrosConUsuario()
        {
            parameterList.Add(new SqlParameter("@Username", this.Username));
        }

        #endregion

        public void Deshabilitar()
        {
            setearListaDeParametrosConUsuario();
            DataSet ds = SQLHelper.ExecuteDataSet("traerUsuarioPorUsername", CommandType.StoredProcedure, parameterList);
            parameterList.Clear();
            if (ds.Tables[0].Rows.Count == 0)
            {
                throw new NoEntidadException();
            }

            this.Id_Usuario = Convert.ToInt32(ds.Tables[0].Rows[0]["id_Usuario"]);

            setearListaDeParametrosSoloConIdUsuario();
            base.Deshabilitar(parameterList);
            parameterList.Clear();
        }

        private void setearListaDeParametrosSoloConIdUsuario()
        {
            parameterList.Add(new SqlParameter("@id_Usuario", this.Id_Usuario));
        }
    }
}
