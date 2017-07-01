namespace UberFrba.Registro_Viajes
{
    partial class RegistroViaje
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
            this.grpTurnos = new System.Windows.Forms.GroupBox();
            this.dtpFechaFin = new System.Windows.Forms.DateTimePicker();
            this.dtpFechaInicio = new System.Windows.Forms.DateTimePicker();
            this.lblCliente = new System.Windows.Forms.Label();
            this.cmbCliente = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtKilometros = new System.Windows.Forms.TextBox();
            this.lblKilometros = new System.Windows.Forms.Label();
            this.cmbTurno = new System.Windows.Forms.ComboBox();
            this.lblTurno = new System.Windows.Forms.Label();
            this.lblChofer = new System.Windows.Forms.Label();
            this.cmbChofer = new System.Windows.Forms.ComboBox();
            this.btnRegistrar = new System.Windows.Forms.Button();
            this.txtAutomovil = new System.Windows.Forms.TextBox();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.lbAutomovil = new System.Windows.Forms.Label();
            this.grpTurnos.SuspendLayout();
            this.SuspendLayout();
            // 
            // grpTurnos
            // 
            this.grpTurnos.Controls.Add(this.dtpFechaFin);
            this.grpTurnos.Controls.Add(this.dtpFechaInicio);
            this.grpTurnos.Controls.Add(this.lblCliente);
            this.grpTurnos.Controls.Add(this.cmbCliente);
            this.grpTurnos.Controls.Add(this.label2);
            this.grpTurnos.Controls.Add(this.label1);
            this.grpTurnos.Controls.Add(this.txtKilometros);
            this.grpTurnos.Controls.Add(this.lblKilometros);
            this.grpTurnos.Controls.Add(this.cmbTurno);
            this.grpTurnos.Controls.Add(this.lblTurno);
            this.grpTurnos.Controls.Add(this.lblChofer);
            this.grpTurnos.Controls.Add(this.cmbChofer);
            this.grpTurnos.Controls.Add(this.btnRegistrar);
            this.grpTurnos.Controls.Add(this.txtAutomovil);
            this.grpTurnos.Controls.Add(this.btnCancelar);
            this.grpTurnos.Controls.Add(this.lbAutomovil);
            this.grpTurnos.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grpTurnos.Location = new System.Drawing.Point(43, 12);
            this.grpTurnos.Name = "grpTurnos";
            this.grpTurnos.Size = new System.Drawing.Size(596, 576);
            this.grpTurnos.TabIndex = 2;
            this.grpTurnos.TabStop = false;
            this.grpTurnos.Text = "Viaje";
            // 
            // dtpFechaFin
            // 
            this.dtpFechaFin.CustomFormat = "dd/MM/yyyy hh:mm:ss";
            this.dtpFechaFin.Location = new System.Drawing.Point(19, 392);
            this.dtpFechaFin.MinDate = new System.DateTime(2000, 1, 1, 0, 0, 0, 0);
            this.dtpFechaFin.Name = "dtpFechaFin";
            this.dtpFechaFin.Size = new System.Drawing.Size(243, 27);
            this.dtpFechaFin.TabIndex = 60;
            // 
            // dtpFechaInicio
            // 
            this.dtpFechaInicio.Location = new System.Drawing.Point(19, 322);
            this.dtpFechaInicio.MaxDate = new System.DateTime(9888, 12, 31, 0, 0, 0, 0);
            this.dtpFechaInicio.MinDate = new System.DateTime(2000, 1, 1, 0, 0, 0, 0);
            this.dtpFechaInicio.Name = "dtpFechaInicio";
            this.dtpFechaInicio.Size = new System.Drawing.Size(243, 27);
            this.dtpFechaInicio.TabIndex = 59;
            // 
            // lblCliente
            // 
            this.lblCliente.AutoSize = true;
            this.lblCliente.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCliente.Location = new System.Drawing.Point(16, 443);
            this.lblCliente.Name = "lblCliente";
            this.lblCliente.Size = new System.Drawing.Size(58, 18);
            this.lblCliente.TabIndex = 58;
            this.lblCliente.Text = "Cliente";
            // 
            // cmbCliente
            // 
            this.cmbCliente.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbCliente.FormattingEnabled = true;
            this.cmbCliente.Location = new System.Drawing.Point(19, 464);
            this.cmbCliente.Name = "cmbCliente";
            this.cmbCliente.Size = new System.Drawing.Size(173, 26);
            this.cmbCliente.TabIndex = 57;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(16, 371);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 18);
            this.label2.TabIndex = 55;
            this.label2.Text = "FechaFin";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(16, 301);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(95, 18);
            this.label1.TabIndex = 53;
            this.label1.Text = "Fecha Inicio";
            // 
            // txtKilometros
            // 
            this.txtKilometros.Location = new System.Drawing.Point(19, 251);
            this.txtKilometros.Name = "txtKilometros";
            this.txtKilometros.Size = new System.Drawing.Size(173, 27);
            this.txtKilometros.TabIndex = 52;
            // 
            // lblKilometros
            // 
            this.lblKilometros.AutoSize = true;
            this.lblKilometros.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblKilometros.Location = new System.Drawing.Point(16, 230);
            this.lblKilometros.Name = "lblKilometros";
            this.lblKilometros.Size = new System.Drawing.Size(88, 18);
            this.lblKilometros.TabIndex = 51;
            this.lblKilometros.Text = "Kilómetros";
            // 
            // cmbTurno
            // 
            this.cmbTurno.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbTurno.FormattingEnabled = true;
            this.cmbTurno.Location = new System.Drawing.Point(19, 182);
            this.cmbTurno.Name = "cmbTurno";
            this.cmbTurno.Size = new System.Drawing.Size(173, 26);
            this.cmbTurno.TabIndex = 50;
            // 
            // lblTurno
            // 
            this.lblTurno.AutoSize = true;
            this.lblTurno.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTurno.Location = new System.Drawing.Point(16, 161);
            this.lblTurno.Name = "lblTurno";
            this.lblTurno.Size = new System.Drawing.Size(51, 18);
            this.lblTurno.TabIndex = 49;
            this.lblTurno.Text = "Turno";
            // 
            // lblChofer
            // 
            this.lblChofer.AutoSize = true;
            this.lblChofer.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblChofer.Location = new System.Drawing.Point(16, 34);
            this.lblChofer.Name = "lblChofer";
            this.lblChofer.Size = new System.Drawing.Size(58, 18);
            this.lblChofer.TabIndex = 48;
            this.lblChofer.Text = "Chofer";
            // 
            // cmbChofer
            // 
            this.cmbChofer.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbChofer.FormattingEnabled = true;
            this.cmbChofer.Location = new System.Drawing.Point(19, 55);
            this.cmbChofer.Name = "cmbChofer";
            this.cmbChofer.Size = new System.Drawing.Size(173, 26);
            this.cmbChofer.TabIndex = 47;
            this.cmbChofer.SelectedIndexChanged += new System.EventHandler(this.cmbChofer_SelectedIndexChanged);
            // 
            // btnRegistrar
            // 
            this.btnRegistrar.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRegistrar.Location = new System.Drawing.Point(19, 524);
            this.btnRegistrar.Name = "btnRegistrar";
            this.btnRegistrar.Size = new System.Drawing.Size(103, 35);
            this.btnRegistrar.TabIndex = 46;
            this.btnRegistrar.Text = "Registrar";
            this.btnRegistrar.UseVisualStyleBackColor = true;
            this.btnRegistrar.Click += new System.EventHandler(this.btnRegistrar_Click);
            // 
            // txtAutomovil
            // 
            this.txtAutomovil.Location = new System.Drawing.Point(19, 116);
            this.txtAutomovil.Name = "txtAutomovil";
            this.txtAutomovil.Size = new System.Drawing.Size(173, 27);
            this.txtAutomovil.TabIndex = 12;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelar.Location = new System.Drawing.Point(148, 524);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(103, 35);
            this.btnCancelar.TabIndex = 45;
            this.btnCancelar.Text = "Cerrar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // lbAutomovil
            // 
            this.lbAutomovil.AutoSize = true;
            this.lbAutomovil.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbAutomovil.Location = new System.Drawing.Point(16, 95);
            this.lbAutomovil.Name = "lbAutomovil";
            this.lbAutomovil.Size = new System.Drawing.Size(83, 18);
            this.lbAutomovil.TabIndex = 7;
            this.lbAutomovil.Text = "Automovil";
            // 
            // RegistroViaje
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(653, 609);
            this.Controls.Add(this.grpTurnos);
            this.Name = "RegistroViaje";
            this.Text = "RegistroViaje";
            this.Load += new System.EventHandler(this.RegistroViaje_Load);
            this.grpTurnos.ResumeLayout(false);
            this.grpTurnos.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox grpTurnos;
        private System.Windows.Forms.Label lblChofer;
        private System.Windows.Forms.ComboBox cmbChofer;
        private System.Windows.Forms.Button btnRegistrar;
        private System.Windows.Forms.TextBox txtAutomovil;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Label lbAutomovil;
        private System.Windows.Forms.Label lblCliente;
        private System.Windows.Forms.ComboBox cmbCliente;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtKilometros;
        private System.Windows.Forms.Label lblKilometros;
        private System.Windows.Forms.ComboBox cmbTurno;
        private System.Windows.Forms.Label lblTurno;
        private System.Windows.Forms.DateTimePicker dtpFechaFin;
        private System.Windows.Forms.DateTimePicker dtpFechaInicio;
    }
}