/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.khomik.mavenproject3;

/**
 *
 * @author ПК
 */

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DataServlet", urlPatterns = {"/Data"})
public class DataServlet extends HttpServlet {

    
   // DataCrudInterface dataCrud = new StoreCrud();
            CrudDataInterface dataCrud = new FilesCrud(new File(Config.getFileName()));
       //   dataCrud.setFileName(new File("feef.txt"));
            //StoreCrud(File file)
            
            
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                if (Config.getFileName().equals("")) {
            Config.setFileName(this.getServletContext().getRealPath("") + "data.txt");
            dataCrud = new FilesCrud(new File(Config.getFileName()));
        }
                
                if(request.getParameter("search")!=null){
                request.setAttribute("data", dataCrud.searchData(request.getParameter("search")));
                }
                else{
                request.setAttribute("data", dataCrud.readData());
                }
                request.getRequestDispatcher("home.jsp").forward(request, response); 
        
        
        
        
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        dataCrud.createData(
        new Data(
        Integer.parseInt(request.getParameter("id")),
        request.getParameter("name"),
        Integer.parseInt(request.getParameter("age")),
        request.getParameter("test"),
        request.getParameter("ganre")
        )
        );
        
        
        
        
        
        
        doGet(request, response);
    }

      @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int myId = Integer.parseInt(request.getParameter("id"));
       dataCrud.updateData(myId,
        new Data(
        Integer.parseInt(request.getParameter("id")),
        request.getParameter("name"),
        Integer.parseInt(request.getParameter("age")),
        request.getParameter("test"),
        request.getParameter("ganre")
        )
        );
       doGet(request, response);
    }
      @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         int myId = Integer.parseInt(request.getParameter("id"));
       dataCrud.deleteData(myId
        
        );
       dataCrud.stData();
       
       
        doGet(request, response);
       
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
