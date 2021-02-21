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
    <div class="section">
            <div class="form_container">
            <h1 class="main_title">Fill the form</h1>

            <form class="form" action="<%=request.getContextPath()%>/form" method="post">
            <input type="hidden" name="title" value="Submitted">
            
            <p><input class="form__input" type="text" name="name" placeholder="First name" required></p>
            <p><input class="form__input" type="radio" name="message" value="parent" checked>
                      <span>parent</span>
            </p>
            <p><input class="form__input" type="radio" name="message" value="overriden">
                      <span>overriden</span>
            </p>
            <p><input class="form__input" type="radio" name="interface" value="old" checked>
                      <span>old</span>
            </p>
            <p><input class="form__input" type="radio" name="interface" value="new">
                      <span>new</span>
            </p>
            <div class="form__blck">
                <span class="form__input">Gender:</span>
                <div class="input__outer">
                    <div class="form__wrapper">
                        <input class="form__input" type="radio" name="gender" value="male" id="open">
                        <label class="form__label form__label--radio" for="man">Man</label>
                    </div>

                    <div class="form__wrapper">
                        <input class="form__input" type="radio" name="gender" value="female" id="close">
                        <label class="form__label form__label--radio" for="Woman">Woman</label>
                    </div>
                </div>
            </div>
            <button class="section_btn btn" type="submit">Submit</button>
        </form>
        </div>
    </div>

  </body>
</html>