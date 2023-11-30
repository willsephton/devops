<%-- 
    Document   : PointListJSP.jsp
    Created on : 17 Nov 2023, 14:46:00
    Author     : Kyle Roberts
    Updated: Kyle Roberts 20 Nov 2023, 13:08:00
    Updated Description: Added i18n 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>

<fmt:setLocale value="${cookie['lang'].value}"/>
<fmt:setBundle basename="messages"/>
<!DOCTYPE html>
<html lang="${cookie['lang'].value}">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>List of Points | Insert Team Name Here - Add Map Marker</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />

<link href='https://fonts.googleapis.com/css?family=Roboto'
	rel='stylesheet' type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Exo'
	rel='stylesheet' type='text/css' />

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

</head>



    <jsp:include page="header.jsp" />
    
<body>

	<div class="container">

		    <H1><fmt:message key="label.home" /></H1>

		

		<article>
			<header>
				<h1><fmt:message key="label.mapPoints" /></h1>
				<p></p>
			</header>
			<div style="color: red;">${errorMessage}</div>
			<div style="color: green;">${message}</div>

                        <div style="overflow-x:auto;">
                            <table class="table">
                                    <thead>
                                            <tr>
                                                    <th scope="col"><fmt:message key="label.id" /></th>
                                                    <th scope="col"><fmt:message key="label.name" /></th>
                                                    <th scope="col"><fmt:message key="label.description" /></th>
                                                    <th scope="col"><fmt:message key="label.category" /></th>
                                                    <th scope="col"><fmt:message key="label.latitude" /></th>
                                                    <th scope="col"><fmt:message key="label.longitude" /></th>
                                                    <th scope="col"><fmt:message key="label.photoURL" /></th>
                                                    <th></th>
                                            </tr>
                                    </thead>
                                    <tbody>
                                            <c:forEach var="mapPoint" items="${mapPoints}">
                                                    <tr>
                                                            <td>${mapPoint.id}</td>
                                                            <td>${mapPoint.name}</td>
                                                            <td>${mapPoint.description}</td>
                                                            <td>${mapPoint.category}</td>
                                                            <td>${mapPoint.lat}</td>
                                                            <td>${mapPoint.lng}</td>
                                                            <td>${mapPoint.photoUrl}</td>
                                                            <td>
                                                                    <form action="./viewModifyPoint" method="POST">
                                                                            <input type="hidden" name="pointId" value="${mapPoint.id}">
                                                                            <input type="hidden" name="action" value="modifyPoint">
                                                                            <button class="btn" type="submit"><fmt:message key="label.modifyBtn" /></button>
                                                                    </form>
                                                                    <form action="./viewModifyPoint" method="POST">
                                                                            <input type="hidden" name="pointId" value="${mapPoint.id}">
                                                                            <input type="hidden" name="action" value="deletePoint">
                                                                            <button class="btn" type="submit"><fmt:message key="label.deleteBtn" /></button>
                                                                    </form>
                                                            </td>
                                                    </tr>
                                            </c:forEach>

                                    </tbody>
                            </table>
                        </div>

			<form action="./viewModifyPoint" method="POST">
				<input type="hidden" name="pointId" value="${mapPoint.id}">
				<input type="hidden" name="action" value="newPoint">
				<button class="btn" type="submit"><fmt:message key="label.addBtn" /></button>
			</form>

			<hr />
		</article>

	</div>
                                
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" ></script>

</body>



    <jsp:include page="footer.jsp" />
    
</html>