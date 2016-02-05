using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PR___ObjektOrientierungGrundlagen
{
    class Program
    {
        static void Main(string[] args)
        {
            /// Zeiger h auf eine neus objekt der Klasse Haus
            /// 
            Haus h = new Haus();
            h.Adresse = "Am Berg 123";

            h.Adresse = "";
            h.Adresse = null;

            /// adresse ist noch unverändert
            Console.WriteLine(h.Adresse);

            /// h ist der ZEIGER auf ein Objekt
            /// damit ich vom Zeiger auf das Objekt komme
            /// muss ich den . verwenden 
            h.umziehen("malvenweg 123");

            /// rufe  eine Logik auf (die irgendetwas macht) und gib den rückgabewert aus
            Console.WriteLine(h.BerechnetHausPreis());
        }
    }

    /// wir müssen einen Bauplan definieren nach dem wir
    /// später Häuser (=Objekte) bauen können
    class Haus
    {
        private string adresse;
        private int plz;

        public int PLZ
        {
            get { return plz; }
            set { plz = value; }
        }

        // einfache Logik in einem Haus Objekt
        public double BerechnetHausPreis()
        {
            if (plz == 1010)
                return 1000000;
            else if (plz == 1030)
                return 1235556;
            else
                return 11923;
        }

        public string Adresse
        {
            get { return adresse; }
            /// prüfe im Set Teil ob der WERT (=value der zugewiesen wird)
            /// eben NICHT null oder leer ist
            set { if (!string.IsNullOrEmpty(value)) adresse = value; }
        }

        // oftmals verändern auch  Methoden irgendwelche Felder
        public void umziehen(string neueAdresse)
        {
            if (!string.IsNullOrEmpty(neueAdresse))
                adresse = neueAdresse;
        }
    }
}
