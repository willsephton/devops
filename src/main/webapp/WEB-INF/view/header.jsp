<%-- 
    Document   : header.jsp
    Created on : 30 Oct 2023, 16:12:46
    Author     : Blaise
    Updated    : Kyle Roberts 17 Nov 2023, 14:46:00
    Update Description: Updated the nav bar to include a drop down from the Map button
                        to access the map itself and to modify/ add points to said map
    Updated: Kyle Roberts 20 Nov 2023, 13:08:00
    Updated Description: Added i18n 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>

<fmt:setLocale value="${cookie['lang'].value}"/>
<fmt:setBundle basename="messages"/>
<!DOCTYPE html>
<html lang="${cookie['lang'].value}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">        
        
        <meta name="description" content="">
        <meta name="author" content="">
        
        <!-- 
        FAVICON HERE 
        <link rel="icon" href="../../favicon.ico">
        -->
        
        <!--<link rel="canonical" href="https://getbootstrap.com/docs/3.3/examples/navbar/">-->

        <title>Navbar</title>
        <!-- Bootstrap core CSS -->
        <link href="./resources/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="./resources/css/navbar.css" rel="stylesheet">

    </head>

    <body>

        <div class="container">

            <!-- Static navbar -->
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="./index">InsertTeamNameHere - MapApp</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li <% if ("index".equals(request.getAttribute("selectedPage"))) {%> class="active"  <% } %> ><a href="./index"><fmt:message key="label.home" /></a></li> 
                            <li class="dropdown" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><fmt:message key="label.map" /><span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li <% if ("map".equals(request.getAttribute("selectedPage"))) {%>  class="active"  <% } %> ><a href="./map"><fmt:message key="label.openMap" /></a></li>
                                    <li <% if ("pointList".equals(request.getAttribute("selectedPage"))) {%>  class="active"  <% } %>><a href="./pointList"><fmt:message key="label.addOrEditMap" /></a></li>
                                </ul>
                            </li> 
                            
                            <li <% if ("changeLocaleSpring".equals(request.getAttribute("selectedPage"))) {%>  class="active"  <% }%> ><a href="./changeLocaleSpring"><fmt:message key="label.changeLanguage" /></a></li>  
                            
                            <c:if test="${sessionUser.userRole =='ADMINISTRATOR'}">
                                <li class="dropdown" >
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <fmt:message key="label.admin" /> <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="./users"><fmt:message key="label.manageUsers" /></a></li>
                                        <li><a href="./catalog"><fmt:message key="label.manageCatalogue" /></a></li>
                                    </ul>
                                </li>
                            </c:if>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <!-- user role:  ${sessionUser.userRole}-->
                            <c:if test="${sessionUser.userRole =='ANONYMOUS'}">
                                <li><a href="./login"><fmt:message key="label.loginOrCreateAccount" /></a></li>
                                </c:if>
                                <c:if test="${sessionUser.userRole !='ANONYMOUS'}">
                                <form id="logoutForm" method="POST" action="./logout">
                                </form>
                                <form id="profile" method="GET" action="./viewModifyUser">
                                    <input type="hidden" name="username" value="${sessionUser.username}"/>
                                </form>
                                <p class="text-muted"> <fmt:message key="label.welcome" />
                                    <c:if test="${sessionUser.userRole =='ADMINISTRATOR'}"> <fmt:message key="label.admin" /></c:if>                                   
                                    ${sessionUser.username}&nbsp;&nbsp;
                                    <a onclick="document.forms['logoutForm'].submit()"><fmt:message key="label.logout" /></a><BR>
                                    <a onclick="document.forms['profile'].submit()"><fmt:message key="label.userProfile" /></a></p>
                                </c:if>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div><!--/.container-fluid -->
            </nav>