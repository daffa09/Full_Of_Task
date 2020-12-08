package com.utility;

// INI ADALAH SUPER CLASS DARI FOLDER UTILITY

import java.util.*;

public class control {
    
    public static boolean Reload(final String message) {
        Scanner terminalInput = new Scanner(System.in);
        System.out.print("\n" + message + " (y/n) ? ");
        String pilihanUser = terminalInput.next();

        while (!pilihanUser.equalsIgnoreCase("y") && !pilihanUser.equalsIgnoreCase("n")) {
            System.err.println("pilihan anda bukan y atau n");
            System.out.print("\n" + message + " (y/n) ? ");
            pilihanUser = terminalInput.next();
        }

        return pilihanUser.equalsIgnoreCase("y");

    }

    public static void clearScreen() {
        try {
            if (System.getProperty("os.name").contains("Windows")) {
                new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
            } else {
                System.out.print("\033\143");
            }
        } catch (final Exception ex) {
            System.err.println("tidak bisa Clear Screen");
        }
    }
}
