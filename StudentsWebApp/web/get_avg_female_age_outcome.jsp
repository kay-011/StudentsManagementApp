<%-- 
    Document   : get_avg_female_age_outcome
    Created on : 06 May 2025, 9:56:50 PM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Average Female Age Outcome Page</title>
    </head>
    <body>
        <h1>Get Average Female Age Outcome</h1>
        <%
            Double avg = (Double) request.getAttribute("avg");
        %>
        <p>
            View the average age of females.
        </p>
        <table>
            <tr>
                <td>Female Average age:</td>
                <td>
                    <input type="text" value="<%=avg%>" disabled=""/>
                </td>
            </tr>
        </table>
        <ul>
            <li><a href="menu.jsp">Menu.</a></li>
            <li><a href="LogoutServlet.do">Logout.</a></li>
        </ul>
    </body>
</html>
