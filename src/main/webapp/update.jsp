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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/style.css">
    <title>Khomik page`s</title>
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
            <div class="form_container">
            <h1 class="main_title">Fill the form</h1>

            <form class="form" action="<%=request.getContextPath()%>/Forma" method="post">
            <input type="hidden" name="id" value="<%=request.getParameter("id")%>"/>
            <p><input class="form__input" type="text" name="name" value="<%=request.getParameter("name")%>" required></p>
            <p><input class="form__input" type="text" name="age" value="<%=request.getParameter("age")%>" required></p>
            <span class="form__input">What are you like?</span>
            
            <div class="form_wrapper">
                <%if (request.getParameter("test").equals("films")) {%>   
                <input class="form__input" type="radio" name="test" value="films" checked>
                <label class="label" for="films">Films</label> 
                <input class="form__input" type="radio" name="test" value="serials">
                <label class="label" for="serials">Serials</label>
                <%}%>
                <%if (request.getParameter("test").equals("serials")) {%>   
                <input class="form__input" type="radio" name="test" value="films" >
                <label class="label" for="films">Films</label> 
                <input class="form__input" type="radio" name="test" value="serials" checked>
                <label class="label" for="serials">Serials</label>
                <%}%>
            </div>
            <span class="form__input">What ganre of Films are you like?</span>
            <div class="form__wrapper">
                <%if (request.getParameter("ganre").equals("fantastic")) {%>
                <input class="form__input" type="radio" name="ganre" value="fantastic" checked>
                <label class="label" for="fantastic">Fantastic</label>
                <input class="form__input" type="radio" name="ganre" value="realism">
                <label class="label" for="realism">Realism</label>
                <input class="form__input" type="radio" name="ganre" value="any">
                <label class="label" for="any">Any</label>
                <%}%>
                <%if (request.getParameter("ganre").equals("realism")) {%>
                <input class="form__input" type="radio" name="ganre" value="fantastic">
                <label class="label" for="fantastic">Fantastic</label>
                <input class="form__input" type="radio" name="ganre" value="realism" checked>
                <label class="label" for="realism">Realism</label>
                <input class="form__input" type="radio" name="ganre" value="any">
                <label class="label" for="any">Any</label>
                <%}%>
                <%if (request.getParameter("ganre").equals("any")) {%>
                <input class="form__input" type="radio" name="ganre" value="fantastic">
                <label class="label" for="fantastic">Fantastic</label>
                <input class="form__input" type="radio" name="ganre" value="realism">
                <label class="label" for="realism">Realism</label>
                <input class="form__input" type="radio" name="ganre" value="any"  checked>
                <label class="label" for="any">Any</label>
                <%}%>
                
                <button class="section_btn btn" type="submit">Update</button>
            </div>
            
            
            <button class="section_btn btn" href="<%=request.getContextPath()%>">Return</button>
            
        </form>
        </div>
    </div>
  </body>
</html>