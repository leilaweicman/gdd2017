﻿namespace UberFrba.Registro_usuario
{
    partial class RegistroUsuario
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
            this.gpbDatosPersonales = new System.Windows.Forms.GroupBox();
            this.dtpFechaNac = new System.Windows.Forms.DateTimePicker();
            this.chkHabilitado = new System.Windows.Forms.CheckBox();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.txtLocalidad = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtCP = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtApellido = new System.Windows.Forms.TextBox();
            this.txtPiso = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtUsername = new System.Windows.Forms.TextBox();
            this.txtDepto = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.txtDni = new System.Windows.Forms.TextBox();
            this.txtCalle = new System.Windows.Forms.TextBox();
            this.txtContrasenia = new System.Windows.Forms.TextBox();
            this.label14 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.txtConfContrasenia = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtTel = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtMail = new System.Windows.Forms.TextBox();
            this.btnRegistrar = new System.Windows.Forms.Button();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.gpbTipoUsuario = new System.Windows.Forms.GroupBox();
            this.chkChofer = new System.Windows.Forms.CheckBox();
            this.chkCliente = new System.Windows.Forms.CheckBox();
            this.groupBoxReg.SuspendLayout();
            this.gpbDatosPersonales.SuspendLayout();
            this.gpbTipoUsuario.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBoxReg
            // 
            this.groupBoxReg.Controls.Add(this.gpbDatosPersonales);
            this.groupBoxReg.Controls.Add(this.btnRegistrar);
            this.groupBoxReg.Controls.Add(this.btnCancelar);
            this.groupBoxReg.Controls.Add(this.gpbTipoUsuario);
            this.groupBoxReg.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold);
            this.groupBoxReg.Location = new System.Drawing.Point(22, 23);
            this.groupBoxReg.Name = "groupBoxReg";
            this.groupBoxReg.Size = new System.Drawing.Size(745, 521);
            this.groupBoxReg.TabIndex = 0;
            this.groupBoxReg.TabStop = false;
            this.groupBoxReg.Text = "Registro";
            // 
            // gpbDatosPersonales
            // 
            this.gpbDatosPersonales.Controls.Add(this.dtpFechaNac);
            this.gpbDatosPersonales.Controls.Add(this.chkHabilitado);
            this.gpbDatosPersonales.Controls.Add(this.txtNombre);
            this.gpbDatosPersonales.Controls.Add(this.txtLocalidad);
            this.gpbDatosPersonales.Controls.Add(this.label1);
            this.gpbDatosPersonales.Controls.Add(this.txtCP);
            this.gpbDatosPersonales.Controls.Add(this.label6);
            this.gpbDatosPersonales.Controls.Add(this.label10);
            this.gpbDatosPersonales.Controls.Add(this.label7);
            this.gpbDatosPersonales.Controls.Add(this.label9);
            this.gpbDatosPersonales.Controls.Add(this.label2);
            this.gpbDatosPersonales.Controls.Add(this.txtApellido);
            this.gpbDatosPersonales.Controls.Add(this.txtPiso);
            this.gpbDatosPersonales.Controls.Add(this.label12);
            this.gpbDatosPersonales.Controls.Add(this.label5);
            this.gpbDatosPersonales.Controls.Add(this.txtUsername);
            this.gpbDatosPersonales.Controls.Add(this.txtDepto);
            this.gpbDatosPersonales.Controls.Add(this.label13);
            this.gpbDatosPersonales.Controls.Add(this.txtDni);
            this.gpbDatosPersonales.Controls.Add(this.txtCalle);
            this.gpbDatosPersonales.Controls.Add(this.txtContrasenia);
            this.gpbDatosPersonales.Controls.Add(this.label14);
            this.gpbDatosPersonales.Controls.Add(this.label11);
            this.gpbDatosPersonales.Controls.Add(this.txtConfContrasenia);
            this.gpbDatosPersonales.Controls.Add(this.label4);
            this.gpbDatosPersonales.Controls.Add(this.label3);
            this.gpbDatosPersonales.Controls.Add(this.txtTel);
            this.gpbDatosPersonales.Controls.Add(this.label8);
            this.gpbDatosPersonales.Controls.Add(this.txtMail);
            this.gpbDatosPersonales.Enabled = false;
            this.gpbDatosPersonales.Location = new System.Drawing.Point(18, 98);
            this.gpbDatosPersonales.Name = "gpbDatosPersonales";
            this.gpbDatosPersonales.Size = new System.Drawing.Size(705, 353);
            this.gpbDatosPersonales.TabIndex = 1;
            this.gpbDatosPersonales.TabStop = false;
            this.gpbDatosPersonales.Text = "Datos personales";
            // 
            // dtpFechaNac
            // 
            this.dtpFechaNac.CalendarFont = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpFechaNac.Font = new System.Drawing.Font("Verdana", 10F);
            this.dtpFechaNac.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpFechaNac.Location = new System.Drawing.Point(176, 173);
            this.dtpFechaNac.Name = "dtpFechaNac";
            this.dtpFechaNac.Size = new System.Drawing.Size(154, 24);
            this.dtpFechaNac.TabIndex = 9;
            // 
            // chkHabilitado
            // 
            this.chkHabilitado.AutoSize = true;
            this.chkHabilitado.Font = new System.Drawing.Font("Verdana", 11F);
            this.chkHabilitado.Location = new System.Drawing.Point(508, 306);
            this.chkHabilitado.Name = "chkHabilitado";
            this.chkHabilitado.Size = new System.Drawing.Size(99, 22);
            this.chkHabilitado.TabIndex = 39;
            this.chkHabilitado.Text = "Habilitado";
            this.chkHabilitado.UseVisualStyleBackColor = true;
            this.chkHabilitado.Visible = false;
            // 
            // txtNombre
            // 
            this.txtNombre.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtNombre.Location = new System.Drawing.Point(100, 32);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(230, 24);
            this.txtNombre.TabIndex = 3;
            // 
            // txtLocalidad
            // 
            this.txtLocalidad.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtLocalidad.Location = new System.Drawing.Point(129, 306);
            this.txtLocalidad.Name = "txtLocalidad";
            this.txtLocalidad.Size = new System.Drawing.Size(198, 24);
            this.txtLocalidad.TabIndex = 16;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Verdana", 10F);
            this.label1.Location = new System.Drawing.Point(10, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nombre";
            // 
            // txtCP
            // 
            this.txtCP.Enabled = false;
            this.txtCP.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtCP.Location = new System.Drawing.Point(637, 265);
            this.txtCP.MaxLength = 4;
            this.txtCP.Name = "txtCP";
            this.txtCP.Size = new System.Drawing.Size(57, 24);
            this.txtCP.TabIndex = 15;
            this.txtCP.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Verdana", 10F);
            this.label6.Location = new System.Drawing.Point(10, 176);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(150, 17);
            this.label6.TabIndex = 5;
            this.label6.Text = "Fecha de nacimiento";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Verdana", 10F);
            this.label10.Location = new System.Drawing.Point(592, 268);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(41, 17);
            this.label10.TabIndex = 38;
            this.label10.Text = "C. P.";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Verdana", 10F);
            this.label7.Location = new System.Drawing.Point(9, 126);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(89, 17);
            this.label7.TabIndex = 6;
            this.label7.Text = "Contraseña";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Verdana", 10F);
            this.label9.Location = new System.Drawing.Point(10, 309);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(72, 17);
            this.label9.TabIndex = 36;
            this.label9.Text = "Localidad";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Verdana", 10F);
            this.label2.Location = new System.Drawing.Point(374, 35);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(62, 17);
            this.label2.TabIndex = 13;
            this.label2.Text = "Apellido";
            // 
            // txtApellido
            // 
            this.txtApellido.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtApellido.Location = new System.Drawing.Point(464, 30);
            this.txtApellido.Name = "txtApellido";
            this.txtApellido.Size = new System.Drawing.Size(230, 24);
            this.txtApellido.TabIndex = 4;
            // 
            // txtPiso
            // 
            this.txtPiso.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtPiso.Location = new System.Drawing.Point(537, 265);
            this.txtPiso.MaxLength = 2;
            this.txtPiso.Name = "txtPiso";
            this.txtPiso.Size = new System.Drawing.Size(44, 24);
            this.txtPiso.TabIndex = 14;
            this.txtPiso.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Verdana", 10F);
            this.label12.Location = new System.Drawing.Point(9, 80);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(34, 17);
            this.label12.TabIndex = 15;
            this.label12.Text = "DNI";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Verdana", 10F);
            this.label5.Location = new System.Drawing.Point(480, 270);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(36, 17);
            this.label5.TabIndex = 34;
            this.label5.Text = "Piso";
            // 
            // txtUsername
            // 
            this.txtUsername.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtUsername.Location = new System.Drawing.Point(522, 75);
            this.txtUsername.MaxLength = 10;
            this.txtUsername.Name = "txtUsername";
            this.txtUsername.Size = new System.Drawing.Size(169, 24);
            this.txtUsername.TabIndex = 6;
            // 
            // txtDepto
            // 
            this.txtDepto.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtDepto.Location = new System.Drawing.Point(401, 265);
            this.txtDepto.Name = "txtDepto";
            this.txtDepto.Size = new System.Drawing.Size(62, 24);
            this.txtDepto.TabIndex = 13;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Verdana", 10F);
            this.label13.Location = new System.Drawing.Point(345, 270);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(51, 17);
            this.label13.TabIndex = 32;
            this.label13.Text = "Depto";
            // 
            // txtDni
            // 
            this.txtDni.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtDni.Location = new System.Drawing.Point(176, 75);
            this.txtDni.MaxLength = 8;
            this.txtDni.Name = "txtDni";
            this.txtDni.Size = new System.Drawing.Size(154, 24);
            this.txtDni.TabIndex = 5;
            // 
            // txtCalle
            // 
            this.txtCalle.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtCalle.Location = new System.Drawing.Point(100, 265);
            this.txtCalle.Name = "txtCalle";
            this.txtCalle.Size = new System.Drawing.Size(230, 24);
            this.txtCalle.TabIndex = 12;
            // 
            // txtContrasenia
            // 
            this.txtContrasenia.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtContrasenia.Location = new System.Drawing.Point(176, 123);
            this.txtContrasenia.Name = "txtContrasenia";
            this.txtContrasenia.PasswordChar = '*';
            this.txtContrasenia.Size = new System.Drawing.Size(154, 24);
            this.txtContrasenia.TabIndex = 7;
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Verdana", 10F);
            this.label14.Location = new System.Drawing.Point(10, 270);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(40, 17);
            this.label14.TabIndex = 14;
            this.label14.Text = "Calle";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Verdana", 10F);
            this.label11.Location = new System.Drawing.Point(374, 78);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(142, 17);
            this.label11.TabIndex = 31;
            this.label11.Text = "Nombre de usuario";
            // 
            // txtConfContrasenia
            // 
            this.txtConfContrasenia.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtConfContrasenia.Location = new System.Drawing.Point(537, 123);
            this.txtConfContrasenia.Name = "txtConfContrasenia";
            this.txtConfContrasenia.PasswordChar = '*';
            this.txtConfContrasenia.Size = new System.Drawing.Size(154, 24);
            this.txtConfContrasenia.TabIndex = 8;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Verdana", 10F);
            this.label4.Location = new System.Drawing.Point(371, 128);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(160, 17);
            this.label4.TabIndex = 19;
            this.label4.Text = "Confirmar contraseña";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Verdana", 10F);
            this.label3.Location = new System.Drawing.Point(10, 219);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(68, 17);
            this.label3.TabIndex = 26;
            this.label3.Text = "Teléfono";
            // 
            // txtTel
            // 
            this.txtTel.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtTel.Location = new System.Drawing.Point(176, 216);
            this.txtTel.MaxLength = 8;
            this.txtTel.Name = "txtTel";
            this.txtTel.Size = new System.Drawing.Size(154, 24);
            this.txtTel.TabIndex = 11;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Verdana", 10F);
            this.label8.Location = new System.Drawing.Point(374, 179);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(33, 17);
            this.label8.TabIndex = 28;
            this.label8.Text = "Mail";
            // 
            // txtMail
            // 
            this.txtMail.Font = new System.Drawing.Font("Verdana", 10F);
            this.txtMail.Location = new System.Drawing.Point(464, 176);
            this.txtMail.Name = "txtMail";
            this.txtMail.Size = new System.Drawing.Size(230, 24);
            this.txtMail.TabIndex = 10;
            // 
            // btnRegistrar
            // 
            this.btnRegistrar.Location = new System.Drawing.Point(459, 475);
            this.btnRegistrar.Name = "btnRegistrar";
            this.btnRegistrar.Size = new System.Drawing.Size(125, 35);
            this.btnRegistrar.TabIndex = 17;
            this.btnRegistrar.Text = "Registrar";
            this.btnRegistrar.UseVisualStyleBackColor = true;
            this.btnRegistrar.Click += new System.EventHandler(this.btnRegistrar_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold);
            this.btnCancelar.Location = new System.Drawing.Point(616, 475);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(96, 35);
            this.btnCancelar.TabIndex = 18;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // gpbTipoUsuario
            // 
            this.gpbTipoUsuario.Controls.Add(this.chkChofer);
            this.gpbTipoUsuario.Controls.Add(this.chkCliente);
            this.gpbTipoUsuario.Font = new System.Drawing.Font("Verdana", 11F, System.Drawing.FontStyle.Bold);
            this.gpbTipoUsuario.Location = new System.Drawing.Point(18, 26);
            this.gpbTipoUsuario.Name = "gpbTipoUsuario";
            this.gpbTipoUsuario.Size = new System.Drawing.Size(333, 66);
            this.gpbTipoUsuario.TabIndex = 0;
            this.gpbTipoUsuario.TabStop = false;
            this.gpbTipoUsuario.Text = "Tipo de usuario";
            // 
            // chkChofer
            // 
            this.chkChofer.AutoSize = true;
            this.chkChofer.Font = new System.Drawing.Font("Verdana", 10F);
            this.chkChofer.Location = new System.Drawing.Point(163, 31);
            this.chkChofer.Name = "chkChofer";
            this.chkChofer.Size = new System.Drawing.Size(71, 21);
            this.chkChofer.TabIndex = 2;
            this.chkChofer.Text = "chofer";
            this.chkChofer.UseVisualStyleBackColor = true;
            this.chkChofer.CheckedChanged += new System.EventHandler(this.chkChofer_CheckedChanged);
            // 
            // chkCliente
            // 
            this.chkCliente.AutoSize = true;
            this.chkCliente.Font = new System.Drawing.Font("Verdana", 10F);
            this.chkCliente.Location = new System.Drawing.Point(18, 31);
            this.chkCliente.Name = "chkCliente";
            this.chkCliente.Size = new System.Drawing.Size(71, 21);
            this.chkCliente.TabIndex = 1;
            this.chkCliente.Text = "cliente";
            this.chkCliente.UseVisualStyleBackColor = true;
            this.chkCliente.CheckedChanged += new System.EventHandler(this.chkCliente_CheckedChanged);
            // 
            // RegistroUsuario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(785, 571);
            this.Controls.Add(this.groupBoxReg);
            this.Name = "RegistroUsuario";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "RegistroUsuario";
            this.Load += new System.EventHandler(this.RegistroUsuario_Load);
            this.groupBoxReg.ResumeLayout(false);
            this.gpbDatosPersonales.ResumeLayout(false);
            this.gpbDatosPersonales.PerformLayout();
            this.gpbTipoUsuario.ResumeLayout(false);
            this.gpbTipoUsuario.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBoxReg;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtConfContrasenia;
        private System.Windows.Forms.TextBox txtContrasenia;
        private System.Windows.Forms.TextBox txtDni;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtApellido;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox gpbTipoUsuario;
        private System.Windows.Forms.TextBox txtPiso;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtDepto;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox txtCalle;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox txtMail;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button btnRegistrar;
        private System.Windows.Forms.CheckBox chkChofer;
        private System.Windows.Forms.CheckBox chkCliente;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtUsername;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtLocalidad;
        private System.Windows.Forms.TextBox txtCP;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtTel;
        private System.Windows.Forms.GroupBox gpbDatosPersonales;
        private System.Windows.Forms.CheckBox chkHabilitado;
        private System.Windows.Forms.DateTimePicker dtpFechaNac;
    }
}