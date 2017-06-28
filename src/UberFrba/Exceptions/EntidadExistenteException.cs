using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exceptions
{
    public class EntidadExistenteException : Exception
    {
        public EntidadExistenteException(string textoExistente)
            : base("Ya existe " + textoExistente + " con estos datos.")
        {
        }
    }
}
