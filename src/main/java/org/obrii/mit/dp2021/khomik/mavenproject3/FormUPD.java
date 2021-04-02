package org.obrii.mit.dp2021.khomik.mavenproject3;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "FormUPD", urlPatterns = {"/Forma"})
public class FormUPD extends HttpServlet {
    DataServlet dataServlet = new DataServlet();
    
    
     @Override
    public void init(ServletConfig config) throws ServletException {
    super.init(config);
    dataServlet = new DataServlet();
    dataServlet.init(config);
    }
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        dataServlet.doDelete(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        dataServlet.doPut(request, response);
    }
}