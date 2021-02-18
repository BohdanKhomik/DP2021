<%-- 
    Document   : submit
    Created on : 3 лют. 2021 р., 14:34:20
    Author     : 38068
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">
    <title>Khomik page`s</title>
  </head>
  <body>
    <%@page import="java.util.List, org.obrii.mit.dp2021.khomik.mavenproject3.User"%>

    <% User user = (User) request.getAttribute("user");%>

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
                <div class="hamburger" onclick="show('block')">
                    <button class="btn_menu " type="button ">
                    <span class="btn_menu_box ">
                        <span class="btn_menu_inner "></span>
                    </span>
                </button>
                </div>
            </div>
        </div>
    </header>

    <div class="section">
        <div class="inner">
          <h1 class="section_subtitle boom">Nice to see You here</h1>
          <h2 class="section_subtitle boom">Now You can see the result of the form</h2>

          <p class="section_title">

            Hello <span>
              <%=user.getName()%> <%=user.getSurname()%>
            </span>. 
            Your email : <span>
              <%=user.getEmail()%>
            </span>
            , You born : <%=user.getDay()%> <%=user.getMonth()%> <%=user.getYear()%>

            <span> And you are a 
              <%=user.getGender()%>
            </span>.
          </p>
          <form action="<%=request.getContextPath()%>">
            <button class="section_btn btn" type="submit">Click TO Back</button>
          </form>
        </div>
      </section>
    </div>
  </body>
</html>
<%--
        <p>Alternative User display:</p>
        <p>Name: <%=user.getName()%></p>
        <p>(or even this way)</p>
        <p>Name: <%=request.getParameter("name")%></p>
        <p>Gender: <%=user.getGender()%></p>
        <p>Languages: <%=user.getLanguage()%></p>
        <p>Country: <%=user.getCountry()%></p>
--%>