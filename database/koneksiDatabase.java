/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;
import database.koneksiDatabase;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;//KALO ADA ERROR DIKASIK TAU
import java.text.SimpleDateFormat;//UNTUK NGEBUAT TANGGAL
import javax.swing.JOptionPane;//MENAMPILKAN TULISAN "Registered Done"
import java.util.regex.*;
import java.awt.event.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 *
 * @author Yodya Mahesa
 */
public class koneksiDatabase {
   private static Connection koneksi; 
    public static Connection getKoneksi(){ 
         
        if(koneksi==null){ 
            try{ 
                String url = new String(); 
                String user = new String(); 
                String password = new String(); 
                url = "jdbc:mysql://localhost:3306/db_slider_puzzle"; 
                user = "root"; 
                password = ""; 
                DriverManager.registerDriver(new com.mysql.jdbc.Driver()); 
                koneksi = (Connection) DriverManager.getConnection(url,user,password); 
                 
            }catch(SQLException t){ 
                System.out.println("[X] Koneksi ke Database gagal"); 
                System.out.println("Silahkan periksa koneksi Anda"); 
            } 
        } 
        return koneksi; 
    }    
    
}
