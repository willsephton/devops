<%-- 
    Document   : termsAndConditions
    Created on : 5 Dec 2023, 14:20:21
    Author     : Quinn Toye
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
    <title>Terms & Conditions | Insert Team Name Here - Map App</title>

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
                <h1>Map Application - <fmt:message key="label.termsAndConditionsHeader" /></h1>
            </header>
            
            <section>
                
                <div id="homeContent" style="border: 1px solid #AAA;">
                    
                    <h3><fmt:message key="label.termsIntroHead" /></h3>
                    <p><fmt:message key="label.termsIntroContent" /></p>
                    
                    <h3><fmt:message key="label.termsCollectHead" /></h3>
                    <p><fmt:message key="label.termsCollectSubHead" /></p>
                    <ul>
                        <li><fmt:message key="label.termsCollectLi1" /></li>
                        <li><fmt:message key="label.termsCollectLi2" /></li>
                        <li><fmt:message key="label.termsCollectLi3" /></li>
                    </ul>
                    
                    <h3><fmt:message key="label.termsUseHead" /></h3>
                    <p><fmt:message key="label.termsUseSubHead" /></p>
                    <ul>
                        <li><fmt:message key="label.termsUseLi1" /></li>
                        <li><fmt:message key="label.termsUseLi2" /></li>
                        <li><fmt:message key="label.termsUseLi3" /></li>
                        <li><fmt:message key="label.termsUseLi4" /></li>
                        <li><fmt:message key="label.termsUseLi5" /></li>
                        <li><fmt:message key="label.termsUseLi6" /></li>
                    </ul>
                    
                    <h3><fmt:message key="label.termsShareHead" /></h3>
                    <p><fmt:message key="label.termsShareSubHead" /></p>
                    <ul>
                        <li><fmt:message key="label.termsShareLi1" /></li>
                        <li><fmt:message key="label.termsShareLi2" /></li>
                    </ul>
                    
                    <h3><fmt:message key="label.termsChoicesHead" /></h3>
                    <p><fmt:message key="label.termsChoicesSubHead" /></p>
                    <ul>
                        <li><fmt:message key="label.termsChoicesLi1" /></li>
                        <li><fmt:message key="label.termsChoicesLi2" /></li>
                        <li><fmt:message key="label.termsChoicesLi3" /></li>
                    </ul>
                    
                    <h3><fmt:message key="label.termsProtectHead" /></h3>
                    <p><fmt:message key="label.termsProtectContent" /></p>
                    
                    <h3><fmt:message key="label.termsRightsHead" /></h3>
                    <p><fmt:message key="label.termsRightsSubHead" /></p>
                    <ul>
                        <li><fmt:message key="label.termsRightsLi1" /></li>
                        <li><fmt:message key="label.termsRightsLi2" /></li>
                        <li><fmt:message key="label.termsRightsLi3" /></li>
                        <li><fmt:message key="label.termsRightsLi4" /></li>
                        <li><fmt:message key="label.termsRightsLi5" /></li>
                        <li><fmt:message key="label.termsRightsLi6" /></li>
                    </ul>
                    
                    <h3><fmt:message key="label.termsChangesHead" /></h3>
                    <p><fmt:message key="label.termsChangesContent" /></p>
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
