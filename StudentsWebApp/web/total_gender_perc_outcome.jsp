<%-- 
    Document   : total_gender_perc_outcome
    Created on : 06 May 2025, 8:54:30 PM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Total Gender Percentage Outcome Page</title>
    </head>
    <body>
        <h1>Total Gender Percentage Outcome</h1>
        <%
            Long femalePerc = (Long) request.getAttribute("femalePerc");
            Long malePerc = (Long) request.getAttribute("malePerc");
        %>
        <p>
            View the Total Gender Percentage Outcome below:
        </p>
        <table>
            <tr>
                <td>Female Percentage:</td>
                <td>
                    <input type="text" value="<%=femalePerc%>%" disabled=""/>
                </td>
            </tr>
            <tr>
                <td>Male Percentage:</td>
                <td>
                    <input type="text" value="<%=malePerc%>%" disabled=""/>
                </td>
            </tr>
        </table>
        <ul>
            <li><a href="menu.jsp">Menu.</a></li>
            <li><a href="LogoutServlet.do">Logout.</a></li>
        </ul>
    </body>
</html>
