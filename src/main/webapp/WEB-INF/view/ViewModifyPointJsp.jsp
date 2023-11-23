<%-- 
    Document   : viewModifyPointList.jsp
    Created on : 17 Nov 2023, 14:46:00
    Author     : Kyle Roberts
    Updated: Kyle Roberts 20 Nov 2023, 13:08:00
    Updated Description: Added i18n 
--%>

<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>Add/Modify Point | Insert Team Name Here - Add Map Marker</title>

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

		

		<article>
			<header>
				<h1><fmt:message key="label.mapPointCreateorUpdate" /></h1>
			</header>
			<div style="color: red;">${errorMessage}</div>
			<div style="color: green;">${message}</div>

			<form action="./viewModifyPoint" method="POST">
				<table class="table">
					<thead>
						<tr>
							<th><fmt:message key="label.attribute" /></th>
							<th><fmt:message key="label.value" /></th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td><fmt:message key="label.id" /></td>
							<td>${mapPoint.id}</td>
						</tr>
						<tr>
							<td><fmt:message key="label.name" /></td>
							<td><input type="text" name="pointName"
								value="${mapPoint.name}" /></td>
						</tr>
						<tr>
							<td><fmt:message key="label.description" /></td>
							<td><input type="text" name="pointDescription"
								value="${mapPoint.description}" /></td>
						</tr>
						<tr>
							<td><fmt:message key="label.category" /></td>
							<td><input type="text" name="pointCategory"
								value="${mapPoint.category}" /></td>
						</tr>
						<tr>
							<td><fmt:message key="label.latitude" /></td>
							<td><input type="text" name="pointlat"
								value="${mapPoint.lat}" /></td>
						</tr>
						<tr>
							<td><fmt:message key="label.longitude" /></td>
							<td><input type="text" name="pointlon"
								value="${mapPoint.lng}" /></td>
						</tr>
						<tr>
							<td><fmt:message key="label.photoURL" /></td>
							<td>${mapPoint.photoUrl}</td>
						</tr>
					</tbody>
				</table>
				<input type="hidden" name="pointId" value="${mapPoint.id}" />
				<input type="hidden" name="pointphotoUrl" value="${mapPoint.photoUrl}" />
				<input type="hidden" name="action" value="updatePoint">
				<button class="btn" type="submit"><fmt:message key="label.modifyCreateBtn" /></button>
			</form>

        <!-- adding photo -->
        <!-- see https://www.codejava.net/frameworks/spring-boot/spring-boot-file-upload-tutorial -->
        <div>
           <label><fmt:message key="label.photo" /> </label>
           <img src="./user-photos/${mapPoint.id}/${mapPoint.photoUrl}" alt="${mapPoint.name} ${mapPoint.id} image" width="100" height="100" />
           
           
           <form action="./viewModifyPoint" method="POST" enctype="multipart/form-data">
               <input class="btn" type="file" name="image" accept="image/png, image/jpeg" capture="camera">
               <input type="hidden" name="pointId" value="${mapPoint.id}" />
                <input type="hidden" name="action" value="updatePointPhoto">
               <button class="btn" type="submit" ><fmt:message key="label.updatePhoto" /></button>
           </form>
        </div>

			<hr />
		</article>

		

	</div>
                
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" ></script>

</body>



    <jsp:include page="footer.jsp" />
    
</html>