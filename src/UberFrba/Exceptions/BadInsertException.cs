using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exceptions
{
    public class BadInsertException : Exception
    {
        public BadInsertException()
            : base("Un error ha ocurrido durante la ejecución.")
        {
        }
    }
}
