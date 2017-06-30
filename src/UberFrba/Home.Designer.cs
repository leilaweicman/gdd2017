namespace UberFrba
{
    partial class Home
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.grpFuncionalidades = new System.Windows.Forms.GroupBox();
            this.lblAbmTurno = new System.Windows.Forms.Label();
            this.lblRegistrarViajes = new System.Windows.Forms.Label();
            this.lblAbmRol = new System.Windows.Forms.Label();
            this.lblListadoAutomoviles = new System.Windows.Forms.Label();
            this.lblRegistrarAutomovil = new System.Windows.Forms.Label();
            this.lblAbmChofer = new System.Windows.Forms.Label();
            this.lblAbmCliente = new System.Windows.Forms.Label();
            this.btnSalir = new System.Windows.Forms.Button();
            this.grpFuncionalidades.SuspendLayout();
            this.SuspendLayout();
            // 
            // grpFuncionalidades
            // 
            this.grpFuncionalidades.Controls.Add(this.lblAbmTurno);
            this.grpFuncionalidades.Controls.Add(this.lblRegistrarViajes);
            this.grpFuncionalidades.Controls.Add(this.lblAbmRol);
            this.grpFuncionalidades.Controls.Add(this.lblListadoAutomoviles);
            this.grpFuncionalidades.Controls.Add(this.lblRegistrarAutomovil);
            this.grpFuncionalidades.Controls.Add(this.lblAbmChofer);
            this.grpFuncionalidades.Controls.Add(this.lblAbmCliente);
            this.grpFuncionalidades.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grpFuncionalidades.Location = new System.Drawing.Point(40, 24);
            this.grpFuncionalidades.Name = "grpFuncionalidades";
            this.grpFuncionalidades.Size = new System.Drawing.Size(431, 241);
            this.grpFuncionalidades.TabIndex = 1;
            this.grpFuncionalidades.TabStop = false;
            this.grpFuncionalidades.Text = "Funcionalidades";
            // 
            // lblAbmTurno
            // 
            this.lblAbmTurno.AutoSize = true;
            this.lblAbmTurno.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAbmTurno.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblAbmTurno.Location = new System.Drawing.Point(243, 126);
            this.lblAbmTurno.Name = "lblAbmTurno";
            this.lblAbmTurno.Size = new System.Drawing.Size(113, 23);
            this.lblAbmTurno.TabIndex = 12;
            this.lblAbmTurno.Text = "ABM Turno";
            this.lblAbmTurno.Visible = false;
            this.lblAbmTurno.Click += new System.EventHandler(this.label1_Click);
            // 
            // lblRegistrarViajes
            // 
            this.lblRegistrarViajes.AutoSize = true;
            this.lblRegistrarViajes.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRegistrarViajes.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblRegistrarViajes.Location = new System.Drawing.Point(243, 86);
            this.lblRegistrarViajes.Name = "lblRegistrarViajes";
            this.lblRegistrarViajes.Size = new System.Drawing.Size(161, 23);
            this.lblRegistrarViajes.TabIndex = 11;
            this.lblRegistrarViajes.Text = "Registrar Viajes";
            this.lblRegistrarViajes.Click += new System.EventHandler(this.lblRegistrarViajes_Click);
            // 
            // lblAbmRol
            // 
            this.lblAbmRol.AutoSize = true;
            this.lblAbmRol.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAbmRol.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblAbmRol.Location = new System.Drawing.Point(243, 46);
            this.lblAbmRol.Name = "lblAbmRol";
            this.lblAbmRol.Size = new System.Drawing.Size(90, 23);
            this.lblAbmRol.TabIndex = 10;
            this.lblAbmRol.Text = "ABM Rol";
            this.lblAbmRol.Click += new System.EventHandler(this.lblAbmRol_Click);
            // 
            // lblListadoAutomoviles
            // 
            this.lblListadoAutomoviles.AutoSize = true;
            this.lblListadoAutomoviles.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblListadoAutomoviles.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblListadoAutomoviles.Location = new System.Drawing.Point(25, 184);
            this.lblListadoAutomoviles.Name = "lblListadoAutomoviles";
            this.lblListadoAutomoviles.Size = new System.Drawing.Size(166, 23);
            this.lblListadoAutomoviles.TabIndex = 9;
            this.lblListadoAutomoviles.Text = "Ver Automoviles";
            this.lblListadoAutomoviles.Click += new System.EventHandler(this.lblListadoAutomoviles_Click);
            // 
            // lblRegistrarAutomovil
            // 
            this.lblRegistrarAutomovil.AutoSize = true;
            this.lblRegistrarAutomovil.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRegistrarAutomovil.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblRegistrarAutomovil.Location = new System.Drawing.Point(25, 139);
            this.lblRegistrarAutomovil.Name = "lblRegistrarAutomovil";
            this.lblRegistrarAutomovil.Size = new System.Drawing.Size(200, 23);
            this.lblRegistrarAutomovil.TabIndex = 8;
            this.lblRegistrarAutomovil.Text = "Registrar Automovil";
            this.lblRegistrarAutomovil.Click += new System.EventHandler(this.lblRegistrarAutomovil_Click);
            // 
            // lblAbmChofer
            // 
            this.lblAbmChofer.AutoSize = true;
            this.lblAbmChofer.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAbmChofer.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblAbmChofer.Location = new System.Drawing.Point(25, 46);
            this.lblAbmChofer.Name = "lblAbmChofer";
            this.lblAbmChofer.Size = new System.Drawing.Size(119, 23);
            this.lblAbmChofer.TabIndex = 7;
            this.lblAbmChofer.Text = "ABM chofer";
            this.lblAbmChofer.Click += new System.EventHandler(this.lblAbmChofer_Click);
            // 
            // lblAbmCliente
            // 
            this.lblAbmCliente.AutoSize = true;
            this.lblAbmCliente.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAbmCliente.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblAbmCliente.Location = new System.Drawing.Point(25, 95);
            this.lblAbmCliente.Name = "lblAbmCliente";
            this.lblAbmCliente.Size = new System.Drawing.Size(122, 23);
            this.lblAbmCliente.TabIndex = 6;
            this.lblAbmCliente.Text = "ABM cliente";
            this.lblAbmCliente.Click += new System.EventHandler(this.lblAbmCliente_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSalir.Location = new System.Drawing.Point(40, 271);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(91, 43);
            this.btnSalir.TabIndex = 2;
            this.btnSalir.Text = "Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // Home
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(536, 326);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.grpFuncionalidades);
            this.Name = "Home";
            this.Text = "Home";
            this.Load += new System.EventHandler(this.Home_Load);
            this.grpFuncionalidades.ResumeLayout(false);
            this.grpFuncionalidades.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox grpFuncionalidades;
        private System.Windows.Forms.Label lblAbmChofer;
        private System.Windows.Forms.Label lblAbmCliente;
        private System.Windows.Forms.Label lblRegistrarAutomovil;
        private System.Windows.Forms.Label lblListadoAutomoviles;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Label lblAbmRol;
        private System.Windows.Forms.Label lblRegistrarViajes;
        private System.Windows.Forms.Label lblAbmTurno;


    }
}