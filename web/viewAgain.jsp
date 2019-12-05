<%-- 
    Document   : viewAgain
    Created on : 19-Sep-2018, 12:26:11
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="business.User, data.UserIO" %>
      
        Name: <%= session.getAttribute("name") %> <br>
Address : <%= session.getAttribute("address") %><br>
City: <%= session.getAttribute("city") %><br>
Country : <%= session.getAttribute("country") %><br>
Phone : <%= session.getAttribute("phone") %><br>
Email : <%= session.getAttribute("email") %><br>
Gender: <%= session.getAttribute("gender") %><br>
How did you hear about Us:  <%= session.getAttribute("hearAboutUs") %><br>
Comment : <%= session.getAttribute("comment") %><br>

 <form action="index.jsp" method="get">

 <a href="index.jsp"><button>Edit</button></a>
<input type="submit"  value="Submit" name="btnSubmit"> <br>

    </body>
</html>
