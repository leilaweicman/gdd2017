﻿using Connection;
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
    public class Rol : Base
    {
        List<SqlParameter> parameterList = new List<SqlParameter>();

        #region atributos
        private int _id_Rol;
        private string _nombre;
        private bool _habilitado;
        List<Funcionalidad> _funcionalidades = new List<Funcionalidad>();
        #endregion

        #region properties
        public int Id_Rol
        {
            get { return _id_Rol; }
            set { _id_Rol = value; }
        }
        public string Nombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }

        public bool Habilitado
        {
            get { return _habilitado; }
            set { _habilitado = value; }
        }

        public List<Funcionalidad> Funcionalidades
        {
            get { return _funcionalidades; }
            set { _funcionalidades = value; }
        }

        #endregion

        #region constructor
        public Rol()
        {
            this.Id_Rol = 0;
            this.Nombre = "";
            this.Habilitado = false;

        }
        public Rol(string unNombre, bool unValorDeHabilitado)
        {
            this.Id_Rol = -1;
            this.Nombre = unNombre;
            this.Habilitado = unValorDeHabilitado;
        }
        #endregion

        #region metodos publicos
        public override string NombreTabla()
        {
            return "Rol";
        }

        public override string NombreEntidad()
        {
            return "Rol";
        }

        public override void DataRowToObject(DataRow dr)
        {
            // Esto es tal cual lo devuelve el stored de la DB
            this.Id_Rol = Convert.ToInt32(dr["IDRol"]);
            this.Nombre = dr["Nombre"].ToString();
            this.Habilitado = Convert.ToBoolean(dr["Habilitado"]);
        }

        public static DataSet obtenerTodos()
        {
            Rol unRol = new Rol();
            return unRol.TraerListado(unRol.parameterList, "");
        }

        public static DataSet ObtenerRolesPorUsuario(int id_Usuario)
        {
            Rol rol = new Rol();
            rol.setearListaDeParametrosConIdUsuario(id_Usuario);
            DataSet ds = rol.TraerListado(rol.parameterList, "PorUsuario");
            rol.parameterList.Clear();

            return ds;
        }

        public void setearFuncionalidadesAlRol()
        {
            DataSet dsFuncionalidades = Funcionalidad.ObtenerFuncionalidadesPorRol(this.Id_Rol);
            foreach (DataRow dr in dsFuncionalidades.Tables[0].Rows)
            {
                Funcionalidad func = new Funcionalidad();
                func.DataRowToObject(dr);
                this.Funcionalidades.Add(func);
            }
        }
        
        #endregion

        #region metodos privados
        private void setearListaDeParametrosConIdUsuario(int id_Usuario)
        {
            parameterList.Add(new SqlParameter("@IDUsuario", id_Usuario));
        }

        #endregion


        public void ModificarDatos()
        {
            throw new NotImplementedException();
        }

        public void guardarDatosDeRolNuevo()
        {
            //compruebo que no exista el rol creado
            DataSet dsParaComprobarExistencia = Rol.obtenerRolPorNombre(this.Nombre);
            if (dsParaComprobarExistencia.Tables[0].Rows.Count != 0)
                throw new EntidadExistenteException("un rol");

            //creo el rol nuevo y obtengo el id
            setearListaDeParametrosConNombreYHabilitado(this.Nombre, this.Habilitado);
            DataSet dsNuevoRol = this.GuardarYObtenerID(parameterList);
            parameterList.Clear();

            if (dsNuevoRol.Tables[0].Rows.Count > 0)
            {
                //seteo el id al rol y guardo las funcionalidades
                this.Id_Rol = Convert.ToInt32(dsNuevoRol.Tables[0].Rows[0]["IDRol"]);
                guardarFuncionalidades();
            }
            else
            {
                throw new BadInsertException();
            }
        }

        private void guardarFuncionalidades()
        {
            foreach (Funcionalidad unaFunc in this.Funcionalidades)
            {
                setearListaDeParametrosConIdFuncionalidadEIdRol(unaFunc.id_Funcionalidad);
                SQLHelper.ExecuteDataSet(_strInsertar + "FuncionalidadPorRol", CommandType.StoredProcedure, "FuncionalidadPorRol", parameterList);
                parameterList.Clear();
            }
        }

        private void setearListaDeParametrosConIdFuncionalidadEIdRol(int id_func)
        {
            parameterList.Add(new SqlParameter("@IDRol", this.Id_Rol));
            parameterList.Add(new SqlParameter("@IDFuncionalidad", id_func));
        }

        private void setearListaDeParametrosConNombreYHabilitado(string unNombre, bool unValorDeHabilitado)
        {
            parameterList.Add(new SqlParameter("@Nombre", unNombre));
            parameterList.Add(new SqlParameter("@Habilitado", unValorDeHabilitado));
        }

        private static DataSet obtenerRolPorNombre(string unNombre)
        {
            Rol unRol = new Rol(unNombre, true);
            unRol.setearListaDeParametrosConNombre(unRol.Nombre);
            DataSet ds = unRol.TraerListado(unRol.parameterList, "PorNombre");
            unRol.parameterList.Clear();
            return ds;
        }

        private void setearListaDeParametrosConNombre(string unNombre)
        {
            parameterList.Add(new SqlParameter("@Nombre", unNombre));
        }
    }
}
