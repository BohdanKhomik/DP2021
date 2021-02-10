<%-- 
    Document   : submit
    Created on : 3 лют. 2021 р., 14:34:20
    Author     : 38068
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="org.obrii.mit.dp2021.mykolaichuk.mavenproject5.User"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submit Page</title>
    </head>
    <body>
        <h1>Submited data:</h1>

        <% User user = (User) request.getAttribute("user");%>      
        <p><%=user%></p> 

        <p>Alternative User display:</p>
        <p>Name: <%=user.getName()%></p>
        <p>(or even this way)</p>
        <p>Name: <%=request.getParameter("name")%></p>
        <p>Gender: <%=user.getGender()%></p>
        <p>Languages: <%=user.getLanguage()%></p>
        <p>Country: <%=user.getCountry()%></p>



        <form action="<%=request.getContextPath()%>">
            <input type="submit" value="Повернутися"/>
        </form>
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