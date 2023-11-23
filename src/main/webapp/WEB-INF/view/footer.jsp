<%-- 
    Document   : footer.jsp
    Created on : 30 Oct 2023, 16:14:08
    Author     : Blaise
    Updated    : Kyle Roberts 17 Nov 2023, 14:46:00
    Update Description: Inputted image links to home page and github repo, and added them into a table  
                        to make them inline vertically
    Updated: Kyle Roberts 20 Nov 2023, 13:08:00
    Updated Description: Added i18n 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>

<fmt:setLocale value="${cookie['lang'].value}"/>
<fmt:setBundle basename="messages"/>

<html lang="${cookie['lang'].value}">
        </div> <!-- /container -->

        <footer class="footer">
            <div class="container">
                <div>
                    <h4><fmt:message key="label.usefulLinks" /></h4>
                </div>
                <div style="display: inline">
                    <table>
                        <tbody>
                            <tr> 
                                <td>
                                    <div <% if ("index".equals(request.getAttribute("selectedPage"))) {%> class="active"  <% } %>>
                                        <a href="./index" title="Home Page">
                                            <img src="./images/homeicon.png" alt="Home Page" style="width: 50px; height:50px;"/>
                                         </a>
                                    </div> 
                                </td>
                                    
                                <td> 
                                    <div>
                                        <a href="https://github.com/willsephton/devops/tree/master" title="Team Github Repository">
                                            <img src="./images/githublogo.png" alt="Team Github Repository" style="width: 50px; height:50px;"/>
                                        </a>
                                    </div> 
                                </td>
                            </tr>
                        </tbody>
                            
                    </table>
                </div>
            </div>
        </footer>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <!--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>-->
        <script src="./resources/js/jquery.min.js"></script>
        <script src="./resources/js/bootstrap.min.js"></script>

    </body>
</html>
