package com.utility;

// INI MERUPAKAN SUB CLASS DARI CLASS CONTROL

public class Menu extends control{

    public void menuUtama(){

        clearScreen();
        System.out.println("\n\n|===================================|");
        System.out.println("|= Aplikasi Hitung Luas dan Volume =|");
        System.out.println("|===================================|");
        System.out.println("|1. Luas Lingkaran                  |");
        System.out.println("|2. Volume Kubus                    |");
        System.out.println("|===================================|");
        System.out.print("| pilih no : ");
    }
    
    public void menuKubus() {

        clearScreen();
        System.out.println("\n|===========================|");
        System.out.println("|==      VOLUME KUBUS     ==|");
        System.out.println("|===========================|");
        System.out.print("\n Masukan panjang rusuknya : ");
    }

    public void menuLingkaran() {

        clearScreen();
        System.out.println("\n|==========================|");
        System.out.println("|==    LUAS LINGKARAN    ==|");
        System.out.println("|==========================|");
        System.out.print("\n Masukan jari - jarinya : ");
    }

    
}
