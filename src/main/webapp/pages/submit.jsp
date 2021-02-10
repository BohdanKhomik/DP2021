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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.min.css">
    <title>MiToProj | Submit</title>
  </head>
  <body>
    <%@page import="java.util.List, org.obrii.mit.dp2021.toloshnyi.dp2021project.User"%>

    <% User user = (User) request.getAttribute("user");%>

    <div class="page">

      <div class="blured"></div>

      <section class="container">
        <header class="header">
          <div class="header__logo logo">
            <a href="<%=request.getContextPath()%>" class="logo__link">
              <svg width="134" height="56" viewBox="0 0 134 56" fill="none" xmlns="http://www.w3.org/2000/svg">
              <g clip-path="url(#clip0)">
              <path
                  d="M0 42.8367L22.5279 12.8845H26.3231L4.17021 42.8367H0ZM8.34042 42.8367L30.9787 12.8845H34.5532L12.5106 42.8367H8.34042Z"
                  fill="#BCBCBC" />
              </g>
              <path
                  d="M58.655 35.52C58.025 37.06 57.1383 38.25 55.995 39.09C54.8517 39.93 53.1367 40.35 50.85 40.35C47.98 40.35 45.9033 39.475 44.62 37.725C43.3367 35.9517 42.695 33.1983 42.695 29.465V26.035C42.695 22.3017 43.3367 19.56 44.62 17.81C45.9033 16.0367 47.98 15.15 50.85 15.15C53.1367 15.15 54.8517 15.57 55.995 16.41C57.1383 17.25 58.025 18.44 58.655 19.98L57.71 20.435C57.1733 19.0817 56.415 18.0433 55.435 17.32C54.455 16.5733 52.9267 16.2 50.85 16.2C49.7067 16.2 48.7267 16.3517 47.91 16.655C47.0933 16.935 46.3583 17.425 45.705 18.125C45.0517 18.825 44.5617 19.84 44.235 21.17C43.9083 22.4767 43.745 24.0983 43.745 26.035V29.465C43.745 31.4017 43.9083 33.035 44.235 34.365C44.5617 35.6717 45.0517 36.675 45.705 37.375C46.3583 38.075 47.0933 38.5767 47.91 38.88C48.7267 39.16 49.7067 39.3 50.85 39.3C52.9267 39.3 54.455 38.9383 55.435 38.215C56.415 37.4683 57.1733 36.4183 57.71 35.065L58.655 35.52ZM65.722 38.95H77.132L69.957 22.045L62.327 40H61.207L69.957 19.35L78.707 40H65.722V38.95ZM91.24 29.815L96 40H94.845L89.945 29.5C89.9917 29.4767 90.19 29.3833 90.54 29.22C90.9133 29.0333 91.17 28.905 91.31 28.835C91.45 28.7417 91.6833 28.59 92.01 28.38C92.3367 28.17 92.5817 27.9717 92.745 27.785C92.9083 27.575 93.0833 27.3417 93.27 27.085C93.48 26.805 93.6317 26.5017 93.725 26.175C93.8183 25.825 93.865 25.4517 93.865 25.055C93.865 23.585 93.165 22.5 91.765 21.8C90.365 21.1 88.6267 20.75 86.55 20.75H83.75V40H82.7V19.7H86.55C89.3033 19.7 91.38 20.1783 92.78 21.135C94.2033 22.0917 94.915 23.3983 94.915 25.055C94.915 26.1283 94.5533 27.085 93.83 27.925C93.1067 28.7417 92.2433 29.3717 91.24 29.815ZM106.102 19.28C108.995 19.28 111.049 19.9217 112.262 21.205L111.562 21.975C110.442 20.8783 108.669 20.33 106.242 20.33C102.602 20.33 100.782 21.7767 100.782 24.67C100.782 25.79 101.225 26.6883 102.112 27.365C102.999 28.0183 104.072 28.52 105.332 28.87C106.615 29.22 107.887 29.5933 109.147 29.99C110.43 30.3633 111.515 30.9817 112.402 31.845C113.289 32.685 113.732 33.7933 113.732 35.17C113.732 36.78 113.067 38.0633 111.737 39.02C110.407 39.9767 108.482 40.455 105.962 40.455C104.725 40.455 103.5 40.2917 102.287 39.965C101.097 39.6383 100.21 39.16 99.6269 38.53L100.327 37.76C101.517 38.8567 103.349 39.405 105.822 39.405C108.085 39.405 109.789 38.985 110.932 38.145C112.099 37.305 112.682 36.325 112.682 35.205C112.682 34.0383 112.239 33.0933 111.352 32.37C110.465 31.6467 109.38 31.11 108.097 30.76C106.837 30.3867 105.565 30.0133 104.282 29.64C103.022 29.2433 101.949 28.6367 101.062 27.82C100.175 27.0033 99.7319 25.93 99.7319 24.6C99.7319 22.8033 100.327 21.4733 101.517 20.61C102.73 19.7233 104.259 19.28 106.102 19.28Z"
                  fill="#BCBCBC" />
              <defs>
              <clipPath id="clip0">
                <rect width="48.8511" height="56" fill="white" />
              </clipPath>
              </defs>
              </svg>
            </a>
          </div>

          <nav class="header__nav nav">
            <ul class="nav__inner">
              <li class="nav__item">
                <a href="#" class="nav__link">Cars</a>
              </li>

              <li class="nav__item">
                <a href="<%=request.getContextPath()%>/pages/form.jsp" class="nav__link">Form</a>
              </li>

              <li class="nav__item">
                <a href="#" class="nav__link">History</a>
              </li>

              <li class="nav__item">
                <a href="#" class="nav__link">Gallery</a>
              </li>

              <li class="nav__item">
                <a href="#" class="nav__link">Rides</a>
              </li>
            </ul>
          </nav>
        </header>


        <div class="inner">
          <h1 class="title">order is processed</h1>
          <h2 class="subtitle">
            thank <span>YOU</span> for staying in contact with us!
          </h2>

          <p class="inner__text">

            Dear <span>
              <%=user.getName()%> <%=user.getSurname()%>
            </span>. 
            Your car with <span>
              <%
                  if (user.getConfiguration() != null) {
                    out.print(user.getConfiguration());
                  } else {
                     out.print("out top config");
                  }
              %>
            </span> is processing and will have been deliver in one of our spots in 
            <span>
              <%
                  if (user.getCountries() != null) {
                    out.print(user.getCountries());
                  } else {
                     out.print("Nowhere)");
                  }
              %>
            </span>.
          </p>

          <form action="<%=request.getContextPath()%>">
            <button class="submit" type="submit">go home</button>
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