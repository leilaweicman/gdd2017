namespace UberFrba.Facturacion
{
    partial class FacturaDetalle
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
            this.groupBoxReg = new System.Windows.Forms.GroupBox();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.dgvViajes = new System.Windows.Forms.DataGridView();
            this.lblTotal = new System.Windows.Forms.Label();
            this.lblTotalFact = new System.Windows.Forms.Label();
            this.btnConfirmarRendicion = new System.Windows.Forms.Button();
            this.lblCliente = new System.Windows.Forms.Label();
            this.lblFechaInicio = new System.Windows.Forms.Label();
            this.lblFechaFin = new System.Windows.Forms.Label();
            this.idViaje = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Chofer = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Automovil = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Turno = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Inicio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Fin = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Kilometros = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Precio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBoxReg.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvViajes)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBoxReg
            // 
            this.groupBoxReg.Controls.Add(this.lblFechaFin);
            this.groupBoxReg.Controls.Add(this.lblFechaInicio);
            this.groupBoxReg.Controls.Add(this.lblCliente);
            this.groupBoxReg.Controls.Add(this.btnCancelar);
            this.groupBoxReg.Controls.Add(this.dgvViajes);
            this.groupBoxReg.Controls.Add(this.lblTotal);
            this.groupBoxReg.Controls.Add(this.lblTotalFact);
            this.groupBoxReg.Controls.Add(this.btnConfirmarRendicion);
            this.groupBoxReg.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold);
            this.groupBoxReg.Location = new System.Drawing.Point(24, 23);
            this.groupBoxReg.Name = "groupBoxReg";
            this.groupBoxReg.Size = new System.Drawing.Size(1015, 408);
            this.groupBoxReg.TabIndex = 39;
            this.groupBoxReg.TabStop = false;
            this.groupBoxReg.Text = "Detalle";
            this.groupBoxReg.Enter += new System.EventHandler(this.groupBoxReg_Enter);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(847, 329);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(141, 37);
            this.btnCancelar.TabIndex = 44;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            // 
            // dgvViajes
            // 
            this.dgvViajes.AllowUserToAddRows = false;
            this.dgvViajes.AllowUserToDeleteRows = false;
            this.dgvViajes.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvViajes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvViajes.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idViaje,
            this.Chofer,
            this.Automovil,
            this.Turno,
            this.Inicio,
            this.Fin,
            this.Kilometros,
            this.Precio});
            this.dgvViajes.Location = new System.Drawing.Point(27, 103);
            this.dgvViajes.Name = "dgvViajes";
            this.dgvViajes.ReadOnly = true;
            this.dgvViajes.RowTemplate.ReadOnly = true;
            this.dgvViajes.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvViajes.Size = new System.Drawing.Size(961, 189);
            this.dgvViajes.TabIndex = 43;
            // 
            // lblTotal
            // 
            this.lblTotal.AutoSize = true;
            this.lblTotal.Font = new System.Drawing.Font("Verdana", 10F);
            this.lblTotal.Location = new System.Drawing.Point(112, 45);
            this.lblTotal.Name = "lblTotal";
            this.lblTotal.Size = new System.Drawing.Size(0, 17);
            this.lblTotal.TabIndex = 42;
            // 
            // lblTotalFact
            // 
            this.lblTotalFact.AutoSize = true;
            this.lblTotalFact.Font = new System.Drawing.Font("Verdana", 10F);
            this.lblTotalFact.Location = new System.Drawing.Point(775, 45);
            this.lblTotalFact.Name = "lblTotalFact";
            this.lblTotalFact.Size = new System.Drawing.Size(61, 17);
            this.lblTotalFact.TabIndex = 39;
            this.lblTotalFact.Text = "Total: $";
            this.lblTotalFact.Click += new System.EventHandler(this.label2_Click);
            // 
            // btnConfirmarRendicion
            // 
            this.btnConfirmarRendicion.Location = new System.Drawing.Point(651, 329);
            this.btnConfirmarRendicion.Name = "btnConfirmarRendicion";
            this.btnConfirmarRendicion.Size = new System.Drawing.Size(185, 37);
            this.btnConfirmarRendicion.TabIndex = 33;
            this.btnConfirmarRendicion.Text = "Generar factura";
            this.btnConfirmarRendicion.UseVisualStyleBackColor = true;
            // 
            // lblCliente
            // 
            this.lblCliente.AutoSize = true;
            this.lblCliente.Font = new System.Drawing.Font("Verdana", 10F);
            this.lblCliente.Location = new System.Drawing.Point(24, 45);
            this.lblCliente.Name = "lblCliente";
            this.lblCliente.Size = new System.Drawing.Size(66, 17);
            this.lblCliente.TabIndex = 45;
            this.lblCliente.Text = "Cliente: ";
            // 
            // lblFechaInicio
            // 
            this.lblFechaInicio.AutoSize = true;
            this.lblFechaInicio.Font = new System.Drawing.Font("Verdana", 10F);
            this.lblFechaInicio.Location = new System.Drawing.Point(235, 45);
            this.lblFechaInicio.Name = "lblFechaInicio";
            this.lblFechaInicio.Size = new System.Drawing.Size(98, 17);
            this.lblFechaInicio.TabIndex = 46;
            this.lblFechaInicio.Text = "Fecha inicio: ";
            // 
            // lblFechaFin
            // 
            this.lblFechaFin.AutoSize = true;
            this.lblFechaFin.Font = new System.Drawing.Font("Verdana", 10F);
            this.lblFechaFin.Location = new System.Drawing.Point(521, 45);
            this.lblFechaFin.Name = "lblFechaFin";
            this.lblFechaFin.Size = new System.Drawing.Size(76, 17);
            this.lblFechaFin.TabIndex = 47;
            this.lblFechaFin.Text = "Fecha fin:";
            // 
            // idViaje
            // 
            this.idViaje.HeaderText = "idViaje";
            this.idViaje.Name = "idViaje";
            this.idViaje.ReadOnly = true;
            this.idViaje.Visible = false;
            // 
            // Chofer
            // 
            this.Chofer.HeaderText = "Chofer";
            this.Chofer.Name = "Chofer";
            this.Chofer.ReadOnly = true;
            // 
            // Automovil
            // 
            this.Automovil.HeaderText = "Automovil";
            this.Automovil.Name = "Automovil";
            this.Automovil.ReadOnly = true;
            // 
            // Turno
            // 
            this.Turno.HeaderText = "Turno";
            this.Turno.Name = "Turno";
            this.Turno.ReadOnly = true;
            // 
            // Inicio
            // 
            this.Inicio.HeaderText = "Fecha inicio";
            this.Inicio.Name = "Inicio";
            this.Inicio.ReadOnly = true;
            // 
            // Fin
            // 
            this.Fin.HeaderText = "Fecha fin";
            this.Fin.Name = "Fin";
            this.Fin.ReadOnly = true;
            // 
            // Kilometros
            // 
            this.Kilometros.HeaderText = "Kilometros";
            this.Kilometros.Name = "Kilometros";
            this.Kilometros.ReadOnly = true;
            // 
            // Precio
            // 
            this.Precio.HeaderText = "Precio";
            this.Precio.Name = "Precio";
            this.Precio.ReadOnly = true;
            // 
            // FacturaDetalle
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1066, 458);
            this.Controls.Add(this.groupBoxReg);
            this.Name = "FacturaDetalle";
            this.Text = "FacturaDetalle";
            this.Load += new System.EventHandler(this.FacturaDetalle_Load);
            this.groupBoxReg.ResumeLayout(false);
            this.groupBoxReg.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvViajes)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBoxReg;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.DataGridView dgvViajes;
        private System.Windows.Forms.Label lblTotal;
        private System.Windows.Forms.Label lblTotalFact;
        private System.Windows.Forms.Button btnConfirmarRendicion;
        private System.Windows.Forms.Label lblFechaFin;
        private System.Windows.Forms.Label lblFechaInicio;
        private System.Windows.Forms.Label lblCliente;
        private System.Windows.Forms.DataGridViewTextBoxColumn idViaje;
        private System.Windows.Forms.DataGridViewTextBoxColumn Chofer;
        private System.Windows.Forms.DataGridViewTextBoxColumn Automovil;
        private System.Windows.Forms.DataGridViewTextBoxColumn Turno;
        private System.Windows.Forms.DataGridViewTextBoxColumn Inicio;
        private System.Windows.Forms.DataGridViewTextBoxColumn Fin;
        private System.Windows.Forms.DataGridViewTextBoxColumn Kilometros;
        private System.Windows.Forms.DataGridViewTextBoxColumn Precio;
    }
}