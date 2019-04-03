using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FactoryPattern
{
    abstract class Sistem
    {
        public abstract void Platform();
    }

    class KitapAlma : Sistem
    {
        public override void Platform()
        {
        
        }
    
    }
    class KitapBırakma : Sistem
    {
        public override void Platform()
        {

        }

    }
    class KitapSorgulama : Sistem
    {
        public override void Platform()
        {

        }

    }
    class Sistem1
    {
        public Sistem FactoryMethod(Sistem1 sistem1)
        {
            Sistem kitapid = null;
            Sistem kitapismi = null;
            Sistem kitapyazari = null;
            Sistem ogrencino = null;
            Sistem ogrenciismi = null;

            switch (sistem1)
            {
                case Sistem1.KitapAlma:
                    kitapid = new KitapAlma();
                    kitapismi = new KitapAlma();
                    kitapyazari = new KitapAlma();
                    ogrencino = new KitapAlma();
                    ogrenciismi = new KitapAlma();
                    break;
                case Sistem1.KitapBırakma:
                    kitapid = new KitapBırakma();
                    kitapismi = new KitapBırakma();
                    ogrencino = new KitapBırakma();
                    break;
                case Sistem1.KitapSorgulama:
                    kitapid = new KitapSorgulama();
                    kitapismi = new KitapSorgulama();
                    kitapyazari = new KitapSorgulama();
        }
            return Sistem1;
        }
        
            
    }
    

    enum Sistem1
    {
        KitapAlma,
        KitapBırakma,
        KitapSorgulama,
    }
    class Program
    {
        static void Main(string[] args)
        {
        }
    }
}
