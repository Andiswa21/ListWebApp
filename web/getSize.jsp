<%-- 
    Document   : getSize
    Created on : 11 Apr 2024, 12:31:41 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Size Display Page</title>
    </head>
    <body>
        <%
            Integer size = (Integer)request.getAttribute("size");
        %>
        
        <p>
            The list consists of <%=size%> items 
        </p>
        
        <p>
        Please <a href="menu.html">click here </a> to go to the menu page or <a href="index.html">Click</a> here to got to the main page
    </p>
    </body>
</html>
