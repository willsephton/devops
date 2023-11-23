<%-- 
    Document   : changeLocaleSpring
    Created on : 19 Nov 2023, 18:27:24
    Author     : Kyle Roberts
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>

<fmt:setLocale value="${cookie['lang'].value}"/>
<fmt:setBundle basename="messages"/>

<html lang="${cookie['lang'].value}">
<head>
    
    <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>i18n | Insert Team Name Here</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />

        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'/>
        <link href='https://fonts.googleapis.com/css?family=Exo' rel='stylesheet' type='text/css'/>

        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <!-- Leaflet library import-->
        <link rel="stylesheet" type="text/css" href="./css/leaflet.css" />
        <link rel="stylesheet" type="text/css" href="./css/leaflet-loader.css" />
        <script type='text/javascript' src='./js/jquery.min.js'></script>
        <script type='text/javascript' src='./js/leaflet.js'></script>
        <script type='text/javascript' src='./js/leaflet-loader.js'></script>
        <script type='text/javascript' src='./js/leaflet-layerjson.min.js'></script>
    
        <!-- Begin page content -->
        <main role="main" class="container">
            <div style="color:red;">${errorMessage}</div>
            <div style="color:green;">${message}</div>
        </main>
    

    
</head>
<body>
    
    <table>
        <tbody>
            <tr> 
                <td>
                    <div <% if ("index".equals(request.getAttribute("selectedPage"))) {%> class="active"  <% } %>>
                        <a href="./index" title="Home Page">
                            <img src="./images/homeicon.png" alt="Home Page" style="width: 50px; height:50px;"/>
                        </a>
                    </div> 
                </td>
                                    
                <td> 
                    <div>
                        <h2><fmt:message key="label.chooseLanguage" /></h2>
                    </div> 
                </td>
            </tr>
        </tbody>                 
</table>
	<h2>
		<fmt:message key="label.chooseCookieLocale" />
	</h2>
	<ul>
		<li><a href="?cookieLocale=en"><fmt:message key="label.lang.en" /></a></li>
		<li><a href="?cookieLocale=de"><fmt:message key="label.lang.de" /></a></li>
                <li><a href="?cookieLocale=fr"><fmt:message key="label.lang.fr" /></a></li>
	</ul>
	<c:if test="${not empty param.cookieLocale}">
		<fmt:message key="label.cookieChangeSuccess" />
	</c:if>
	
</body>
</html>
