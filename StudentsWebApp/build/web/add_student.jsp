<%-- 
    Document   : add_student
    Created on : 06 May 2025, 10:55:41 AM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student Page</title>
    </head>
    <body>
        <h1>Add Student</h1>
        <p>
            Enter the student details below:
        </p>
        <form action="AddStudentServlet.do" method="post" enctype="multipart/form-data">
            <table>
                <tr>
                    <td>Student Number:</td>
                    <td>
                        <input type="text" name="id" required=""/>
                    </td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="name" required=""/>
                    </td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td>
                        <input type="text" name="surname" required=""/>
                    </td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td>
                        <input type="text" name="age" required=""/>
                    </td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <select name="gender">
                            <option disabled="">-- SELECT --</option>
                            <option value="F">Female</option>
                            <option value="M">Male</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Photo:</td>
                    <td>
                        <input type="file" name="image" required=""/>
                    </td>
                </tr>
                <tr>
                    <td>Subjects (separated by a comma ','):</td>
                    <td>
                        <input type="text" name="subjects" required=""/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="ADD STUDENT"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>