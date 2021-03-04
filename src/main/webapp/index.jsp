<%-- 
    Document   : index
    Created on : 10 лют. 2021 р., 18:34:01
    Author     : ПК
--%>

<%@page import="java.util.List"%>
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
      <%List<Data> dataList = (List<Data>) request.getAttribute("data");%>
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
        <h1>Information table</h1>
        <div class="tbl-header">
            <table cellpadding="0" cellspacing="0" border="0">
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
            <table>
                <tbody>
                    <%for (Data data : dataList) {%>
                    <tr>
                        <td><%=data.getId()%></td>
                        <td><%=data.getName()%></td>

                        <td><%=data.getAge()%></td>
                        <td><%=data.getTest()%></td>
                        <td><%=data.getGanre()%></td>
                        <td></td>

                        <th><form action="upd_form.jsp" method="post">
                                <input type="hidden" name="id" value="<%=data.getId()%>"/>
                                <input type="hidden" name="name" value="<%=data.getName()%>"/>
                                <input type="hidden" name="age" value="<%=data.getAge()%>"/>
                                <input type="hidden" name="test" value="<%=data.getTest()%>"/>
                                <input type="hidden" name="ganre" value="<%=data.getGanre()%>"/>
                                <div class="hero-cta"><input class="button3" type="submit" value="Update"></div></th>
                        </form>
                        <th><form action="<%=request.getContextPath()%>/FormServlet" method="get">
                                <input type="hidden" name="number" value="<%=data.getId()%>"/>
                                <div class="hero-cta"><input class="button3" type="submit" value="Delete"></div>
                            </form></th>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
  </body>
</html>