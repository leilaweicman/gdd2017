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
        private string _contraseniaEncriptada;
        private bool _habilitado;
        private Decimal _dni;
        private string _nombre;
        private string _apellido;
        private Decimal tel;
        private string _mail;
        private string _calle;
        private string _depto;
        private Decimal _piso;
        private string _localidad;
        private DateTime _fechaNac;
        private Rol _rol; 

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

        public string ContraseniaEncriptada
        {
            get { return _contraseniaEncriptada; }
            set { _contraseniaEncriptada = value; }
        }
        
        public bool Habilitado
        {
            get { return _habilitado; }
            set { _habilitado = value; }
        }

        public decimal Dni
        {
            get
            {
                return _dni;
            }

            set
            {
                _dni = value;
            }
        }

        public string Nombre
        {
            get
            {
                return _nombre;
            }

            set
            {
                _nombre = value;
            }
        }

        public string Apellido
        {
            get
            {
                return _apellido;
            }

            set
            {
                _apellido = value;
            }
        }

        public decimal Tel
        {
            get
            {
                return tel;
            }

            set
            {
                tel = value;
            }
        }

        public string Mail
        {
            get
            {
                return _mail;
            }

            set
            {
                _mail = value;
            }
        }

        public string Calle
        {
            get
            {
                return _calle;
            }

            set
            {
                _calle = value;
            }
        }

        public string Depto
        {
            get
            {
                return _depto;
            }

            set
            {
                _depto = value;
            }
        }

        public decimal Piso
        {
            get
            {
                return _piso;
            }

            set
            {
                _piso = value;
            }
        }

        public string Localidad
        {
            get
            {
                return _localidad;
            }

            set
            {
                _localidad = value;
            }
        }

        public DateTime FechaNac
        {
            get
            {
                return _fechaNac;
            }

            set
            {
                _fechaNac = value;
            }
        }

        public Rol Rol
        {
            get { return _rol; }
            set { _rol = value; }
        }
        #endregion

        #region methods

        public override string NombreTabla()
        {
            return "Usuario";
        }

        public override string NombreEntidad()
        {
            return "Usuario";
        }

        public bool obtenerUsuarioPorUsername()
        {
            setearListaDeParametrosConUsuario();
            DataSet ds = SQLHelper.ExecuteDataSet("PR_traerUsuarioPorUsername", CommandType.StoredProcedure, parameterList);
            parameterList.Clear();
            if (ds.Tables[0].Rows.Count == 1)
            {
                DataRowToObject(ds.Tables[0].Rows[0]);
                if (this.Habilitado)
                    return true;
            }

            return false;
        }

        public override void DataRowToObject(DataRow dr) //CAMBIAR CAMPOS!!!
        {
            // Esto es tal cual lo devuelve el stored de la DB
            this.Id_Usuario = Convert.ToInt32(dr["IDUsuario"]);
            this.ContraseniaEncriptada = dr["ContraseniaEncriptada"].ToString();
            this.Habilitado = Convert.ToBoolean(dr["Habilitado"]);
            this.Nombre = dr["Nombre"].ToString();
            this.Apellido = dr["Apellido"].ToString();
            this.Tel = Convert.ToDecimal(dr["Telefono"]);
            this.Dni = Convert.ToDecimal(dr["DNI"]);
            this.FechaNac = Convert.ToDateTime(dr["FechaNacimiento"]);
            this.Mail = dr["Mail"].ToString();
            // LOS COMENTO PORQUE ESTAN EN NULL Y TIRA ERROR
            // this.Localidad = dr["Localidad"].ToString();
            // this.Calle = dr["Calle"].ToString();
            // this.Piso = Convert.ToDecimal(dr["Piso"]);
            // this.Depto = dr["Depto"].ToString();
        }

        private void setearListaDeParametrosConUsuario()
        {
            parameterList.Add(new SqlParameter("@Username", this.Username));
        }

        #endregion

        public void Deshabilitar()
        {
            setearListaDeParametrosConUsuario();
            DataSet ds = SQLHelper.ExecuteDataSet("PR_traerUsuarioPorUsername", CommandType.StoredProcedure, parameterList);
            parameterList.Clear();
            if (ds.Tables[0].Rows.Count == 0)
            {
                throw new NoEntidadException();
            }

            this.Id_Usuario = Convert.ToInt32(ds.Tables[0].Rows[0]["IDUsuario"]);

            setearListaDeParametrosSoloConIdUsuario();
            base.Deshabilitar(parameterList);
            parameterList.Clear();
        }

        public void AsignarRol(DataSet ds)
        {
            this.Rol = new Rol();
            this.Rol.DataRowToObject(ds.Tables[0].Rows[0]);
        }

        private void setearListaDeParametrosSoloConIdUsuario()
        {
            parameterList.Add(new SqlParameter("@IdUsuario", this.Id_Usuario));
        }
    }
}
