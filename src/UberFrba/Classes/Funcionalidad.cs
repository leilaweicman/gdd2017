using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Classes
{
    public class Funcionalidad : Base
    {
        List<SqlParameter> parameterList = new List<SqlParameter>();

        #region atributos
        private int _id_Funcionalidad;
        private string _nombre;
        #endregion

        #region properties
        public int id_Funcionalidad
        {
            get { return _id_Funcionalidad; }
            set { _id_Funcionalidad = value; }
        }
        public string Nombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }
        #endregion

        #region metodos publicos
        public override string NombreTabla()
        {
            return "Funcionalidad";
        }

        public override string NombreEntidad()
        {
            return "Funcionalidad";
        }

        public override void DataRowToObject(DataRow dr)
        {
            // Esto es tal cual lo que devuelve el sp de la DB
            this.id_Funcionalidad = Convert.ToInt32(dr["IDFuncionalidad"]);
            this.Nombre = dr["Nombre"].ToString();
        }

        public static DataSet ObtenerFuncionalidadesPorRol(int id_Rol)
        {
            Funcionalidad func = new Funcionalidad();
            func.setearListaDeParametrosConIdRol(id_Rol);
            DataSet ds = func.TraerListado(func.parameterList, "PorRol");
            func.parameterList.Clear();
            return ds;
        }

        public static DataSet obtenerTodas()
        {
            Funcionalidad miFunc = new Funcionalidad();
            DataSet ds = miFunc.TraerListado(miFunc.parameterList, "");
            return ds;
        }

        public Funcionalidades? obtenerPorNombre()
        {
            if (Nombre == "ABM_Clientes") return Funcionalidades.ABM_Cliente;
            if (Nombre == "ABM_Rol") return Funcionalidades.ABM_Rol;
            if (Nombre == "ABM_Automovil") return Funcionalidades.ABM_Automovil;
            if (Nombre == "ABM_Chofer") return Funcionalidades.ABM_Chofer;
            if (Nombre == "Rendicion_Cuenta") return Funcionalidades.Rendicion_Cuenta;
            if (Nombre == "Facturacion") return Funcionalidades.Facturacion;
            if (Nombre == "Registro_Viajes") return Funcionalidades.Registro_Viajes;
            if (Nombre == "Listado_Estadistico") return Funcionalidades.Listado_Estadistico;
            if (Nombre == "ABM_Turno") return Funcionalidades.ABM_Turno;
            return null;
        }

        #endregion

        #region metodos privados
        private void setearListaDeParametrosConIdRol(int id_Rol)
        {
            parameterList.Add(new SqlParameter("@IDRol", id_Rol));
        }
        #endregion

    }

    public enum Funcionalidades
    {        
        //Administrar_Usuarios,
        //Cambiar_Clave,
        ABM_Rol,
        ABM_Cliente,
        ABM_Automovil,
        ABM_Chofer,
        Registro_Viajes,
        Rendicion_Cuenta,
        Facturacion,
        Listado_Estadistico,
        ABM_Turno
    }
}
