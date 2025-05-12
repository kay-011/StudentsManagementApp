<%-- 
    Document   : get_avg_female_age
    Created on : 06 May 2025, 9:52:34 PM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Average Female Age Page</title>
    </head>
    <body>
        <h1>Get Average Female</h1>
        <p>
            Click the button below to get the average age of females.
        </p>
        <form action="GetAvgFemaleAgeServlet.do" method="get">
            <table>
                <tr>
                    <td><input type="submit" value="GET"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
