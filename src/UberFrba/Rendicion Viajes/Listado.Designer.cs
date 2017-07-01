namespace UberFrba.Rendicion_Viajes
{
    partial class Listado
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
            this.dgvRendiciones = new System.Windows.Forms.DataGridView();
            this.Chofer = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NumeroRendicion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Turno = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Fecha = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Total = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBoxReg.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRendiciones)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBoxReg
            // 
            this.groupBoxReg.Controls.Add(this.dgvRendiciones);
            this.groupBoxReg.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold);
            this.groupBoxReg.Location = new System.Drawing.Point(12, 22);
            this.groupBoxReg.Name = "groupBoxReg";
            this.groupBoxReg.Size = new System.Drawing.Size(670, 442);
            this.groupBoxReg.TabIndex = 39;
            this.groupBoxReg.TabStop = false;
            this.groupBoxReg.Text = "Listado";
            // 
            // btnCancelar
            // 
            this.btnCancelar.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelar.Location = new System.Drawing.Point(587, 481);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(80, 35);
            this.btnCancelar.TabIndex = 40;
            this.btnCancelar.Text = "Volver";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // dgvRendiciones
            // 
            this.dgvRendiciones.AllowUserToAddRows = false;
            this.dgvRendiciones.AllowUserToDeleteRows = false;
            this.dgvRendiciones.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvRendiciones.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvRendiciones.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Chofer,
            this.NumeroRendicion,
            this.Turno,
            this.Fecha,
            this.Total});
            this.dgvRendiciones.Location = new System.Drawing.Point(15, 26);
            this.dgvRendiciones.Name = "dgvRendiciones";
            this.dgvRendiciones.ReadOnly = true;
            this.dgvRendiciones.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvRendiciones.Size = new System.Drawing.Size(640, 400);
            this.dgvRendiciones.TabIndex = 43;
            // 
            // Chofer
            // 
            this.Chofer.HeaderText = "Chofer";
            this.Chofer.Name = "Chofer";
            this.Chofer.ReadOnly = true;
            // 
            // NumeroRendicion
            // 
            this.NumeroRendicion.HeaderText = "NumeroRendicion";
            this.NumeroRendicion.Name = "NumeroRendicion";
            this.NumeroRendicion.ReadOnly = true;
            // 
            // Turno
            // 
            this.Turno.HeaderText = "Turno";
            this.Turno.Name = "Turno";
            this.Turno.ReadOnly = true;
            // 
            // Fecha
            // 
            this.Fecha.HeaderText = "Fecha";
            this.Fecha.Name = "Fecha";
            this.Fecha.ReadOnly = true;
            // 
            // Total
            // 
            this.Total.HeaderText = "Total";
            this.Total.Name = "Total";
            this.Total.ReadOnly = true;
            // 
            // Listado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(707, 528);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.groupBoxReg);
            this.Name = "Listado";
            this.Text = "Listado";
            this.groupBoxReg.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvRendiciones)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBoxReg;
        private System.Windows.Forms.DataGridView dgvRendiciones;
        private System.Windows.Forms.DataGridViewTextBoxColumn Chofer;
        private System.Windows.Forms.DataGridViewTextBoxColumn NumeroRendicion;
        private System.Windows.Forms.DataGridViewTextBoxColumn Turno;
        private System.Windows.Forms.DataGridViewTextBoxColumn Fecha;
        private System.Windows.Forms.DataGridViewTextBoxColumn Total;
        private System.Windows.Forms.Button btnCancelar;
    }
}