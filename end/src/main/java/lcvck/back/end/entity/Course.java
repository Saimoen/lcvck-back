package lcvck.back.end.entity;

import java.util.List;

public class Course {
    private String date;
    private String course;
    private List<Classement> classement;

    // Constructeurs, getters et setters


    public Course(String date, String course, List<Classement> classement) {
        this.date = date;
        this.course = course;
        this.classement = classement;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
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
