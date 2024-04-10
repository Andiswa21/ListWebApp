<%-- 
    Document   : get_list_outcome
    Created on : 11 Apr 2024, 1:05:04 AM
    Author     : admin
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            List<Integer> numbers = (List<Integer>)request.getAttribute("numbers");
        %>
        
        <p>
            These are the list of numbers : 
        </p>
        <table>
            
            <%
               for(int i = 0; i < numbers.size(); i++){
               int num = numbers.get(i);
            %>
            <tr>
                <td> <b><%=num%></b></td>
            </tr>
            
            <%
               }
               %>
        </table>
        
        <p>
        Please <a href="menu.html">click here </a> to go to the menu page or <a href="index.html">Click</a> here to got to the main page
    </p>
    </body>
</html>
