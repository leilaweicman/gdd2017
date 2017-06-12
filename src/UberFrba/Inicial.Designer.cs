namespace UberFrba
{
    partial class Inicial
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
            this.lblIniciarSesion = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lblRegistrarUsuario = new System.Windows.Forms.Label();
            this.lblRegistrarAutomovil = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lblListadoAutomoviles = new System.Windows.Forms.Label();
            this.lblAbmChofer = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // lblIniciarSesion
            // 
            this.lblIniciarSesion.AutoSize = true;
            this.lblIniciarSesion.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblIniciarSesion.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblIniciarSesion.Location = new System.Drawing.Point(71, 65);
            this.lblIniciarSesion.Name = "lblIniciarSesion";
            this.lblIniciarSesion.Size = new System.Drawing.Size(142, 23);
            this.lblIniciarSesion.TabIndex = 0;
            this.lblIniciarSesion.Text = "Iniciar Sesión";
            this.lblIniciarSesion.Click += new System.EventHandler(this.lblIniciarSesion_Click);
            // 
            // label2
            // 
            this.label2.Location = new System.Drawing.Point(0, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(100, 23);
            this.label2.TabIndex = 0;
            // 
            // lblRegistrarUsuario
            // 
            this.lblRegistrarUsuario.AutoSize = true;
            this.lblRegistrarUsuario.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRegistrarUsuario.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblRegistrarUsuario.Location = new System.Drawing.Point(71, 149);
            this.lblRegistrarUsuario.Name = "lblRegistrarUsuario";
            this.lblRegistrarUsuario.Size = new System.Drawing.Size(125, 23);
            this.lblRegistrarUsuario.TabIndex = 1;
            this.lblRegistrarUsuario.Text = "Registrarme";
            this.lblRegistrarUsuario.Click += new System.EventHandler(this.lblRegistrarUsuario_Click);
            // 
            // lblRegistrarAutomovil
            // 
            this.lblRegistrarAutomovil.AutoSize = true;
            this.lblRegistrarAutomovil.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRegistrarAutomovil.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblRegistrarAutomovil.Location = new System.Drawing.Point(71, 195);
            this.lblRegistrarAutomovil.Name = "lblRegistrarAutomovil";
            this.lblRegistrarAutomovil.Size = new System.Drawing.Size(200, 23);
            this.lblRegistrarAutomovil.TabIndex = 2;
            this.lblRegistrarAutomovil.Text = "Registrar Automovil";
            this.lblRegistrarAutomovil.Click += new System.EventHandler(this.lblRegistrarAutomovil_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.Highlight;
            this.label1.Location = new System.Drawing.Point(27, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(81, 23);
            this.label1.TabIndex = 3;
            this.label1.Text = "ABM cli";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // lblListadoAutomoviles
            // 
            this.lblListadoAutomoviles.AutoSize = true;
            this.lblListadoAutomoviles.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblListadoAutomoviles.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblListadoAutomoviles.Location = new System.Drawing.Point(56, 227);
            this.lblListadoAutomoviles.Name = "lblListadoAutomoviles";
            this.lblListadoAutomoviles.Size = new System.Drawing.Size(166, 23);
            this.lblListadoAutomoviles.TabIndex = 4;
            this.lblListadoAutomoviles.Text = "Ver Automoviles";
            this.lblListadoAutomoviles.Click += new System.EventHandler(this.lblListadoAutomoviles_Click);
            // 
            // lblAbmChofer
            // 
            this.lblAbmChofer.AutoSize = true;
            this.lblAbmChofer.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAbmChofer.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblAbmChofer.Location = new System.Drawing.Point(166, 23);
            this.lblAbmChofer.Name = "lblAbmChofer";
            this.lblAbmChofer.Size = new System.Drawing.Size(119, 23);
            this.lblAbmChofer.TabIndex = 5;
            this.lblAbmChofer.Text = "ABM chofer";
            this.lblAbmChofer.Click += new System.EventHandler(this.lblAbmChofer_Click);
            // 
            // Inicial
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.ClientSize = new System.Drawing.Size(312, 304);
            this.Controls.Add(this.lblAbmChofer);
            this.Controls.Add(this.lblListadoAutomoviles);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lblRegistrarAutomovil);
            this.Controls.Add(this.lblRegistrarUsuario);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.lblIniciarSesion);
            this.Name = "Inicial";
            this.Text = "Inicial";
            this.Load += new System.EventHandler(this.Inicial_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblIniciarSesion;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblRegistrarUsuario;
        private System.Windows.Forms.Label lblRegistrarAutomovil;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblListadoAutomoviles;
        private System.Windows.Forms.Label lblAbmChofer;
    }
}