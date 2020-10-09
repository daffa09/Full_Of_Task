package com.tugas;

import java.util.*;

class Lingkaran{

    protected double phi;
    protected double hasil;

}

class Luas extends Lingkaran{

    public double hasil( double r){

        if(r%7 == 0){
            
            phi = 22/7; 
            hasil = phi * r * r;
            System.out.println("Luas Lingkaran dari 22/7 x " + r + " x " + r + " = " + hasil);

        }else{

            phi = 3.14;
            hasil = phi *  r * r;
            System.out.println("Luas Lingkaran dari 3.14 x " + r + " x " + r + " = " + hasil);

        }


        return hasil;

    }

}




class Main{
    
    public static void main( String[] args) {
        
        double inputUser;

         Scanner input = new Scanner(System.in);
         Luas lingkaran = new Luas();


        System.out.println("\n===== Hitung Luas Lingkaran =====\n");

        System.out.print("Masukan panjang jari - jari nya : ");
        inputUser = input.nextDouble();

        lingkaran.hasil(inputUser);

        System.out.println("\n===== Program Selesai =====");

    }
}