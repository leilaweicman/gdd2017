using Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using UberFrba.Abm_Chofer;
using UberFrba.Abm_Rol;

namespace UberFrba
{
    public partial class Principal : Form
    {

        public Usuario usuario = new Usuario();

        public Principal()
        {
            InitializeComponent();
        }

        private void salirToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Inicial frmInicial = new Inicial();
            frmInicial.Show();
            this.Close();
        }

        private void aBMRolesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AbmRol frmListadoRoles = new AbmRol();
            frmListadoRoles.Show(this);
        }

        private void aBMChoferesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AbmChofer frmABMChofer = new AbmChofer();
            frmABMChofer.Show(this);
        }

        private void aBMClientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Abm_Cliente.AbmCliente frmABMCliente = new Abm_Cliente.AbmCliente();
            frmABMCliente.Show(this);
        }


        private void registrarViajeToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Registro_Viajes.RegistroViaje frmRegViaje = new Registro_Viajes.RegistroViaje();
            frmRegViaje.Show(this);
        }

        private void rendicionDeCuentaDelChoferToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Rendicion_Viajes.Registro frmRendicion = new Rendicion_Viajes.Registro();
            frmRendicion.Show(this);
        }

        private void facturacionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Facturacion.RegistroFactura frmFacturacion = new Facturacion.RegistroFactura();
            frmFacturacion.Show(this);
        }

        private void estadisticasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Listado_Estadistico.Estadisticas frmEstadisticas = new Listado_Estadistico.Estadisticas();
            frmEstadisticas.Show(this);
        }

        public void abrirConUsuario(Usuario user)
        {
            usuario = user;
            this.Show();
        }

        private void Principal_Load(object sender, EventArgs e)
        {
            administracionToolStripMenuItem.Visible = false;
            automovilToolStripMenuItem.Visible = false;
            viajesToolStripMenuItem.Visible = false;

            aBMClientesToolStripMenuItem.Visible = false;
            aBMRolesToolStripMenuItem.Visible = false;
            abmAutomovilesToolStripMenuItem.Visible = false;
            aBMChoferesToolStripMenuItem.Visible = false;
            registrarViajeToolStripMenuItem1.Visible = false;
            rendicionDeCuentaDelChoferToolStripMenuItem.Visible = false;
            facturacionToolStripMenuItem.Visible = false;
            estadisticasToolStripMenuItem.Visible = false;
            aBMTurnosToolStripMenuItem.Visible = false;

            usuario.Rol.setearFuncionalidadesAlRol();

            //Segun el rol, voy a tener funcionalidades. Voy a comparar cada funcionalidad del rol
            //contra el enum de la clase de funcionalidades que tiene definido todos los posibles tipos
            //de funcionalidades permitidas para el usuario. Segun las funcionalidades que mi rol tenga
            //vere mas o menos pestañas en el menu           
            foreach (Funcionalidad unaFunc in usuario.Rol.Funcionalidades)
            {
                switch (unaFunc.obtenerPorNombre())
                {
                    case Funcionalidades.ABM_Cliente:
                        administracionToolStripMenuItem.Visible = true;
                        aBMClientesToolStripMenuItem.Visible = true;
                        break;
                    case Funcionalidades.ABM_Rol:
                        administracionToolStripMenuItem.Visible = true;
                        aBMRolesToolStripMenuItem.Visible = true;
                        break;
                    case Funcionalidades.ABM_Automovil:
                        automovilToolStripMenuItem.Visible = true;
                        abmAutomovilesToolStripMenuItem.Visible = true;
                        break;
                    case Funcionalidades.ABM_Chofer:
                        administracionToolStripMenuItem.Visible = true;
                        aBMChoferesToolStripMenuItem.Visible = true;
                        break;
                    case Funcionalidades.Registro_Viajes:
                        registrarViajeToolStripMenuItem1.Visible = true;
                        viajesToolStripMenuItem.Visible = true;
                        break;
                    case Funcionalidades.Rendicion_Cuenta:
                        viajesToolStripMenuItem.Visible = true;
                        rendicionDeCuentaDelChoferToolStripMenuItem.Visible = true;
                        break;
                    case Funcionalidades.Facturacion:
                        viajesToolStripMenuItem.Visible = true;
                        facturacionToolStripMenuItem.Visible = true;
                        break;
                    case Funcionalidades.Listado_Estadistico:
                        viajesToolStripMenuItem.Visible = true;
                        estadisticasToolStripMenuItem.Visible = true;
                        break;
                    case Funcionalidades.ABM_Turno:
                        automovilToolStripMenuItem.Visible = true;
                        aBMTurnosToolStripMenuItem.Visible = true;
                        break;

                }
            }

        }

        private void abmAutomovilesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Abm_Automovil.Form1 frmABMAutomovil = new Abm_Automovil.Form1();
            frmABMAutomovil.Show(this);
        }

        private void aBMTurnosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Abm_Turno.AbmTurno frmAbmTurno = new Abm_Turno.AbmTurno();
            frmAbmTurno.Show(this);
        }
    }
}
