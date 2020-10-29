package com.tugas; // <== ini adalah package nya, package itu cuma folder biasa aja,
// gunanya sebagai merapihkan repository kodingan aplikasi ini....
// dan ini adalah package utama nya 

import java.util.Scanner;
import com.daftar.*;

public class Main {

    public static void main(String[] args) throws Exception {
        
        int user;

        Scanner input = new Scanner(System.in);
        Penjual sell = new Penjual();
        Pembeli buy = new Pembeli();

        System.out.println("\n==== DAFTAR ====");
        System.out.println("1. Daftar penjual");
        System.out.println("2. Daftar pembeli");
        System.out.println("==================");
        System.out.print("Ingin melihat siapa (nomornya) : ");
        user = input.nextInt();

        if(user == 1){
            
            sell.penjual();
        
        }else if(user == 2){

            buy.pembeli();

        } else{
            System.out.println("Tidak ditemukan");
        }
        
    }
}
