<%-- 
    Document   : remove_student
    Created on : 07 May 2025, 1:58:24 PM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Student Page</title>
    </head>
    <body>
        <h1>Remove Student</h1>
        <p>
            Enter a student number to remove a student:
        </p>
        <form action="RemoveStudentServlet.do" method="post">
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
                        <input type="submit" value="REMOVE STUDENT"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
