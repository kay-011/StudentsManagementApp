/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.ac.tut.model.bl;

import java.util.List;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Local;
import za.ac.tut.entities.Student;

/**
 *
 * @author KHOTHATSO
 */
@Local
public interface StudentFacadeLocal {

    //JPA
    void create(Student student);
    void remove(Student student);
    Student find(Object id);
    List<Student> findAll();
    int count();
    
    //JQPL
    Long percStudents(Character gender);
    Double avgMaleAge();
    Double avgFemaleAge();
    Student getYoungestStud();
}
