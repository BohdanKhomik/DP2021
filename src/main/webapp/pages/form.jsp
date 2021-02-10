<%-- 
    Document   : index
    Created on : 3 лют. 2021 р., 14:24:10
    Author     : 38068
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <form action="<%=request.getContextPath()%>/form" method="post">

                <input type="hidden" name="title" value="Submited"/>

                Full name: <input type="text" name="name"/><br/>

                Gender: 
                <input type="radio" name="gender" value="male"> Male
                <input type="radio" name="gender" value="female"> Female <br/>

                Languages know: 
                <input type="checkbox" name="language" value="English"> English
                <input type="checkbox" name="language" value="Ukrainian"> Ukrainian
                <input type="checkbox" name="language" value="French"> French <br/>

                Country: 
                <select name="country">
                    <option value="Ukraine">Ukraine</option>
                    <option value="USA">USA</option>
                    <option value="UK">UK</option>
                    <option value="Finland">Finland</option>
                    <option value="Fiji">Fiji</option>
                </select><br/>

                <input type="submit" value="Submit">   
            </form>
    </body>
</html>
