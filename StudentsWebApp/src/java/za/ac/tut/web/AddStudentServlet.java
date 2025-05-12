/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import za.ac.tut.entities.Student;
import za.ac.tut.entities.Subject;
import za.ac.tut.model.bl.StudentFacadeLocal;

/**
 *
 * @author KHOTHATSO
 */
@MultipartConfig
public class AddStudentServlet extends HttpServlet {

    @EJB private StudentFacadeLocal facade;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long studNum = Long.valueOf(request.getParameter("id"));
        Long age = Long.valueOf(request.getParameter("age"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        Character gender = request.getParameter("gender").charAt(0);
        String[] subjects = request.getParameter("subjects").split(",");
        
        Part part = request.getPart("image");
        InputStream in = part.getInputStream();
        byte [] image = writeImage(in);
        
        Student student = createStudent(studNum, name, surname, age, gender, image, subjects);
        facade.create(student);
        
        RequestDispatcher rd = request.getRequestDispatcher("add_student_outcome.jsp");
        rd.forward(request, response);
    }

    private byte[] writeImage(InputStream in) {
        ByteArrayOutputStream bios = new ByteArrayOutputStream();
        byte [] data = new byte[1024];
        int bufferRate;
        
        try {
            while((bufferRate = in.read(data, 0, data.length)) != -1){
                bios.write(data, 0, bufferRate);
            }
            bios.close();
        } catch (IOException ex) {
            Logger.getLogger(ex.getMessage());
        }
        return bios.toByteArray();
    }

    private Student createStudent(Long studNum, String name, String surname, Long age, Character gender, byte[] image, String[] subjects) {
        Student s = new Student();
        s.setName(name);
        s.setSurname(surname);
        s.setId(studNum);
        s.setAge(age);
        s.setCreationDate(new Date());
        s.setGender(gender);
        s.setImage(image);
        List<Subject> list = getSubjects(subjects);
        s.setSubjects(list);
        
        return s;
    }

    private List<Subject> getSubjects(String[] subjects) {
        List<Subject> list = new ArrayList<>();
        
        for (String subject : subjects) {
            Subject s = new Subject();
            s.setSubjectName(subject.trim());
            list.add(s);
        }
        return list;
    }
}