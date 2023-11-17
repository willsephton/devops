<%-- 
    Document   : mapMarker
    Created on : 9 Nov 2023, 08:59:44
    Author     : Kyle Roberts
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page language="java" import="org.solent.spring.map.controller.MapPointRestController"%>
<%@page language="java" import="org.solent.spring.map.model.MapPoint"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Add Map Marker | Insert Team Name Here - Add Map Marker</title>

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

    <jsp:include page="header.jsp" />

    <body>
        <div class="container">
            
            <h1>Add a Map Marker</h1>
            
            <hr/>
    
            <form action="./save" method="POST">
                <div>
                    <label>Marker Name:</label>
                    <input type="text" name="markerName" placeholder="Name">
                </div>
                <div>
                    <label>Description:</label>
                    <input type="text" name="description" placeholder="Description">
                </div>
                <div>
                    <label>Category:</label>
                    <input type="text" name="category" placeholder="Category">
                </div>
                <div>
                    <label>Latitude:</label>
                    <input type="text" name="latitude" placeholder="Latitude">
                </div>
                <div>
                    <label>Longitude:</label>
                    <input type="text" name="longitude" placeholder="Longitude">
                </div>
                
                <button class="btn" type="submit" id="createBtn" >Create New Point</button>          
            </form>
            
          
            
            <hr/>
        </div>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" ></script>

    </body>

    <jsp:include page="footer.jsp" />
</html>
