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
            this.SuspendLayout();
            // 
            // lblIniciarSesion
            // 
            this.lblIniciarSesion.AutoSize = true;
            this.lblIniciarSesion.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblIniciarSesion.ForeColor = System.Drawing.SystemColors.Highlight;
            this.lblIniciarSesion.Location = new System.Drawing.Point(71, 100);
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
            // Inicial
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.ClientSize = new System.Drawing.Size(312, 304);
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
    }
}