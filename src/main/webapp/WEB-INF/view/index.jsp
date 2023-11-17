<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Home | Insert Team Name Here - Map App</title>

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

<body>

    <div class="container">

        <article>
            <header>
                <h1>Map Application - Home</h1>
            </header>
            
            <section>
                
                <div id="homeContent" style="height: 440px; border: 1px solid #AAA;">
                    <h2>Insert Team Name Here - Map Application</h2>
                    <p>Team Members & Roles:</p>
                    <ul>
                        <li>Iona Pitt - Back End</li>
                        <li>Kyle Roberts - Client Side</li>
                        <li>William Sephton - Back End</li>
                        <li>Quinn Toye - Client Side</li>
                        <li>Blaise Tyree - Back End</li>
                    </ul>

                </div>

            </section>
            <hr/>
        </article>
        
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" ></script>
    
    
</body>

<jsp:include page="footer.jsp" />


</html>