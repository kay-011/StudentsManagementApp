/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.model.bl;

import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Student;

/**
 *
 * @author KHOTHATSO
 */
@Stateless
public class StudentFacade extends AbstractFacade<Student> implements StudentFacadeLocal {

    @PersistenceContext(unitName = "StudentsEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }

    @RolesAllowed("principal")
    @Override
    public Long percStudents(Character gender) {
        Query q = em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.gender = :gender");
        Query q2 = em.createQuery("SELECT COUNT(s) FROM Student s");
        q.setParameter("gender", gender);
        Long numStudents = (Long) q.getSingleResult();
        Long total = (Long) q2.getSingleResult();
        
        return (numStudents * 100) / total;
    }

    @RolesAllowed("principal")
    @Override
    public Double avgMaleAge() {
        Query q = em.createQuery("SELECT AVG(s.age) FROM Student s WHERE s.gender = 'M'");
        return (Double) q.getSingleResult();
    }

    @RolesAllowed("principal")
    @Override
    public Double avgFemaleAge() {
        Query q = em.createQuery("SELECT AVG(s.age) FROM Student s WHERE s.gender = 'F'");
        return (Double) q.getSingleResult();
    }

    @RolesAllowed("principal")
    @Override
    public Student getYoungestStud() {
        Query q = em.createQuery("SELECT s FROM Student s WHERE s.age = (SELECT MIN(d.age) FROM Student d)").setMaxResults(1);
        return (Student) q.getSingleResult();
    }
}