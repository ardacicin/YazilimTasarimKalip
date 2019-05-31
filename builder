
interface Sistem1
{ 
    public void setKitapAl(String kitapAl); 
  
    public void setKitapBırak(String kitapBırak); 
  
    public void setKitapAra(String kitapAra); 
  
} 
  
class Sistem implements Sistem1
{ 
  
    private String kitapAl; 
    private String kitapBırak; 
    private String kitapAra; 
    
  
    public void setkitapAl(String kitapAl)  
    { 
        this.kitapAl = kitapAl; 
    } 
  
    public void setkitapBırak(String kitapBırak)  
    { 
        this.kitapBırak = kitapBırak; 
    } 
  
    public void setkitapAra(String kitapAra)  
    { 
        this.kitapAra = kitapAra; 
    } 
  
 
} 
  
  
interface SistemBuilder 
{ 
  
    public void buildkitapAl(); 
  
    public void buildkitapBırak(); 
  
    public void bulidkitapAra(); 
  
    public Sistem getSistem(); 
} 
  
class SistemBuilder1 implements SistemBuilder 
{ 
    private Sistem sistem; 
  
    public SistemBuilder1()  
    { 
        this.Sistem = new Sistem(); 
    } 
  
    public void buildkitapAl()  
    { 
        sistem.setBasement("Kitap Al"); 
    } 
  
    public void buildkitapBırak()  
    { 
        sistem.setStructure("Kitap Bırak"); 
    } 
  
    public void buildkitapAra()  
    { 
        sistem.setInterior("Kitap Ara"); 
    } 
  
  
    public Sistem getSistem()  
    { 
        return this.sistem; 
    } 
} 
  
class TipiSistemBuilder implements SistemBuilder 
{ 
    private Sistem sistem; 
  
    public TipiSistemBuilder()  
    { 
        this.sistem = new Sistem(); 
    } 
  
    public void buildKitapAl()  
    { 
        sistem.setBasement("Kitap AL"); 
    } 
  
    public void buildKitapBırak()  
    { 
        sistem.setStructure("Kitap Bırak"); 
    } 
  
    public void buildKitapAra()  
    { 
        sistem.setInterior("Kitap Ara"); 
    } 
  
    public Sistem getSistem()  
    { 
        return this.sistem; 
    } 
  
} 
  
class Ogrenci  
{ 
  
    private SistemBuilder sistemBuilder; 
  
    public Ogrenci(SistemBuilder sistemBuilder) 
    { 
        this.sistemBuilder = sistemBuilder; 
    } 
  
    public Sistem getSistem() 
    { 
        return this.sistemBuilder.getSistem(); 
    } 
  
    public void Sistem2() 
    { 
        this.sistemBuilder.buildKitapAl(); 
        this.sistemBuilder.buildKitapBırak(); 
        this.sistemBuilder.bulidKitapAra();  
    } 
} 
  
class Builder 
{ 
    public static void main(String[] args) 
    { 
        SistemBuilder SistemBuilder1 = new SistemBuilder1(); 
        Ogrenci ogrenci = new Ogrenci(SistemBuilder1); 
  
        ogrenci.Sistem2(); 
  
        Sistem sistem = ogrenci.getHouse(); 
  
        System.out.println("İşlemler "+ sistem); 
    } 
} 
