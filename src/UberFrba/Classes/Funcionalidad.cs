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
            return "Funcionalidades";
        }

        public override string NombreEntidad()
        {
            return "Funcionalidad";
        }

        public override void DataRowToObject(DataRow dr)
        {
            // Esto es tal cual lo que devuelve el sp de la DB
            this.id_Funcionalidad = Convert.ToInt32(dr["id_Funcionalidad"]);
            this.Nombre = dr["Nombre"].ToString();
        }

        public static DataSet ObtenerFuncionalidadesPorRol(int id_Rol)
        {
            Funcionalidad func = new Funcionalidad();
            func.setearListaDeParametrosConIdRol(id_Rol);
            DataSet ds = func.TraerListado(func.parameterList, "PorId_Rol");
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
            if (Nombre == "ABM_Clientes") return Funcionalidades.ABM_Clientes;
            if (Nombre == "ABM_Empresas") return Funcionalidades.ABM_Empresas;
            if (Nombre == "Administrar_Usuarios") return Funcionalidades.Administrar_Usuarios;
            if (Nombre == "Cambiar_Clave") return Funcionalidades.Cambiar_Clave;
            if (Nombre == "ABM_Rol") return Funcionalidades.ABM_Rol;
            if (Nombre == "ABM_Visibilidad") return Funcionalidades.ABM_Visibilidad;
            if (Nombre == "Generar_Publicaciones") return Funcionalidades.Generar_Publicaciones;
            if (Nombre == "Mis_Publicaciones") return Funcionalidades.ABM_Automovil;
            if (Nombre == "Comprar_Ofertar") return Funcionalidades.ABM_Chofer;
            if (Nombre == "Calificar") return Funcionalidades.Rendicion_Cuenta;
            if (Nombre == "Facturar") return Funcionalidades.Facturacion;
            if (Nombre == "Historial_clientes") return Funcionalidades.Registro_Viajes;
            if (Nombre == "Estadisticas") return Funcionalidades.Listado_Estadistico;
            return null;
        }

        #endregion

        #region metodos privados
        private void setearListaDeParametrosConIdRol(int id_Rol)
        {
            parameterList.Add(new SqlParameter("@id_Rol", id_Rol));
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
        Listado_Estadistico
    }
}
