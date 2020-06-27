/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Renzo
 */
public class Conexion {
    private String username="root";
    private String pasword="";
    private String hostname="localhost";
    private String port="3306";
    private String database="Proyect_sierra_sun";
    private String classname="com.mysql.jdbc.Driver";
    private String url="jdbc:mysql://"+hostname+":"+port+"/"+database;
    private Connection con;
    
    public Conexion(){
        try {
            Class.forName(classname);
            con =DriverManager.getConnection(url, username, pasword);
        } catch (ClassNotFoundException e) {
            System.err.println(e.getMessage());
        }catch (SQLException esql){
            System.err.println(esql.getMessage());
        }
    
    }
    
 public  Connection getConnection(){
 
 return con;
 }
    
    
}
