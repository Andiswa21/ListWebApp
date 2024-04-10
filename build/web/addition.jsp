<%-- 
    Document   : addition
    Created on : 10 Apr 2024, 11:29:07 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        Integer num =  (Integer)request.getAttribute("num");
    %>
    
    <p>
        The number <%=num%> has been added to a list.
    </p>
    <p>
        Please <a href="menu.html">click here </a> to go to the menu page or <a href="index.html">Click</a> here to got to the main page
    </p>
    </body>
</html>
