package com.latihan;

class Profesi{

    String nama;
    int usia;
    String jurusan;
    
}

class Mahasiswa extends Profesi{
    
    /*saya buat attribut nya berada di superClass dan untuk attribut
     dalam subclass nya saya buat di dalam parameter sebuah method*/

     //SAYA BUAT SEPERTI INI AGAR TERLIHAT SIMPLE DAN MUDAH DIMENGERTI

     void Mahasiswa(String name, int usia, String jurusan){
         this.nama = name;
         this.usia = usia;
         this.jurusan = jurusan;
     }


    void display(){

        System.out.println("Nama    : " + nama);
        System.out.println("Usia    : " + usia);
        System.out.println("Jurusan : " + jurusan);
    }


}

public class Main {
    
    public static void main(final String[] args) throws Exception {
        
        Mahasiswa mahasiswa1 = new Mahasiswa();

        System.out.println("\nTugas Inheritas atau pewarisan dalam OOP Java");

        mahasiswa1.Mahasiswa("Daffa", 16, "Rekayasa Perangkat Lunak");
        mahasiswa1.display();

    
    }
}
