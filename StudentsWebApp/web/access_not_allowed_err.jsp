<%-- 
    Document   : access_not_allowed_err
    Created on : 07 May 2025, 3:25:06 PM
    Author     : KHOTHATSO
--%>

<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Access Not Allowed Error Page</title>
    </head>
    <body>
        <h1>Access Not Allowed Error</h1>
        <%
            request.getSession().invalidate();
        %>
        <p>
            Access to the requested resource is denied.
        </p>
        <ul>
            <li><a href="menu.jsp">Menu.</a></li>
            <li><a href="LogoutServlet.do">Logout.</a></li>
        </ul>
    </body>
</html>
