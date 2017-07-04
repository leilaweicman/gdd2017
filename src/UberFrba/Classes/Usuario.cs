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
        private string _direccion;
        private string _depto;
        private Decimal _piso;
        private string _localidad;
        private DateTime _fechaNac;
        private int _codPost;
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

        public string Direccion
        {
            get
            {
                return _direccion;
            }

            set
            {
                _direccion = value;
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

        public int CodPost
        {
            get
            {
                return _codPost;
            }

            set
            {
                _codPost = value;
            }
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

        public override void DataRowToObject(DataRow dr)
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
            if(dr["Localidad"].ToString()== " "){
                this.Localidad = "";
            } else {
                this.Localidad = dr["Localidad"].ToString();
            }
            this.Direccion = dr["Direccion"].ToString();
            this.Piso = Convert.ToDecimal(dr["Piso"]);
            this.Depto = dr["Depto"].ToString();
            this.Username = dr["Username"].ToString();
            try
            {
                this.CodPost = Convert.ToInt32(dr["CodPostal"]);
            } catch{
                this.CodPost = -1;
            }
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

        private void setearListaDeParametrosConTrimestreAño(DateTime Fecha_Hasta, DateTime Fecha_Desde)
        {
            parameterList.Add(new SqlParameter("@fechaFin", Fecha_Hasta));
            parameterList.Add(new SqlParameter("@fechaInicio", Fecha_Desde));
        }

        public static DataSet ObtenerChoferes()
        {
            Usuario unUsuario = new Usuario();
            return unUsuario.TraerListado(unUsuario.parameterList, "QueSonChoferes");
        }

        public static DataSet ObtenerChoferesHabilitados()
        {
            Usuario unUsuario = new Usuario();
            return unUsuario.TraerListado(unUsuario.parameterList, "QueSonChoferesHabilitados");
        }

        public static DataSet ObtenerClientes()
        {
            Usuario unUsuario = new Usuario();
            return unUsuario.TraerListado(unUsuario.parameterList, "QueSonClientes");
        }

        public static DataSet ObtenerClientesHabilitados()
        {
            Usuario unUsuario = new Usuario();
            return unUsuario.TraerListado(unUsuario.parameterList, "QueSonClientesHabilitados");
        }

        public DataSet obtenerChoferesConMayorRecaudacion(DateTime Fecha_Hasta, DateTime Fecha_Desde)
        {            
            this.setearListaDeParametrosConTrimestreAño(Fecha_Hasta, Fecha_Desde);
            DataSet ds = this.TraerListado(this.parameterList, "ChoferesConMasRecaudacion");
            this.parameterList.Clear();
            return ds;
        }

        public DataSet obtenerChoferesConViajeMasLargo(DateTime Fecha_Hasta, DateTime Fecha_Desde)
        {
            this.setearListaDeParametrosConTrimestreAño(Fecha_Hasta, Fecha_Desde);
            DataSet ds = this.TraerListado(this.parameterList, "ChoferesConViajeMasLargo");
            this.parameterList.Clear();
            return ds;
        }

        public DataSet obtenerClientesConMayorConsumo(DateTime Fecha_Hasta, DateTime Fecha_Desde)
        {
            this.setearListaDeParametrosConTrimestreAño(Fecha_Hasta, Fecha_Desde);
            DataSet ds = this.TraerListado(this.parameterList, "ClientesConMayorConsumo");
            this.parameterList.Clear();
            return ds;
        }

        public DataSet obtenerClienteQueUtilizoMasVecesElMismoAutomovil(DateTime Fecha_Hasta, DateTime Fecha_Desde)
        {
            this.setearListaDeParametrosConTrimestreAño(Fecha_Hasta, Fecha_Desde);
            DataSet ds = this.TraerListado(this.parameterList, "ClienteQueUtilizoMasVecesElMismoAuto");
            this.parameterList.Clear();
            return ds;
        }

        public DataSet ObtenerChoferHabilitadoConAuto()
        {
            this.setearListaDeParametrosSoloConIdUsuario();
            DataSet ds = this.TraerListado(this.parameterList, "QueEsChoferHabilitado");
            this.parameterList.Clear();
            return ds;
        }

        public DataSet ObtenerClienteHabilitado()
        {
            this.setearListaDeParametrosSoloConIdUsuario();
            DataSet ds = this.TraerListado(this.parameterList, "QueEsClienteHabilitado");
            this.parameterList.Clear();
            return ds;
        }

        public DataSet ObtenerUsuarioPorIdChofer(int IDChofer)
        {
            this.setearListaDeParametrosSoloConIdChofer(IDChofer);
            DataSet ds = this.TraerListado(this.parameterList, "PorIdChofer");
            this.parameterList.Clear();
            return ds;
        }

        private void setearListaDeParametrosSoloConIdChofer(int IDChofer)
        {
            parameterList.Add(new SqlParameter("@IDChofer", IDChofer));
        }

        public DataSet ObtenerUsuarioPorIdCliente(int IDCliente)
        {
            this.setearListaDeParametrosSoloConIdCliente(IDCliente);
            DataSet ds = this.TraerListado(this.parameterList, "PorIdCliente");
            this.parameterList.Clear();
            return ds;
        }

        private void setearListaDeParametrosSoloConIdCliente(int IDCliente)
        {
            parameterList.Add(new SqlParameter("@IDCliente", IDCliente));
        }

        public static bool UsuarioChoferDistintoDeUsuarioCliente(int IDChofer, int IDCliente)
        {
            Usuario unUsuario = new Usuario();
            Usuario otroUsuario = new Usuario();

            DataSet dsChofer = unUsuario.ObtenerUsuarioPorIdChofer(IDChofer);
            unUsuario.DataRowToObject(dsChofer.Tables[0].Rows[0]);
            
            DataSet dsCliente = otroUsuario.ObtenerUsuarioPorIdCliente(IDCliente);
            otroUsuario.DataRowToObject(dsCliente.Tables[0].Rows[0]);

            if (unUsuario.Id_Usuario == otroUsuario.Id_Usuario)
            {
                return true;
            }

            return false;
        }

        public static DataSet ObtenerChoferesHabilitadosConAuto()
        {         
            Usuario unUsuario = new Usuario();
            return unUsuario.TraerListado(unUsuario.parameterList, "QueSonChoferesHabilitadosConAuto");        
        }
    }
}
