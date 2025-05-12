<%-- 
    Document   : menu
    Created on : 06 May 2025, 10:49:18 AM
    Author     : KHOTHATSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
    </head>
    <body>
        <h1>Menu</h1>
        <p>
            Select an option below:
        </p>
        <ul>
            <p>
                -- JPA --
            </p>
            <li><a href="add_student.jsp">Add Student.</a></li>
            <li><a href="find_student.jsp">Find Student.</a></li>
            <li><a href="view_students.jsp">View Students.</a></li>
            <li><a href="remove_student.jsp">Remove Student.</a></li>
            <li><a href="total_students.jsp">Total Number of Students.</a></li>
            <p>
                -- JPQL --
            </p>
            <li>Click <a href="total_gender_perc.jsp">here</a> to get the total number of males and females constituting the class in percentage form.</li>
            <li>Click <a href="get_avg_male_age.jsp">here</a> to get the average age of males.</li>
            <li>Click <a href="get_avg_female_age.jsp">here</a> to get the average age of females.</li>
            <li>Click <a href="get_youngest_student.jsp">here</a> to get the youngest student.</li>
        </ul>
    </body>
</html>