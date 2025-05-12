package za.ac.tut.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.Subject;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2025-05-07T17:12:12")
@StaticMetamodel(Student.class)
public class Student_ { 

    public static volatile SingularAttribute<Student, byte[]> image;
    public static volatile SingularAttribute<Student, Character> gender;
    public static volatile SingularAttribute<Student, String> surname;
    public static volatile ListAttribute<Student, Subject> subjects;
    public static volatile SingularAttribute<Student, String> name;
    public static volatile SingularAttribute<Student, Long> id;
    public static volatile SingularAttribute<Student, Date> creationDate;
    public static volatile SingularAttribute<Student, Long> age;

}