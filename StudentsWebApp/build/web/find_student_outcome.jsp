<%-- 
    Document   : find_student_outcome
    Created on : 07 May 2025, 1:50:53 PM
    Author     : KHOTHATSO
--%>

<%@page import="za.ac.tut.entities.Subject"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Student Outcome Page</title>
    </head>
    <body>
        <h1>Find Student Outcome</h1>
        <%
            Student s = (Student) request.getAttribute("s");
        %>
        <p>
            View the Student Outcome below:
        </p>
        <table>
            <tr>
                <td>
                    <img src="data:image/jpeg;base64,<%= java.util.Base64.getEncoder().encodeToString(s.getImage())%>" width="150" height="150"/><br>
                </td>
            </tr>
            <tr>
                <td>Student Number:</td>
                <td>
                    <input type="text" value="<%=s.getId()%>" disabled=""/>
                </td>
            </tr>
            <tr>
                <td>Name:</td>
                <td>
                    <input type="text" value="<%=s.getName()%>" disabled=""/>
                </td>
            </tr>
            <tr>
                <td>Surname:</td>
                <td>
                    <input type="text" value="<%=s.getSurname()%>" disabled=""/>
                </td>
            </tr>
            <tr>
                <td>Age:</td>
                <td>
                    <input type="text" value="<%=s.getAge()%>" disabled=""/>
                </td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td>
                    <input type="text" value="<%=s.getGender()%>" disabled=""/>
                </td>
            </tr>
            <tr>
                <td>Subjects:</td>
                    <%
                        List<Subject> subjects = s.getSubjects();
                        for(int x = 0; x < subjects.size(); x++){
                            Subject subject = subjects.get(x);
                            String subjectName = subject.getSubjectName();
                    %>
                <td>
                    <input type="text" value="<%=subjectName%>" disabled=""/>
                </td>
                <%
                    }
                %>
            </tr>
            <tr>
                <td>Creation Date:</td>
                <td>
                    <input type="text" value="<%=s.getCreationDate()%>" disabled=""/>
                </td>
            </tr>
        </table>
        <ul>
            <li><a href="menu.jsp">Menu.</a></li>
            <li><a href="LogoutServlet.do">Logout.</a></li>
        </ul>
    </body>
</html>
