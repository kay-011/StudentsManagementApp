<%-- 
    Document   : find_student
    Created on : 07 May 2025, 11:33:34 AM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Student Page</title>
    </head>
    <body>
        <h1>Find Student</h1>
        <p>
            Enter a student number to find a student:
        </p>
        <form action="FindStudentServlet.do" method="post">
            <table>
                <tr>
                    <td>Student Number:</td>
                    <td>
                        <input type="text" name="id" required=""/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="FIND STUDENT"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>