<%-- 
    Document   : total_students
    Created on : 07 May 2025, 2:04:48 PM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Total Number of Students Page</title>
    </head>
    <body>
        <h1>Total Number of Students</h1>
        <p>
            Click the button below to get the total number of students:
        </p>
        <form action="TotalNumStudentsServlet.do" method="get">
            <table>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="GET"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
