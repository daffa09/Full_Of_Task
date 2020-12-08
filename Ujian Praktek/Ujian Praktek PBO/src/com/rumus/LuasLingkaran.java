package com.rumus;

// INI MERUPAKAN SUB CLASS DARI CLASS RUMUS

public class LuasLingkaran extends Rumus {


    private double luas(double r) {

        

        if (r % 7 == 0) {

            hasil = (22 / 7 * r) * r;
            System.out.println("\n|===================== HASIL ====================|\n");
            System.out.println(" Luas Lingkaran dari 22/7 x " + r + " x " + r + " = " + hasil + " cm");
            System.out.println("\n|================================================|");

        } else {

            hasil = phi * r * r;
            System.out.println("\n|===================== HASIL ====================|\n");
            System.out.println(" Luas Lingkaran dari 3.14 x " + r + " x " + r + " = " + hasil + " cm");
            System.out.println("\n|================================================|");

        }

        return hasil;

    }

    public double getLuas(double r) {

        return luas(r);
    }

} 