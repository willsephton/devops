<%-- 
    Document   : PointListJSP.jsp
    Created on : 17 Nov 2023, 14:46:00
    Author     : Kyle Roberts
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
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

		    <H1>Home</H1>

		

		<article>
			<header>
				<h1>Map Points</h1>
				<p></p>
			</header>
			<div style="color: red;">${errorMessage}</div>
			<div style="color: green;">${message}</div>

			<table class="table">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">name</th>
						<th scope="col">description</th>
						<th scope="col">category</th>
						<th scope="col">Latitude</th>
						<th scope="col">Longitude</th>
						<th scope="col">photoUrl</th>
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
									<button class="btn" type="submit">Modify Point</button>
								</form>
								<form action="./viewModifyPoint" method="POST">
									<input type="hidden" name="pointId" value="${mapPoint.id}">
									<input type="hidden" name="action" value="deletePoint">
									<button class="btn" type="submit">Delete Point</button>
								</form>
							</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>

			<form action="./viewModifyPoint" method="POST">
				<input type="hidden" name="pointId" value="${mapPoint.id}">
				<input type="hidden" name="action" value="newPoint">
				<button class="btn" type="submit">Add Point</button>
			</form>

			<hr />
		</article>

	</div>
                                
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" ></script>

</body>



    <jsp:include page="footer.jsp" />
    
</html>