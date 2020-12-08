package com.tugas;

// INI ADALAH CLASS MAIN NYA

import java.util.*;
import com.rumus.*;
import com.utility.*;

public class Main {

    public static void main(String[] args) {

        int user;
        boolean re = true;
        Scanner input = new Scanner(System.in);

        LuasLingkaran lingkaran = new LuasLingkaran();
        VolumeKubus kubus = new VolumeKubus();
        Menu mainMenu = new Menu();

        while (re) {

            mainMenu.menuUtama();
            user = input.nextInt();

            switch (user) {
                case 1:
                    double r;
                    mainMenu.menuLingkaran();
                    r = input.nextDouble();
                    lingkaran.getLuas(r);
                    break;

                case 2:
                    double s;
                    mainMenu.menuKubus();
                    s = input.nextDouble();
                    kubus.getVolume(s);
                    break;

                default:
                    System.err.println("\nInput anda tidak ditemukan\nSilahkan pilih [1 atau 2]");
                    break;
            }

            re = control.Reload("Apakah anda ingin mencoba lagi");
        }

        input.close();
    }
}
