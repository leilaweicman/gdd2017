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
using UberFrba;

namespace UberFrba
{
    public partial class Home : Form
    {
        public Usuario usuario = new Usuario();

        public Home()
        {
            InitializeComponent();
        }

        public void abrirConUsuario(Usuario user)
        {
            usuario = user;
            this.Show();
        }
        
        private void Home_Load(object sender, EventArgs e)
        {
            lblAbmCliente.Visible = false;
            lblRegistrarAutomovil.Visible = false;
            lblAbmChofer.Visible = false;
            lblListadoAutomoviles.Visible = false;
            lblAbmRol.Visible = false;

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
                        lblAbmCliente.Visible = true;
                        break;
                    case Funcionalidades.ABM_Rol:
                        lblAbmRol.Visible = true;
                        break;
                    case Funcionalidades.ABM_Automovil:
                        lblRegistrarAutomovil.Visible = true;
                        lblListadoAutomoviles.Visible = true;
                        break;
                    case Funcionalidades.ABM_Chofer:
                        lblAbmChofer.Visible = true;
                        break;
                    case Funcionalidades.Registro_Viajes:
                        break;
                    case Funcionalidades.Rendicion_Cuenta:
                        break;
                    case Funcionalidades.Facturacion:
                        break;
                    case Funcionalidades.Listado_Estadistico:
                        break;
                    case Funcionalidades.ABM_Turno:
                        lblAbmTurno.Visible=true;                       
                        break;

                }
            }
            
        }
        

        private void lblRegistrarAutomovil_Click(object sender, EventArgs e)
        {
            
            Abm_Automovil.RegistroAutomovil registroAutomovilForm = new Abm_Automovil.RegistroAutomovil();
            this.Hide();
            registroAutomovilForm.Show();
        }

        private void lblAbmCliente_Click(object sender, EventArgs e)
        {
            Abm_Cliente.AbmCliente abmCliente = new Abm_Cliente.AbmCliente();
            this.Hide();
            abmCliente.Show();
        }

        private void lblListadoAutomoviles_Click(object sender, EventArgs e)
        {
            Abm_Automovil.Form1 listado = new Abm_Automovil.Form1();
            this.Hide();
            listado.Show();
        }

        private void lblAbmChofer_Click(object sender, EventArgs e)
        {
            UberFrba.Abm_Chofer.AbmChofer abmChofer = new Abm_Chofer.AbmChofer();
            this.Hide();
            abmChofer.Show();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Inicial inicialForm = new Inicial();
            this.Hide();
            inicialForm.Show();
        }

        private void lblAbmRol_Click(object sender, EventArgs e)
        {
            Abm_Rol.AbmRol abmRol = new Abm_Rol.AbmRol();
            this.Hide();
            abmRol.Show();
        }

        private void lblRegistrarViajes_Click(object sender, EventArgs e)
        {
            Registro_Viajes.RegistroViaje registroViaje = new Registro_Viajes.RegistroViaje();
            this.Hide();
            registroViaje.Show();
        }

        private void label1_Click(object sender, EventArgs e)
        {
            Abm_Turno.AbmTurno abmTurno = new Abm_Turno.AbmTurno();
            this.Hide();
            abmTurno.Show();
        }

       
    }
}
