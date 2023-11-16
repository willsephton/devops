<%-- 
    Document   : createAccountDetails
    Created on : 9 Nov 2023, 10:24:23
    Author     : Quinn Toye
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>ITNH - Create Account</title>

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
        
    <div>
        <h2>Create Account</h2>

        <!-- if initial create good -->
        
            <p><strong>Username & Password Accepted</strong> - Please add account details below</p>
            <br>
            <form action="./createAccountConf">
                
                <p>First Name: <br><input type="text" name="fName" ></input></p>
                <p>Surname: <br><input type="text" name="sName" ></input></p>
                
                <p>Address Line 1: <br><input type="text" name="addressL1" ></input></p>
                <p>Address Line 2: <br><input type="text" name="addressL2" ></input></p>
                <p>City/Town: <br><input type="text" name="cityTown" ></input></p>
                <p>County: <br><input type="text" name="county" ></input></p>
                <p>Post Code: <br><input type="text" name="postCode" ></input></p>
                
                <p>Country: <br><input type="text" name="country" ></input></p>
                <p>Telephone Number: <br><input type="text" name="phoneNum" ></input></p>
                
                <br>
                
                <input type="submit" value="createAccountConf" />
            </form>
            
            
           
        <!-- if initial create not good -->
            
            <p><strong>Account Creation Failed</strong> - try again!</p>     
            <br>           
            <form action="./createAccount">
                <input type="submit" value="Login" />
            </form>
        
    </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" ></script>
    
</body>

<jsp:include page="footer.jsp" />

</html>