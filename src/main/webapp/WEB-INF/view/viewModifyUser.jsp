<%-- 
    Document   : viewModifyUser
    Created on : Nov 20, 2023, 11:19:47 AM
    Author     : Quinn Toye
    Updated    : Kyle Roberts 20 Nov 2023, 13:08:00
    Updated Description: Added i18n and added bootstrap styling
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.solent.spring.map.model.User"%>
<%@page import="org.solent.spring.map.model.UserRole"%>
<c:set var = "selectedPage" value = "users" scope="request"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>

<fmt:setLocale value="${cookie['lang'].value}"/>
<fmt:setBundle basename="messages"/>
<!DOCTYPE html>
<html lang="${cookie['lang'].value}">
    <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Modify User | Insert Team Name Here - Map App</title>

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

<!-- Begin page content -->
<main role="main" class="container">

    <div>
        <H1><fmt:message key="label.userDetails" /> ${modifyUser.username} </H1>
        <!-- print error message if there is one -->
        <div style="color:red;">${errorMessage}</div>
        <div style="color:green;">${message}</div>

        <form action="./viewModifyUser" method="POST">
            <table class="table">
                <thead>
                </thead>

                <tbody>
                    <tr>
                        <td><fmt:message key="label.userId" /></td>
                        <td>${modifyUser.id}</td>
                    </tr>
                    <tr>
                        <td><fmt:message key="label.username" /></td>
                        <td>${modifyUser.username}</td>
                    </tr>
                    <tr>
                        <td><fmt:message key="label.firstName" /></td>
                        <td><input type="text" name="firstName" value="${modifyUser.firstName}" /></td>
                    </tr>
                    <tr>
                        <td><fmt:message key="label.secondName" /></td>
                        <td><input type="text" name="secondName" value="${modifyUser.secondName}" /></td>
                    </tr>
                    <tr>
                        <td><fmt:message key="label.houseNumber" /></td>
                        <td><input type="text" name="houseNumber" value="${modifyUser.address.houseNumber}" /></td>
                    </tr>
                    <tr>
                        <td><fmt:message key="label.addressLineOne" /></td>
                        <td><input type="text" name="addressLine1" value="${modifyUser.address.addressLine1}" /></td>
                    </tr>
                    <tr>
                        <td><fmt:message key="label.addressLineTwo" /></td>
                        <td><input type="text" name="addressLine2" value="${modifyUser.address.addressLine2}" /></td>
                    </tr>
                    <tr>
                        <td><fmt:message key="label.city" /></td>
                        <td><input type="text" name="county" value="${modifyUser.address.city}" /></td>
                    </tr>
                    <tr>
                        <td><fmt:message key="label.county" /></td>
                        <td><input type="text" name="county" value="${modifyUser.address.county}" /></td>
                    </tr>
                    <tr>
                        <td><fmt:message key="label.country" /></td>
                        <td><input type="text" name="country" value="${modifyUser.address.country}" /></td>
                    </tr>
                    <tr>
                        <td><fmt:message key="label.postcode" /></td>
                        <td><input type="text" name="postcode" value="${modifyUser.address.postcode}" /></td>
                    </tr>
                    <tr>
                        <td><fmt:message key="label.telephone" /></td>
                        <td><input type="text" name="telephone" value="${modifyUser.address.telephone}" /></td>
                    </tr>
                    <tr>
                        <td><fmt:message key="label.mobile" /></td>
                        <td><input type="text" name="mobile" value="${modifyUser.address.mobile}" /></td>
                    </tr>

                </tbody>

            </table>

            <c:if test="${sessionUser.userRole !='ADMINISTRATOR'}">
                <p><fmt:message key="label.userStatusAndRole" /> </p>
                <table class="table">
                    <thead>
                    </thead>
                    <tbody>
                        <tr>
                            <td><fmt:message key="label.role" /></td>
                            <td>${modifyUser.userRole}</td>
                        </tr>
                        <tr>
                            <td><fmt:message key="label.enabled" /></td>
                            <td><c:if test="${modifyUser.enabled}">ENABLED</c:if><c:if test="${!modifyUser.enabled}">DISABLED</c:if></td>
                            </tr>
                        </tbody>
                    </table>
            </c:if>

            <c:if test="${sessionUser.userRole =='ADMINISTRATOR'}">
                <p><fmt:message key="label.manageUserStatusAndRole" /> </p>
                <table class="table">
                    <thead>
                    </thead>
                    <tbody>
                        <tr>
                            <td><fmt:message key="label.role" /></td>
                            <td>
                                <select class="form-control" name="userRole" >
                                    <c:forEach var="value" items="${UserRole.values()}">
                                        <option value="${value}" <c:if test="${modifyUser.userRole == value}"> selected  </c:if>>${value}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><fmt:message key="label.enabled" /></td>
                            <td>
                                <select class="form-control" name="userEnabled" >
                                    <option value="true" <c:if test="${modifyUser.enabled}"> selected  </c:if> >ENABLED</option>
                                    <option value="false" <c:if test="${!modifyUser.enabled}"> selected  </c:if> >DISABLED</option>
                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
            </c:if>

            <input type="hidden" name="username" value="${modifyUser.username}"/>
            <button class="btn" type="submit" ><fmt:message key="label.updateUser" /> ${modifyUser.username}</button>
        </form>
        <p><fmt:message key="label.updatePassword" /></p>
        <form action="./viewModifyUser" method="post">
            <input type="hidden" name="username" value="${modifyUser.username}"/>
            <input type="hidden" name="action" value="updatePassword"/>
            <p><fmt:message key="label.password" /> <input type="password" name="password" ></input></p>
            <p><fmt:message key="label.reEnterPassword" /> <input type="password" name="password2" ></input></p>
            <button class="btn" type="submit" ><fmt:message key="label.update" /> ${modifyUser.username} <fmt:message key="label.password" /></button>
        </form>
        <c:if test="${sessionUser.userRole =='ADMINISTRATOR'}">
            <BR>
            <form action="./users">
                <button class="btn" type="submit" ><fmt:message key="label.returnToUsers" /></button>
            </form> 
        </c:if> 

        </div>
        
    

    </main>
        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" ></script>

<jsp:include page="footer.jsp" />
</html>
