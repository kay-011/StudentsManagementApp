<%-- 
    Document   : get_avg_male_age
    Created on : 06 May 2025, 9:25:30 PM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Average Male Age Page</title>
    </head>
    <body>
        <h1>Get Average Male Age</h1>
        <p>
            Click the button below to get the average age of males.
        </p>
        <form action="GetAvgMaleAgeServlet.do" method="get">
            <table>
                <tr>
                    <td><input type="submit" value="GET"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
