using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Utilities
{
    public class Validator
    {
        public static string SoloNumeros(string textoAValidar, string nombreCampo)
        {
            string strError = "";

            if (strError.Length == 0 && !EsNumero(textoAValidar))
            {
                strError += "El campo " + nombreCampo + " tiene caracteres inválidos\n";
            }
            return strError;
        }

        public static string SoloNumerosODecimales(string textoAValidar, string nombreCampo)
        {
            string strError = "";
            if (strError.Length == 0 && !EsDecimal(textoAValidar))
            {
                strError += "El campo " + nombreCampo + " tiene caracteres inválidos\n";
            } 

            return strError;
        }

        public static bool EsNumero(object obj)
        {
            try
            {
                int.Parse(obj.ToString());
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static bool EsDecimal(object obj)
        {
            try
            {
                decimal.Parse(obj.ToString());
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static string ValidarNulo(string textoAValidar, string nombreCampo)
        {
            if (string.IsNullOrEmpty(textoAValidar))
            {
                return "Ingrese un valor para el campo " + nombreCampo + "\n";
            }
            return string.Empty;
        }

        public static string EsAño(string año, string nombreCampo)
        {
            int unAño = Convert.ToInt32(año);
            if (unAño < 1900 || unAño > 2017)
                return "Tiene que ingresar un año válido, entre 1900 y 2017, para el campo " + nombreCampo + "\n";

            return string.Empty;

        }

        public static string FechaMenor(DateTime fechaInicio, DateTime fechaFin)
        {
            if (DateTime.Compare(fechaInicio, fechaFin) >= 0)
                return "La fecha de inicio debe ser menor a la fecha de fin " + "\n";

            return string.Empty;

        }

        //public static string ValidarFechaVencimiento(string fecha, string nombreCampo, DateTime fechaHoy)
        //{
        //    DateTime unaFecha = Convert.ToDateTime(fecha);
        //    if (unaFecha < fechaHoy)
        //        return "Tiene que ingresar una fecha válida, para el campo " + nombreCampo + "\n";
        //    return string.Empty;
        //}

        public static string ValidarCantidadMenor(string cant, int otraCant, string nombreCampo)
        {
            int cantidad = Convert.ToInt32(cant);
            if (cantidad > otraCant)
                return "Tiene que ingresar una cantidad válida, para el campo " + nombreCampo + "\n";
            return string.Empty;
        }

        public static string SoloNumerosPeroOpcional(string textoAValidar, string nombreCampo)
        {
            string strError = "";
            if (String.IsNullOrEmpty(textoAValidar))
                return strError;
            if (!EsNumero(textoAValidar))
            {
                strError += "El campo " + nombreCampo + " tiene caracteres inválidos\n";
            }
            return strError;
        }


        public static string MayorACero(string textoAValidar, string nombreCampo)
        {
            string strError = "";
            try
            {
                if (Convert.ToInt32(textoAValidar) <= 0)
                {
                    strError += "El campo " + nombreCampo + " debe ser mayor que cero\n";
                }
                return strError;
            }
            catch
            {
                try
                {
                    if (System.Convert.ToDecimal(textoAValidar) <= 0)
                    {
                        strError += "El campo " + nombreCampo + " debe ser mayor que cero\n";
                    }
                    return strError;
                }
                catch (System.OverflowException)
                {
                    return
                       "Se produjo overflow por el campo " + nombreCampo + "\n";
                }
                catch (System.FormatException)
                {
                    return
                        "El campo " + nombreCampo + " no es decimal\n";
                }
                catch (System.ArgumentNullException)
                {
                    return
                        "El campo " + nombreCampo + " no puede ser vacio\n";
                }
            }
        }

        public static string validarNuloEnListaDeCheckbox(CheckedListBox lstRubros, string nombreListado)
        {
            string strError = "";
            if (lstRubros.CheckedItems.Count == 0)
            {
                strError += "El " + nombreListado + " debe tener seleccionado al menos un elemento. \n";
            }
            return strError;

        }

    }
}
