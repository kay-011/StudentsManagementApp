<%-- 
    Document   : view_students
    Created on : 07 May 2025, 2:15:43 PM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Students Page</title>
    </head>
    <body>
        <h1>View Students</h1>
        <p>
            Click the button below to get the total number of students:
        </p>
        <form action="ViewAllStudentsServlet.do" method="get">
            <table>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="VIEW"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
