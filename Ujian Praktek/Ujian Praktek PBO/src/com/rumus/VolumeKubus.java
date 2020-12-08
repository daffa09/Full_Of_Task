package com.rumus;

// INI MERUPAKAN SUB CLASS DARI CLASS RUMUS

public class VolumeKubus extends Rumus{
    
    private double volume(double s){

        hasil = s * s * s;

        System.out.println("\n|=================== HASIL ==================|\n");
        System.out.println(" Volume Kubus dari " + s + " x " + s + " x " + s + " = " + hasil + " cm");
        System.out.println("\n|============================================|");

        return hasil;

    }

    public double getVolume(double s){

        return volume(s);
    }

}
