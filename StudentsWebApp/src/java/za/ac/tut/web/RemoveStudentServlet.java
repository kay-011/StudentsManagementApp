/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entities.Student;
import za.ac.tut.model.bl.StudentFacadeLocal;

/**
 *
 * @author KHOTHATSO
 */
public class RemoveStudentServlet extends HttpServlet {

    @EJB private StudentFacadeLocal facade;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long studNum = Long.valueOf(request.getParameter("id"));
        Student s = facade.find(studNum);
        facade.remove(s);
        
        RequestDispatcher rd = request.getRequestDispatcher("remove_student_outcome.jsp");
        rd.forward(request, response);
    }
}