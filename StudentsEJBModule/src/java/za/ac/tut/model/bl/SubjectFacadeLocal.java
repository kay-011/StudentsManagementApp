/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Subject;

/**
 *
 * @author KHOTHATSO
 */
@Local
public interface SubjectFacadeLocal {

    void create(Subject subject);

    void edit(Subject subject);

    void remove(Subject subject);

    Subject find(Object id);

    List<Subject> findAll();

    List<Subject> findRange(int[] range);

    int count();
    
}
