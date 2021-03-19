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

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DataServlet", urlPatterns = {"/Data"})
public class DataServlet extends HttpServlet {

    
    PostgresCrud dataCrud = new PostgresCrud();

     
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                
                if(request.getParameter("search")!=null){
                request.setAttribute("data", dataCrud.searchData(request.getParameter("search")));
                }
                else{
                request.setAttribute("data", dataCrud.readData());
                }
                request.getRequestDispatcher("home.jsp").forward(request, response); 
    }

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
       protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         int myId = Integer.parseInt(request.getParameter("id"));
       dataCrud.deleteData(myId);
       doGet(request, response);
       
    }
       
     @Override
    public String getServletInfo() {
        return "Short description";
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
}
