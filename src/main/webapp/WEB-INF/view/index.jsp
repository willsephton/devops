<%-- 
    Updated: Kyle Roberts 20 Nov 2023, 13:08:00
    Updated Description: Added i18n 
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                <h1>Map Application - <fmt:message key="label.home" /></h1>
            </header>
            
            <section>
                
                <div id="homeContent" style="height: 440px; border: 1px solid #AAA;">
                    <h2>Insert Team Name Here - Map Application</h2>
                    <p><fmt:message key="label.teamMemberRoles" /></p>
                    <ul>
                        <li>Iona Pitt - <fmt:message key="label.backEnd" /></li>
                        <li>Kyle Roberts - <fmt:message key="label.clientSide" /></li>
                        <li>William Sephton - <fmt:message key="label.backEnd" /></li>
                        <li>Quinn Toye - <fmt:message key="label.clientSide" /></li>
                        <li>Blaise Tyree - <fmt:message key="label.backEnd" /></li>
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