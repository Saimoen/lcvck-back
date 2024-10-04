package lcvck.back.end.entity;
import jakarta.persistence.*;

import java.util.List;

@Entity
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String date;
    private String course;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)  // Utilise OneToMany
    @JoinColumn(name = "classement_id")  // Change le nom de la colonne
    private List<Classement> classements;  // Change pour List<Classement>


    // Constructeurs, getters et setters


    public Course(String date, String course, List<Classement> classements) {
        this.date = date;
        this.course = course;
        this.classements = classements;
    }

    public Course() {}

    public Course(Course course, Classement classements) {
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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Classement> getClassements() {
        return classements;
    }

    public void setClassements(List<Classement> classements) {
        this.classements = classements;
    }
}
