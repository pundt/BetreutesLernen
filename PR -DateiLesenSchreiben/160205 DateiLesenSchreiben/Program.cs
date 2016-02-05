using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _160205_DateiLesenSchreiben
{
    class Program
    {
        static void Main(string[] args)
        {
            einfachesDateiSchreiben();
            einfachesDateiLesen();
        }

        private static void einfachesDateiSchreiben()
        {
            // Zugriff auf eine Datei um zu schreiben
            /// mit @ damit keine Steuerzeichen erkannt werden  
            StreamWriter sw = new StreamWriter(@"e:\temp\test.txt");
            for (int i = 0; i < 10; i++)
            {
                sw.WriteLine("Zahl:" + i);
            }

            sw.Close();
        }

        private static void einfachesDateiLesen()
        {

            StreamReader sr = new StreamReader(@"e:\temp\test.txt");
            string dateiInhalt = sr.ReadToEnd();
            Console.WriteLine(dateiInhalt);

            sr.Close();
        }
    }
}
