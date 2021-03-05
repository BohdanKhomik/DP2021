<%-- 
    Document   : index
    Created on : 5 бер. 2021 р., 13:26:08
    Author     : ПК
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="<%=request.getContextPath()%>/SecondFormServlet" method="get">
                <input  type="submit" value="go"> 
                </form>
    </body>
</html>
