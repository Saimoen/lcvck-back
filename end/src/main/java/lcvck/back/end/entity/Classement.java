package lcvck.back.end.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;

import java.util.List;

@Entity
public class Classement {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int position;
    private String dossard;
    private int num;
    private String equipage;
    private String categorie;

    private String nom;
    private String temps;
    private String ecart;

    @ManyToOne  // Change la relation à ManyToOne
    @JsonIgnore  // Ignore cette relation lors de la sérialisation pour éviter les boucles infinies
    private Course course;

    public Classement(int position, String dossard, int num, String equipage, String categorie, String nom, String temps, String ecart) {
        this.position = position;
        this.dossard = dossard;
        this.num = num;
        this.equipage = equipage;
        this.categorie = categorie;
        this.nom = nom;
        this.temps = temps;
        this.ecart = ecart;
    }

    public Classement() {}

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public String getDossard() {
        return dossard;
    }

    public void setDossard(String dossard) {
        this.dossard = dossard;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getEquipage() {
        return equipage;
    }

    public void setEquipage(String equipage) {
        this.equipage = equipage;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public String getNom() {
        return nom;
    }

    public void setNoms(String nom) {
        this.nom = nom;
    }

    public String getTemps() {
        return temps;
    }

    public void setTemps(String temps) {
        this.temps = temps;
    }

    public String getEcart() {
        return ecart;
    }

    public void setEcart(String ecart) {
        this.ecart = ecart;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
