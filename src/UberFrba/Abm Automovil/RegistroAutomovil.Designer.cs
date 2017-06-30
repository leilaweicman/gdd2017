namespace UberFrba.Abm_Automovil
{
    partial class RegistroAutomovil
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
            this.label3 = new System.Windows.Forms.Label();
            this.cmbModelo = new System.Windows.Forms.ComboBox();
            this.cmbMarca = new System.Windows.Forms.ComboBox();
            this.cmbChofer = new System.Windows.Forms.ComboBox();
            this.btnRegistrar = new System.Windows.Forms.Button();
            this.txtRodado = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtLicencia = new System.Windows.Forms.TextBox();
            this.txtPatente = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.lstTurnosTot = new System.Windows.Forms.ListBox();
            this.btnAgregar = new System.Windows.Forms.Button();
            this.btnSacar = new System.Windows.Forms.Button();
            this.lstTurnos = new System.Windows.Forms.ListBox();
            this.groupBoxReg.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBoxReg
            // 
            this.groupBoxReg.Controls.Add(this.lstTurnosTot);
            this.groupBoxReg.Controls.Add(this.btnAgregar);
            this.groupBoxReg.Controls.Add(this.btnSacar);
            this.groupBoxReg.Controls.Add(this.lstTurnos);
            this.groupBoxReg.Controls.Add(this.label3);
            this.groupBoxReg.Controls.Add(this.cmbModelo);
            this.groupBoxReg.Controls.Add(this.cmbMarca);
            this.groupBoxReg.Controls.Add(this.cmbChofer);
            this.groupBoxReg.Controls.Add(this.btnRegistrar);
            this.groupBoxReg.Controls.Add(this.txtRodado);
            this.groupBoxReg.Controls.Add(this.label4);
            this.groupBoxReg.Controls.Add(this.txtLicencia);
            this.groupBoxReg.Controls.Add(this.txtPatente);
            this.groupBoxReg.Controls.Add(this.label12);
            this.groupBoxReg.Controls.Add(this.label2);
            this.groupBoxReg.Controls.Add(this.label7);
            this.groupBoxReg.Controls.Add(this.label6);
            this.groupBoxReg.Controls.Add(this.label1);
            this.groupBoxReg.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold);
            this.groupBoxReg.Location = new System.Drawing.Point(47, 34);
            this.groupBoxReg.Name = "groupBoxReg";
            this.groupBoxReg.Size = new System.Drawing.Size(778, 374);
            this.groupBoxReg.TabIndex = 2;
            this.groupBoxReg.TabStop = false;
            this.groupBoxReg.Text = "Registro";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Verdana", 10F);
            this.label3.Location = new System.Drawing.Point(636, 32);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(58, 17);
            this.label3.TabIndex = 37;
            this.label3.Text = "Turnos";
            // 
            // cmbModelo
            // 
            this.cmbModelo.FormattingEnabled = true;
            this.cmbModelo.Location = new System.Drawing.Point(132, 131);
            this.cmbModelo.Name = "cmbModelo";
            this.cmbModelo.Size = new System.Drawing.Size(166, 26);
            this.cmbModelo.TabIndex = 36;
            // 
            // cmbMarca
            // 
            this.cmbMarca.FormattingEnabled = true;
            this.cmbMarca.Location = new System.Drawing.Point(132, 88);
            this.cmbMarca.Name = "cmbMarca";
            this.cmbMarca.Size = new System.Drawing.Size(166, 26);
            this.cmbMarca.TabIndex = 35;
            this.cmbMarca.SelectedIndexChanged += new System.EventHandler(this.cmbMarca_SelectedIndexChanged);
            // 
            // cmbChofer
            // 
            this.cmbChofer.FormattingEnabled = true;
            this.cmbChofer.Location = new System.Drawing.Point(132, 44);
            this.cmbChofer.Name = "cmbChofer";
            this.cmbChofer.Size = new System.Drawing.Size(166, 26);
            this.cmbChofer.TabIndex = 34;
            // 
            // btnRegistrar
            // 
            this.btnRegistrar.Location = new System.Drawing.Point(473, 333);
            this.btnRegistrar.Name = "btnRegistrar";
            this.btnRegistrar.Size = new System.Drawing.Size(141, 35);
            this.btnRegistrar.TabIndex = 33;
            this.btnRegistrar.Text = "Registrar";
            this.btnRegistrar.UseVisualStyleBackColor = true;
            this.btnRegistrar.Click += new System.EventHandler(this.btnRegistrar_Click);
            // 
            // txtRodado
            // 
            this.txtRodado.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtRodado.Location = new System.Drawing.Point(132, 259);
            this.txtRodado.Name = "txtRodado";
            this.txtRodado.Size = new System.Drawing.Size(131, 24);
            this.txtRodado.TabIndex = 24;
            this.txtRodado.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Verdana", 10F);
            this.label4.Location = new System.Drawing.Point(32, 219);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(61, 17);
            this.label4.TabIndex = 19;
            this.label4.Text = "Licencia";
            // 
            // txtLicencia
            // 
            this.txtLicencia.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtLicencia.Location = new System.Drawing.Point(132, 211);
            this.txtLicencia.Name = "txtLicencia";
            this.txtLicencia.Size = new System.Drawing.Size(154, 24);
            this.txtLicencia.TabIndex = 18;
            // 
            // txtPatente
            // 
            this.txtPatente.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtPatente.Location = new System.Drawing.Point(132, 173);
            this.txtPatente.MaxLength = 10;
            this.txtPatente.Name = "txtPatente";
            this.txtPatente.Size = new System.Drawing.Size(154, 24);
            this.txtPatente.TabIndex = 17;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Verdana", 10F);
            this.label12.Location = new System.Drawing.Point(32, 136);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(57, 17);
            this.label12.TabIndex = 15;
            this.label12.Text = "Modelo";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Verdana", 10F);
            this.label2.Location = new System.Drawing.Point(32, 93);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(48, 17);
            this.label2.TabIndex = 13;
            this.label2.Text = "Marca";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Verdana", 10F);
            this.label7.Location = new System.Drawing.Point(32, 176);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(61, 17);
            this.label7.TabIndex = 6;
            this.label7.Text = "Patente";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Verdana", 10F);
            this.label6.Location = new System.Drawing.Point(32, 262);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(62, 17);
            this.label6.TabIndex = 5;
            this.label6.Text = "Rodado";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Verdana", 10F);
            this.label1.Location = new System.Drawing.Point(32, 49);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(55, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Chofer";
            // 
            // btnCancelar
            // 
            this.btnCancelar.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelar.Location = new System.Drawing.Point(389, 451);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(80, 35);
            this.btnCancelar.TabIndex = 36;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // lstTurnosTot
            // 
            this.lstTurnosTot.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lstTurnosTot.FormattingEnabled = true;
            this.lstTurnosTot.ItemHeight = 18;
            this.lstTurnosTot.Location = new System.Drawing.Point(354, 79);
            this.lstTurnosTot.Name = "lstTurnosTot";
            this.lstTurnosTot.Size = new System.Drawing.Size(145, 166);
            this.lstTurnosTot.TabIndex = 41;
            // 
            // btnAgregar
            // 
            this.btnAgregar.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAgregar.Location = new System.Drawing.Point(533, 100);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size(57, 37);
            this.btnAgregar.TabIndex = 40;
            this.btnAgregar.Text = ">>>";
            this.btnAgregar.UseVisualStyleBackColor = true;
            this.btnAgregar.Click += new System.EventHandler(this.btnAgregar_Click);
            // 
            // btnSacar
            // 
            this.btnSacar.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSacar.Location = new System.Drawing.Point(533, 152);
            this.btnSacar.Name = "btnSacar";
            this.btnSacar.Size = new System.Drawing.Size(57, 37);
            this.btnSacar.TabIndex = 39;
            this.btnSacar.Text = "<<<";
            this.btnSacar.UseVisualStyleBackColor = true;
            this.btnSacar.Click += new System.EventHandler(this.btnSacar_Click_1);
            // 
            // lstTurnos
            // 
            this.lstTurnos.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lstTurnos.FormattingEnabled = true;
            this.lstTurnos.ItemHeight = 18;
            this.lstTurnos.Location = new System.Drawing.Point(627, 79);
            this.lstTurnos.Name = "lstTurnos";
            this.lstTurnos.Size = new System.Drawing.Size(145, 166);
            this.lstTurnos.TabIndex = 38;
            // 
            // RegistroAutomovil
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(857, 515);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.groupBoxReg);
            this.Name = "RegistroAutomovil";
            this.Text = "RegistroAutomovil";
            this.groupBoxReg.ResumeLayout(false);
            this.groupBoxReg.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBoxReg;
        private System.Windows.Forms.ComboBox cmbChofer;
        private System.Windows.Forms.Button btnRegistrar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmbModelo;
        private System.Windows.Forms.ComboBox cmbMarca;
        private System.Windows.Forms.TextBox txtRodado;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtLicencia;
        private System.Windows.Forms.TextBox txtPatente;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ListBox lstTurnosTot;
        private System.Windows.Forms.Button btnAgregar;
        private System.Windows.Forms.Button btnSacar;
        private System.Windows.Forms.ListBox lstTurnos;
    }
}