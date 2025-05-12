<%-- 
    Document   : total_students_outcome
    Created on : 07 May 2025, 2:11:18 PM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Total Number of Students Outcome Page</title>
    </head>
    <body>
        <h1>Total Number of Students Outcome</h1>
        <%
            Integer num = (Integer) request.getAttribute("num");
        %>
        <p>
            View the total number of students below:
        </p>
        <table>
            <tr>
                <td>Total Number Of Students:</td>
                <td>
                    <input type="text" value="<%=num%>" disabled=""/>
                </td>
            </tr>
        </table>
        <ul>
            <li><a href="menu.jsp">Menu.</a></li>
            <li><a href="LogoutServlet.do">Logout.</a></li>
        </ul>
    </body>
</html>