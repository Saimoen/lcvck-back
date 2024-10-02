package lcvck.back.end.entity;

import java.util.List;

public class Course {
    private String course;
    private List<Classement> classement;

    // Constructeurs, getters et setters


    public Course(String course, List<Classement> classement) {
        this.course = course;
        this.classement = classement;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public List<Classement> getClassement() {
        return classement;
    }

    public void setClassement(List<Classement> classement) {
        this.classement = classement;
    }
}
