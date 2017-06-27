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
            this.grpAdmin = new System.Windows.Forms.GroupBox();
            this.lblListadoAutomoviles = new System.Windows.Forms.Label();
            this.lblRegistrarAutomovil = new System.Windows.Forms.Label();
            this.lblAbmChofer = new System.Windows.Forms.Label();
            this.lblAbmCliente = new System.Windows.Forms.Label();
            this.btnSalir = new System.Windows.Forms.Button();
            this.lblAbmRol = new System.Windows.Forms.Label();
            this.grpAdmin.SuspendLayout();
            this.SuspendLayout();
            // 
            // grpAdmin
            // 
            this.grpAdmin.Controls.Add(this.lblAbmRol);
            this.grpAdmin.Controls.Add(this.lblListadoAutomoviles);
            this.grpAdmin.Controls.Add(this.lblRegistrarAutomovil);
            this.grpAdmin.Controls.Add(this.lblAbmChofer);
            this.grpAdmin.Controls.Add(this.lblAbmCliente);
            this.grpAdmin.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grpAdmin.Location = new System.Drawing.Point(40, 24);
            this.grpAdmin.Name = "grpAdmin";
            this.grpAdmin.Size = new System.Drawing.Size(398, 240);
            this.grpAdmin.TabIndex = 1;
            this.grpAdmin.TabStop = false;
            this.grpAdmin.Text = "Administrador";
            // 
            // lblListadoAutomoviles
            // 
            this.lblListadoAutomoviles.AutoSize = true;
            this.lblListadoAutomoviles.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblListadoAutomoviles.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblListadoAutomoviles.Location = new System.Drawing.Point(25, 184);
            this.lblListadoAutomoviles.Name = "lblListadoAutomoviles";
            this.lblListadoAutomoviles.Size = new System.Drawing.Size(167, 23);
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
            // Home
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(536, 326);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.grpAdmin);
            this.Name = "Home";
            this.Text = "Home";
            this.Load += new System.EventHandler(this.Home_Load);
            this.grpAdmin.ResumeLayout(false);
            this.grpAdmin.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox grpAdmin;
        private System.Windows.Forms.Label lblAbmChofer;
        private System.Windows.Forms.Label lblAbmCliente;
        private System.Windows.Forms.Label lblRegistrarAutomovil;
        private System.Windows.Forms.Label lblListadoAutomoviles;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Label lblAbmRol;


    }
}