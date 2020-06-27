/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Articulo;
import Modelo.ModeloArticulos;

/**
 *
 * @author Renzo
 */
public class CArticulos {

    public boolean crearArticulo(Articulo a) {
        ModeloArticulos moda = new ModeloArticulos();
        return moda.crear_articulo(a);

    }

    public String getViewArticol() {
        String htmlcode = "";

        ModeloArticulos modeArt = new ModeloArticulos();

        for (Articulo a : modeArt.getAllArtic()) {
            htmlcode += "   <tr>\n"
                    + "         <td id='id_Artic'>" + a.getCodigo_A() + "</td>\n"
                    + "         <td>" + a.getNombre() + "</td>\n"
                    + "         <td>" + a.getStock() + "</td>\n"
                    + "         <td>" + a.getEstado() + "</td>\n"
                    + "         <td>" + a.getCosto_Unidad() + "</td>\n"
                    + "         <td>" + a.getStock_maximo() + "</td>"
                    + "         <td>\n"
                    + "         <button type=\"button\" value=\"Modificar producto\" id='btnMod' class=\"btn btn-outline-info text-white\"><a href='EditArticulo.jsp?id"+a.getCodigo_A()+"'>Editar</a></button>\n"
                    + "         <button id='btnDelet' type=\"button\" class=\"btn btn-outline-info text-white\">Eliminar</button>\n"
                    + "         </td>"
                    + "     </tr>";
        }

        return htmlcode;
    }
     
    public boolean deletArticulo(int  id){
    ModeloArticulos ma=new ModeloArticulos();
    return ma.deletArtic(id);
    }
    
    public String EditArticulo(int idart) {
        ModeloArticulos ma=new ModeloArticulos();
        Articulo art= ma.getArtic(idart);
        String htmlcode = "";
        htmlcode +=                 "<form class=\"needs-validation\" name='frm_mod' id='frmMod' novalidate>\n"
+ "                                      <div class=\"form-row\">\n"
+ "                                          <div class=\"col-md-6 mb-3\">\n"
+ "                                              <label for=\"Nombre\">Nombre</label>\n"
+ "                                              <input  type=\"text\" class=\"form-control\" id=\"Nombre\" name=\"Nombre\" required>\n"
+ "                                              <div class=\"valid-feedback\">\n"
+ "                                                  Correcto\n"
+ "                                              </div>\n"
+ "                                              <div class=\"invalid-feedback\">\n"
+ "                                                  Indique el nombre\n"
+ "                                              </div>\n"
+ "                                          </div>\n"
+ "                                          <div class=\"col-md-6 mb-3\">\n"
+ "                                              <label for=\"Estado\">Estado</label>\n"
+ "                                              <input type=\"text\" class=\"form-control\" id=\"Estado\" name=\"Estado\" required>\n"
+ "                                              <div class=\"invalid-feedback\">\n"
+ "                                                  Describa el estado del producto.\n"
+ "                                              </div>\n"
+ "                                          </div>\n"
+ "                                      </div>\n"
+ "                                      <div class=\"form-row\">\n"
+ "                                          <div class=\"col-md-6 mb-3\">\n"
+ "                                              <label for=\"Costo_Unitario\">Costo unitario</label>\n"
+ "                                              <input type=\"text\" class=\"form-control\" id=\"Costo_Unitario\" name=\"Costo_Unitario\" required>\n"
+ "                                              <div class=\"invalid-feedback\">\n"
+ "                                                  Indicque el costo.\n"
+ "                                              </div>\n"
+ "                                          </div>\n"
+ "                                          <div class=\"col-md-3 mb-3\">\n"
+ "                                              <label for=\"Stock\">Stock</label>\n"
+ "                                              <select class=\"custom-select\" id=\"Stock\" name=\"Stock\" required>\n"
+ "                                                  <option selected value=\"\">Elegir</option>\n"
+ "                                                  <option selected value=\"\">10</option>\n"
+ "                                                  <option selected value=\"\">20</option>\n"
+ "                                                  <option selected value=\"\">30</option>\n"                
+ "                                                  <%for ( i = 1; i <= 1000; i++) {%>\n"
+ "                                                  <option selected value='<%= i%>' ><%= i%></option>\n"
+ "                                                  <%}%>\n"
+ "                                              </select>\n"
+ "                                              <div class=\"invalid-feedback\">\n"
+ "                                                  Indique el stock.\n"
+ "                                              </div>\n"
+ "                                          </div>\n"
+ "                                          <div class=\"col-md-3 mb-3\">\n"
+ "                                              <label for=\"Stock_maximo\">Stock Maximo</label>\n"
+ "                                              <select class=\"custom-select\" id=\"Stock_maximo\" name=\"Stock_maximo\" required>\n"
+ "                                                  <option selected disabled value=\"\">Elegir</option>\n"
+ "                                                  <option selected value=\"\">10</option>\n"
+ "                                                  <option selected value=\"\">20</option>\n"
+ "                                                  <option selected value=\"\">30</option>\n"                
+ "                                                  <%for (int i = 1; i <= 1030; i++) {%>\n"
+ "                                                  <option selected value=\"<%= i%>\"><%= i%></option>\n"
+ "                                                  <%}%>\n"
+ "                                              </select>\n"
+ "                                              <div class=\"invalid-feedback\">\n"
+ "                                                  Indique el stock maximo.\n"
+ "                                              </div>\n"
+ "                                          </div>\n"
+ "                                      </div>\n"
+ "                                      <button class=\"btn btn-outline-info\" value=\"BtnCrear\" id=\"btnNewArtic\" type=\"submit\">Agregar</button>\n"
+ "                                  </form>\n"
+ "                                  <!--Form de CRUD-->\n";

        
        return htmlcode;
    }
    
    

}

