namespace UberFrba.Rendicion_Viajes
{
    partial class Detalle
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
            this.dgvRendicionesDetalle = new System.Windows.Forms.DataGridView();
            this.lblTotal = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnConfirmarRendicion = new System.Windows.Forms.Button();
            this.Cliente = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.FechaFin = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TotalViaje = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TotalChofer = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBoxReg.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRendicionesDetalle)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBoxReg
            // 
            this.groupBoxReg.Controls.Add(this.dgvRendicionesDetalle);
            this.groupBoxReg.Controls.Add(this.lblTotal);
            this.groupBoxReg.Controls.Add(this.label2);
            this.groupBoxReg.Controls.Add(this.btnConfirmarRendicion);
            this.groupBoxReg.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold);
            this.groupBoxReg.Location = new System.Drawing.Point(33, 44);
            this.groupBoxReg.Name = "groupBoxReg";
            this.groupBoxReg.Size = new System.Drawing.Size(774, 434);
            this.groupBoxReg.TabIndex = 38;
            this.groupBoxReg.TabStop = false;
            this.groupBoxReg.Text = "Detalle";
            // 
            // dgvRendicionesDetalle
            // 
            this.dgvRendicionesDetalle.AllowUserToAddRows = false;
            this.dgvRendicionesDetalle.AllowUserToDeleteRows = false;
            this.dgvRendicionesDetalle.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvRendicionesDetalle.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Cliente,
            this.FechaFin,
            this.TotalViaje,
            this.TotalChofer});
            this.dgvRendicionesDetalle.Location = new System.Drawing.Point(27, 103);
            this.dgvRendicionesDetalle.Name = "dgvRendicionesDetalle";
            this.dgvRendicionesDetalle.ReadOnly = true;
            this.dgvRendicionesDetalle.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvRendicionesDetalle.Size = new System.Drawing.Size(454, 189);
            this.dgvRendicionesDetalle.TabIndex = 43;
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
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Verdana", 10F);
            this.label2.Location = new System.Drawing.Point(24, 45);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(63, 17);
            this.label2.TabIndex = 39;
            this.label2.Text = "Total: $";
            // 
            // btnConfirmarRendicion
            // 
            this.btnConfirmarRendicion.Location = new System.Drawing.Point(447, 342);
            this.btnConfirmarRendicion.Name = "btnConfirmarRendicion";
            this.btnConfirmarRendicion.Size = new System.Drawing.Size(141, 67);
            this.btnConfirmarRendicion.TabIndex = 33;
            this.btnConfirmarRendicion.Text = "Confirmar Rendicion";
            this.btnConfirmarRendicion.UseVisualStyleBackColor = true;
            this.btnConfirmarRendicion.Click += new System.EventHandler(this.btnConfirmarRendicion_Click);
            // 
            // Cliente
            // 
            this.Cliente.HeaderText = "Cliente";
            this.Cliente.Name = "Cliente";
            this.Cliente.ReadOnly = true;
            // 
            // FechaFin
            // 
            this.FechaFin.HeaderText = "FechaFin";
            this.FechaFin.Name = "FechaFin";
            this.FechaFin.ReadOnly = true;
            // 
            // TotalViaje
            // 
            this.TotalViaje.HeaderText = "TotalViaje";
            this.TotalViaje.Name = "TotalViaje";
            this.TotalViaje.ReadOnly = true;
            // 
            // TotalChofer
            // 
            this.TotalChofer.HeaderText = "TotalChofer";
            this.TotalChofer.Name = "TotalChofer";
            this.TotalChofer.ReadOnly = true;
            // 
            // Detalle
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(819, 490);
            this.Controls.Add(this.groupBoxReg);
            this.Name = "Detalle";
            this.Text = "Detalle";
            this.groupBoxReg.ResumeLayout(false);
            this.groupBoxReg.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRendicionesDetalle)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBoxReg;
        private System.Windows.Forms.Label lblTotal;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnConfirmarRendicion;
        private System.Windows.Forms.DataGridView dgvRendicionesDetalle;
        private System.Windows.Forms.DataGridViewTextBoxColumn Cliente;
        private System.Windows.Forms.DataGridViewTextBoxColumn FechaFin;
        private System.Windows.Forms.DataGridViewTextBoxColumn TotalViaje;
        private System.Windows.Forms.DataGridViewTextBoxColumn TotalChofer;

    }
}