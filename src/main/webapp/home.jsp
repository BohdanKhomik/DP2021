<%-- 
    Document   : table
    Created on : 5 бер. 2021 р., 14:26:52
    Author     : ПК
--%>

<%@page import="java.io.File"%>
<%@page import="org.obrii.mit.dp2021.khomik.mavenproject3.Data"%>
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
      <% List<Data> dataList = (List<Data>) request.getAttribute("data");%>
     
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
    <div class="section">
        
        <p><h1>Information table</h1></p>
        <div class="tbl-header">
            <table>
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Test</th>
                        <th>Ganre</th>
                        <th>Update</th>
                        <th>Delete</th>
                    </tr>
                </thead>
            </table>
        </div>
        <div class="tbl-content">
            <table class="styled-table">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>name</th>
                                <th>age</th>
                                <th>gender</th>
                                <th>email</th>
                                <th>...</th>
                                <th>X</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for (Data data : dataList) {%>
                        <tr>
                            <td><%=data.getId()%></td>
                            <td><%=data.getName()%></td>
                            <td><%=data.getAge()%></td>
                            <td><%=data.getTest()%></td>
                            <td><%=data.getGanre()%></td>
                            <td>
                                <form action="update.jsp" method="post">
                                    <input type="hidden" name="id" value="<%=data.getId()%>">
                                    <input type="hidden" name="name" value="<%=data.getName()%>">
                                    <input type="hidden" name="age" value="<%=data.getAge()%>">
                                    <input type="hidden" name="gender" value="<%=data.getTest()%>">
                                    <input type="hidden" name="email" value="<%=data.getGanre()%>">
                                    <input type="submit" value="Update">
                                </form>
                            </td>
                            <td>
                                <form action="<%=request.getContextPath()%>/form" method="get">
                                    <input type="hidden" name="id" value="<%=data.getId()%>">
                                    <input type="submit" value="Delete">
                                </form>
                            </td>
                        </tr>
                       <%}%>
                       <tr>
                           <td colspan="4">
                               <form action= "<%=request.getContextPath()%>/" method="get">
                                    <input type="text" name="search">
                                    <input type="submit" value="search data">
                               </form>
                           </td>
                            <td colspan="3">
                                <form action="create.jsp" methd="get">
                                    <input type="submit" value="ADD USER" >
                                </form>
                            </td>
                        </tr>
                        </tbody>
                    </table>
        </div>
    </div>
  </body>
</html>
