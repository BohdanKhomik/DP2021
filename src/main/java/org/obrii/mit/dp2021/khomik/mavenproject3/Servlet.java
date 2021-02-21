/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.khomik.mavenproject3;
import java.util.List;
import java.util.ArrayList;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ПК
 */
@WebServlet(name = "Servlet", urlPatterns = {"/form"})

public class Servlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("pages/form.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        GanreInterface ganre = null;
        
        MovieInterface movie;
        
        String message;
        
        
        if("fantastic".equals(request.getParameter("ganre")))
        {
            ganre = new FantasticGanre();
        }
        else if("realism".equals(request.getParameter("ganre")))
        {
            ganre = new RealizmGanre();
        }
        
        if("films".equals(request.getParameter("test"))){
            Map<String, String> films = new HashMap<>();
            films.put("fantastic", "Interstellar");
            films.put("realism", "Birdman");
            movie = new FilmsCollection(films);
            message = ganre == null ? movie.getFilmInfo() : movie.getFilmInfo(ganre);
        }
        else
        {         
            Map<String, String> films = new HashMap<>();
            films.put("fantastic", "Dark");
            films.put("realism", "Friends");
            movie = new SerialsCollection(films);
            message = ganre == null ? movie.getFilmInfo() : movie.getFilmInfo(ganre);
        }
        
        
        
        request.setAttribute("message", message);
        request.getRequestDispatcher("pages/submit.jsp").forward(request, response);
    }
    
    
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}