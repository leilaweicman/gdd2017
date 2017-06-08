using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UberFrba.Abm_Automovil
{
    public class ComboPrueba
    {
        public string Name { get; set; }
        public int Value { get; set; }
    
        public ComboPrueba(string nombre, int valor)
        {
            // TODO: Complete member initialization
            this.Name = nombre;
            this.Value = valor;
        }
       }
}
