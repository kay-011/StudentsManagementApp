<%-- 
    Document   : get_youngest_student
    Created on : 06 May 2025, 10:02:19 PM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Youngest Student Page</title>
    </head>
    <body>
        <h1>Get Youngest Student</h1>
        <p>
            Click the button below to view the youngest student.
        </p>
        <form action="GetYoungestStudentServlet.do" method="get">
            <table>
                <tr>
                    <td>
                        <input type="submit" value="GET"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
