/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include;

/**
 *
 * @author Renzo
 */
public class Articulo {
   
    private int Codigo_A;
    private String Nombre;
    private int Stock;
    private String Estado;
    private int Costo_Unidad;
    private int Stock_maximo;

    public Articulo() {
    }

    public Articulo(int Codigo_A, String Nombre, int Stock, String Estado, int Costo_Unidad, int Stock_maximo) {
        this.Codigo_A = Codigo_A;
        this.Nombre = Nombre;
        this.Stock = Stock;
        this.Estado = Estado;
        this.Costo_Unidad = Costo_Unidad;
        this.Stock_maximo = Stock_maximo;
    }
    
  
    /**
     * @return the Codigo_A
     */
    public int getCodigo_A() {
        return Codigo_A;
    }

    /**
     * @param Codigo_A the Codigo_A to set
     */
    public void setCodigo_A(int Codigo_A) {
        this.Codigo_A = Codigo_A;
    }

    /**
     * @return the Nombre
     */
    public String getNombre() {
        return Nombre;
    }

    /**
     * @param Nombre the Nombre to set
     */
    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    /**
     * @return the Stock
     */
    public int getStock() {
        return Stock;
    }

    /**
     * @param Stock the Stock to set
     */
    public void setStock(int Stock) {
        this.Stock = Stock;
    }

    /**
     * @return the Estado
     */
    public String getEstado() {
        return Estado;
    }

    /**
     * @param Estado the Estado to set
     */
    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    /**
     * @return the Costo_Unidad
     */
    public int getCosto_Unidad() {
        return Costo_Unidad;
    }

    /**
     * @param Costo_Unidad the Costo_Unidad to set
     */
    public void setCosto_Unidad(int Costo_Unidad) {
        this.Costo_Unidad = Costo_Unidad;
    }

    /**
     * @return the Stock_maximo
     */
    public int getStock_maximo() {
        return Stock_maximo;
    }

    /**
     * @param Stock_maximo the Stock_maximo to set
     */
    public void setStock_maximo(int Stock_maximo) {
        this.Stock_maximo = Stock_maximo;
    }

}