<%-- 
    Document   : index
    Created on : 3 лют. 2021 р., 19:52:58
    Author     : 38068
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Landing Page</title>
    </head>
    <body>
        <h1>Lets start!</h1>
        <form action="<%=request.getContextPath()%>/form" method="get">
            <input type="submit" value="Call form"/>        
        </form>
    </body>
</html>
