<%-- 
    Document   : total_gender_perc
    Created on : 06 May 2025, 8:44:03 PM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Total Gender Percentage Page</title>
    </head>
    <body>
        <h1>Total Gender Percentage</h1>
        <p>
            Click the button below to view the Total Gender Percentage
        </p>
        <form action="GetTotalGnederPercServlet.do" method="get">
            <table>
                <tr>
                    <td><input type="submit" value="GET"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
