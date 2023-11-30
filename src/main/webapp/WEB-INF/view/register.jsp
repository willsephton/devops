<%-- 
    Document   : register
    Created on : 20 Nov, 2023, 12:30
    Author     : Quinn Toye
    Updated    : Kyle Roberts 20 Nov 2023, 13:08:00
    Updated Description: Added i18n and added bootstrap styling
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>

<fmt:setLocale value="${cookie['lang'].value}"/>
<fmt:setBundle basename="messages"/>

<!-- Begin page content -->
<html lang="${cookie['lang'].value}">
     <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Register User | Insert Team Name Here - Map App</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />

    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Exo' rel='stylesheet' type='text/css'/>

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Begin page content -->
    <main role="main" class="container">
        <div style="color:red;">${errorMessage}</div>
        <div style="color:green;">${message}</div>
    </main>

</head>
<%
// request set in controller
//    request.setAttribute("selectedPage","contact");
%>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
    <H1><fmt:message key="label.createNewAccount" /></H1>
    <div style="color:red;">${errorMessage}</div>
    <div style="color:green;">${message}</div>


    <p><fmt:message key="label.userNameUniqueMessage" /></p>
    <form action="./register" method="POST">
        <input type="hidden" name="action" value="createNewAccount">
        <p><fmt:message key="label.username" /> <br><input type="text" name="username" ></input></p>
        <p><fmt:message key="label.password" /> <br><input type="password" name="password" ></input></p>
        <p><fmt:message key="label.reEnterPassword" /> <br><input type="password" name="password2" ></input></p><br>
        <p><button type="Create Account" ><fmt:message key="label.createAccount" /></button></p>
    </form> 
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" ></script>

</main>


<jsp:include page="footer.jsp" />

</html>
