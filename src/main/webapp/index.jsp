<%-- 
    Document   : index
    Created on : 10 лют. 2021 р., 18:34:01
    Author     : ПК
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Khomik page`s</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">
  </head>
  <body>
    <header class="header">
        <div class="container header_container">
            <div class="logotipe">
                <div class="logo">
                    <a class="log" href="#">Fine Serials</a>
                </div>
            </div>
            <div class="navigation">
                <div class="nav">
                    <ul class="nav_ul">
                        <li>
                            <a class="nav_item" href="#"><span class="text">Main</span></a>
                        </li>
                        <li>
                            <a class="nav_item" href="#"><span class="text">Films</span></a>
                        </li>
                        <li>
                            <a class="nav_item" href="#"><span class="text">Serials</span></a>
                        </li>
                        <li>
                            <a class="nav_item" href="#"><span class="text">Contacts</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <div class="section ">
        <div class="container section_container ">
            <p class="section_subtitle ">The Bogdan Khomik Page`s</p>
            <h1 class="section_title ">Student of Taras Shevchenko National University of Kyiv</h1>
            <div class="section_title ">Young Web-Developer</div>
            <form action="<%=request.getContextPath()%>/form" method="get">
                <button class="section_btn btn" type="submit">Create Form</button>
            </form>
        </div>
    </div>
    <div class=" diag">
        <p><img class="diagrams" src="assets/imgs/diagram.jpg" alt=""></p>          
    </div>
  </body>
</html>