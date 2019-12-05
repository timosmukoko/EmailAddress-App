<%-- 
    Document   : index
    Created on : 17-Sep-2018, 12:39:56
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
       
        
        <% if (session.getAttribute("name") == null) { %>
         <h1>Please Send Us Your Details </h1>
  <form action="handleForm.jsp" method="get">
            <table cellspacing="5" border="0"> 
                <tr>
                     <td align="right"> Name: </td>
                     <td><input type="text" name="name"> </td>
                </tr> 
               
                <tr>
                     <td align="right"> Address: </td>
                     <td><input type="text" name="address"> </td>
                </tr> 
                
                <tr>
                     <td align="right"> City: </td>
                     <td><input type="text" name="city"> </td>
                </tr> 
                 <tr>
                     <td align="right"> Country: </td>
                     <td><input type="text" name="country"> </td>
                </tr> 
                <tr>
                     <td align="right"> Phone: </td>
                     <td><input type="text" name="phone"> </td>
                </tr> 
                 <tr>
                     <td align="right"> Email: </td>
                     <td><input type="text" name="email"> </td>
                </tr> 
                <tr><td align="right"> Gender : </td>
                    <td>
                  <input type="radio" name="gender" value="male"> Male
                  <input type="radio" name="gender" value="female"> Female</td>
  </tr>
   <tr><td align="right"> How did you hear about us : </td>
                    <td>
                        <input type="checkbox" name="hear" value="twritter"> Twritter
                  <input type="checkbox" name="hear" value="facebook"> Facebook
                  <input type="checkbox" name="hear" value="newspaper"> Newspaper
                  <input type="checkbox" name="hear" value="radio"> Radio
                    <input type="checkbox" name="hear" value="radio"> Other</td>
  </tr>
                <tr>
                    
                <tr>
                    
                    <td align="right">Comment : </td>
                    <td> <textarea rows="4" name="comment" cols="50">

</textarea>
                        <br>
                        <input type="button" name="clear" value="Clear"/>
                    </td>
                </tr>
                    <td></td>
                    <td><br><input type="submit" value="Submit"> </td>
                </tr>
                
                
                
            </table>
        </form> 
<% }



else {%>

        <%if (request.getParameter("btnSubmit") != null) {%>
        
        <p> one</p>
  <%@ page import="business.User, data.UserIO" %>
       <%   
        
          ServletContext sc = this.getServletContext();
        
        String path = sc.getRealPath("/WEB-INF/EmailList.txt");
        
        
         String Name = (String)request.getSession().getAttribute("name"); 
        String Address =(String)request.getSession().getAttribute("address"); 
        
        String City = (String)request.getSession().getAttribute("city"); 
        String Country =(String)request.getSession().getAttribute("country");
        String Phone =(String)request.getSession().getAttribute("phone"); 
        String Email = (String)request.getSession().getAttribute("email"); 
        String Gender = (String)request.getSession().getAttribute("gender");
        String Comment =(String)request.getSession().getAttribute("comment");
        String HearAboutUs =(String)request.getSession().getAttribute("hearAboutUs"); 
        User user = new User(Name, Address, City,Country,Phone, Email,Gender, Comment, HearAboutUs);
        
        UserIO.add(user, path);
        

   %>
                  <% }



else {%>
 <h1>Please Edit Your  Details </h1>
 <form action="handleForm.jsp" method="get">
            <table cellspacing="5" border="0"> 
                <tr>
                     <td align="right"> Name: </td>
                     <td><input type="text" value=" <%= session.getAttribute("name") %>"> </td>
                </tr> 
               
                <tr>
                     <td align="right"> Address: </td>
                     <td><input type="text" value=" <%= session.getAttribute("address") %>"> </td>
                </tr> 
                
                <tr>
                     <td align="right"> City: </td>
                     <td><input type="text"  value=" <%= session.getAttribute("city") %>">  </td>
                </tr> 
                 <tr>
                     <td align="right"> Country: </td>
                     <td><input type="text" name="country"  value=" <%= session.getAttribute("country") %>"> </td>
                </tr> 
                <tr>
                     <td align="right"> Phone: </td>
                     <td><input type="text" name="phone" value=" <%= session.getAttribute("phone") %>"> </td>
                </tr> 
                 <tr>
                     <td align="right"> Email: </td>
                     <td><input type="text" name="email"  value=" <%= session.getAttribute("email") %>"> </td>
                </tr> 
                <tr><td align="right"> Gender : </td>
                    <td>
                  <input type="radio" name="gender" value=" <%= session.getAttribute("male") %>"> Male
                  <input type="radio" name="gender" value=" <%= session.getAttribute("female") %>"> Female</td>
  </tr>
   <tr><td align="right"> How did you hear about us : </td>
                    <td>
                        <input type="checkbox" name="hear" value=" <%= session.getAttribute("twitter") %>"> Twritter
                  <input type="checkbox" name="hear" value=" <%= session.getAttribute("facebook") %>"> Facebook
                  <input type="checkbox" name="hear" value="newspaper"> Newspaper
                  <input type="checkbox" name="hear" value="radio"> Radio
                    <input type="checkbox" name="hear" value="radio"> Other</td>
  </tr>
                <tr>
                    
                <tr>
                    
                    <td align="right">Comment : </td>
                    <td> <textarea rows="4" name="comment" cols="50" value=" <%= session.getAttribute("value") %>">

</textarea>
                        <br>
                        <input type="button" name="clear" value="Clear"/>
                    </td>
                </tr>
                    <td></td>
                    <td><br><input type="submit" value="Submit"> </td>
                </tr>
                
                
                
            </table>
        </form> 




                     <% } %>
           
<% } %>
             
       
        
    </body>
</html>
