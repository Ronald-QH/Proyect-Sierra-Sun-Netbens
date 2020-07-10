/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Include.Articulo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ModeloArticulos extends Conexion {

    public boolean crear_articulo(Articulo a) {
        PreparedStatement pst=null;
        boolean flag = false;
        try {
            String sql = "call insArtic(?,?,?,?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, a.getNombre());
            pst.setInt(2, a.getStock());
            pst.setString(3, a.getEstado());
            pst.setInt(4, a.getCosto_Unidad());
            pst.setInt(5, a.getStock_maximo());
            
            if (pst.executeUpdate() == 1) {
                flag=true;
            }
        } catch (Exception e) {
            
        }finally{
            try {
                if (getConnection() != null) getConnection().close();
                if (pst != null)  pst.close();
            } catch (Exception e) {
            }
        }

        return flag;
    }
    
    public ArrayList<Articulo> getAllArtic(){
    ArrayList<Articulo> art=new ArrayList<>();
    PreparedStatement pst=null;
    ResultSet rs=null;
    
        try {
            String sql="call selectArtic()";
            pst=getConnection().prepareCall(sql);
            rs=pst.executeQuery();
            
            while (rs.next()) {                
                art.add(new Articulo(rs.getInt("Codigo_A"),rs.getString("Nombre"),rs.getInt("Stock"), rs.getString("Estado"),rs.getInt("Costo_Unidad"),rs.getInt("Stock_maximo")));
                
            }
        } catch (Exception e) {
        }finally{
            try {
                if (getConnection() !=null) getConnection().close();
                if (pst !=null) pst.close();
                if (rs !=null) rs.close();
            } catch (Exception e) {
            }
        }  
    return art;
    
    }
    
    public Articulo getArtic(int idArticulo){
    Articulo art=null;
    PreparedStatement pst=null;
    ResultSet rs=null;
    
        try {
            String sql="select * from articulos where Codigo_A = ?";
            pst=getConnection().prepareCall(sql);
            pst.setInt(1, idArticulo);
            rs=pst.executeQuery();
            
            while (rs.next()) {                
                art=new Articulo(rs.getInt("Codigo_A"),rs.getString("Nombre"),rs.getInt("Stock"), rs.getString("Estado"),rs.getInt("Costo_Unidad"),rs.getInt("Stock_maximo"));
                
            }
        } catch (Exception e) {
        }finally{
            try {
                if (getConnection() !=null) getConnection().close();
                if (pst !=null) pst.close();
                if (rs !=null) rs.close();
            } catch (Exception e) {
            }
        }  
    return art;
    
    }
    
    
    public boolean deletArtic(int Codigo_A) {
        boolean flag = false;
        PreparedStatement pst = null;

        try {
            String sql = "call deletArticulo(?)";
            pst = getConnection().prepareCall(sql);
            pst.setInt(1, Codigo_A);
            if (pst.executeUpdate()==1) {
                flag=true;
            }

        } catch (Exception e) {
        } finally {
            try {
                if (getConnection() != null) getConnection().close();
                if (pst != null) pst.close();
            } catch (Exception e) {
            }
        }
        return flag;
    }

    public boolean update_articulo(Articulo a) {
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String sql = "call updateArtic(?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, a.getCodigo_A());
            pst.setString(2, a.getNombre());
            pst.setInt(3, a.getStock());
            pst.setString(4, a.getEstado());
            pst.setInt(5, a.getCosto_Unidad());
            pst.setInt(6, a.getStock_maximo());
            if (pst.executeUpdate() == 1) {
                flag = true;
            }
        } catch (Exception e) {
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
            }
        }
        return flag;
    }

}
