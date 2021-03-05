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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">
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
   </form>
    <div class="section">
            <div class="form_container">
            <h1 class="main_title">Fill the form</h1>

            <form class="form" action="<%=request.getContextPath()%>/" method="post">
            <input type="hidden" name="id" value="0"/>
            <p><input class="form__input" type="text" name="name" placeholder="First name" required></p>
            <p><input class="form__input" type="text" name="age" placeholder="Age" required></p>
            <span class="form__input">What are you like?</span>
            <div class="form_wrapper">
                <input class="form__input" type="radio" name="test" value="films">
                <label class="label" for="films">Films</label> 
                <input class="form__input" type="radio" name="test" value="serials">
                <label class="label" for="serials">Serials</label>
            </div>
            <span class="form__input">What ganre of Films are you like?</span>
            <div class="form__wrapper">
                <input class="form__input" type="radio" name="ganre" value="fantastic">
                <label class="label" for="fantastic">Fantastic</label>
                <input class="form__input" type="radio" name="ganre" value="realism">
                <label class="label" for="realism">Realism</label>
                <input class="form__input" type="radio" name="ganre" value="any">
                <label class="label" for="any">Any</label>
            </div>
            
            
            
            <button class="section_btn btn" type="submit">Submit</button>
        </form>
        </div>
    </div>
  </body>
</html>