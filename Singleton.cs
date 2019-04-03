using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Singleton
{
    public class Kitap
    {
        static Kitap kitapid;
        static Kitap kitapismi;
        static Kitap kitapyazari;

        public static Kitap Kitapid
        {
            get { return Kitap.kitapid; }
        }
        public static Kitap Kitapismi
        {
            get { return Kitap.kitapismi; }
        }
        public static Kitap Kitapyazari
        {
            get { return Kitap.kitapyazari; }
        }
        static Kitap()
        {
            kitapid = new Kitap();
            kitapismi = new Kitap();
            kitapyazari = new Kitap();
        }
        public class KitapAlma
        {
            static KitapAlma kitapid;
            static KitapAlma Öğrencino;
            static KitapAlma kitapismi;
        }
        public class KitapBirakma
        {
            static KitapBirakma kitapid;
            static KitapBirakma Öğrencino;
            static KitapBirakma kitapismi;
        }
        public class KitapSorgulama
        {
            static KitapSorgulama kitapid;
            static KitapSorgulama kitapismi;
        }
        static void Main(string[] args)
        {
            Kitap kitapid = Kitap.Kitapid;            
            Kitap kitap1 = new Kitap();
        }
    }

    
}
