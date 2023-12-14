<%-- 
     Document  : users
    Created on : 20 Nov, 2023, 12:30
    Author     : Quinn Toye
    Updated: Kyle Roberts 20 Nov 2023, 13:08:00
    Updated Description: Added i18n and added bootstrap styling
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.solent.spring.map.model.User"%>
<%@page import="org.solent.spring.map.model.UserRole"%>
<c:set var = "selectedPage" value = "admin" scope="request"/>

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
    <title>User List | Insert Team Name Here - Map App</title>

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
<jsp:include page="header.jsp" />
<!-- start of users.jsp selectedPage=${selectedPage}-->


<main role="main" class="container">

    <div>
        <h1><fmt:message key="label.manageUsers" /></h1>
        <p><fmt:message key="label.showing" /> ${userListSize} <fmt:message key="label.users" /> </p>
        <div style="overflow-x:auto;">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col"><fmt:message key="label.id" /></th>
                        <th scope="col"><fmt:message key="label.username" /></th>
                        <th scope="col"><fmt:message key="label.firstName" /></th>
                        <th scope="col"><fmt:message key="label.secondName" /></th>
                        <th scope="col"><fmt:message key="label.status" /></th>
                        <th scope="col"><fmt:message key="label.role" /></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${userList}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.username}</td>
                            <td>${user.firstName}</td>
                            <td>${user.secondName}</td>
                            <!-- user.enabled=${user.enabled}-->
                            <td><c:if test="${user.enabled}">ENABLED</c:if><c:if test="${!user.enabled}">DISABLED</c:if></td>
                            <td>${user.userRole}</td>
                            <td>
                                <form action="./viewModifyUser" method="GET">
                                    <input type="hidden" name="username" value="${user.username}">
                                    <button class="btn" type="submit" ><fmt:message key="label.modifyUsersBtn" /></button>
                                </form> 
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </div>
        <form action="./register" method="GET">
            <button class="btn" type="submit" ><fmt:message key="label.addUsersBtn" /></button>
        </form> 
    </div>
        
    
</main>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" ></script>

<jsp:include page="footer.jsp" />
</html>
