<%-- 
    Document   : map
    Created on : 31 Oct 2023, 14:37:35
    Author     : Quinn Toye
    Updated    : Kyle Roberts 17 Nov 2023, 14:46:00
    Update Description: Changed the page title that is displayed to the user
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Map View | Insert Team Name Here - Map</title>

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

        <article>
            <header>
                <h1>The Map</h1>
            </header>
            <section>
                <div id="map" style="height: 440px; border: 1px solid #AAA;"></div>
                <div id="loader"></div>
            </section>
            <hr/>
        </article>


    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" ></script>
    
    <!-- Our JS map script importing-->
    <script type='text/javascript' src='./js/map/map.js'></script>
    <script type='text/javascript' src='./js/map/markers.js'></script>
    <!-- -->
</body>

<jsp:include page="footer.jsp" />

</html>

