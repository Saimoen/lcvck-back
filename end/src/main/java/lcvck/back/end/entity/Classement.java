package lcvck.back.end.entity;

import java.util.List;

public class Classement {
    private int position;
    private String dossard;
    private int num;
    private String equipage;
    private String categorie;
    private List<String> noms;
    private String temps;
    private String ecart;

    public Classement(int position, String dossard, int num, String equipage, String categorie, List<String> noms, String temps, String ecart) {
        this.position = position;
        this.dossard = dossard;
        this.num = num;
        this.equipage = equipage;
        this.categorie = categorie;
        this.noms = noms;
        this.temps = temps;
        this.ecart = ecart;
    }

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

    public List<String> getNoms() {
        return noms;
    }

    public void setNoms(List<String> noms) {
        this.noms = noms;
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
}
