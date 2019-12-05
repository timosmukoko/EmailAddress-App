<%-- 
    Document   : handleForm
    Created on : 19-Sep-2018, 11:15:41
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage = "emailAddressAppError.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="business.User, data.UserIO" %>
  <%
        session = request.getSession(true);
        String Name = request.getParameter("name");
        String Address = request.getParameter("address");
        String City = request.getParameter("city");
        String Country = request.getParameter("country");
         String Phone = request.getParameter("phone");
        String Email = request.getParameter("email");
         String Gender = request.getParameter("gender");
          String Comment= request.getParameter("comment");
        String HearAboutUs= request.getParameter("hear");
        
        HttpSession s=request.getSession();
 s.setAttribute("name",Name);
s.setAttribute("address", Address);
s.setAttribute("city", City);
s.setAttribute("Country", Country);
s.setAttribute("phone", Phone);
s.setAttribute("email", Email);
s.setAttribute("gender", Gender);
s.setAttribute("comment", Comment);
s.setAttribute("hearAboutUs",HearAboutUs);
                
       
      
        
        %>
        <p> Thanks  " <%= session.getAttribute("name") %>"  for submitting your details</p>
        <p>click<a href="viewAgain.jsp"><button>HERE</button></a> to view your details again</p>
    </body>
</html>
