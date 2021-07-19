package com.modele.entites;

/**
 * Date 07 oct 2020
 * @author Équipe Flashcard
 */
public class Matiere {

    private int idMatiere;
    private String nomMatiere;
    private int idEtudiant;

    public Matiere() {
    }

    public Matiere(String nomMatiere) {
        this.nomMatiere = nomMatiere;
    }
    
    public Matiere(String nomMatiere,int idEtudiant) {
        this.nomMatiere = nomMatiere;
        this.idEtudiant = idEtudiant;
    }

    public Matiere(int idMatiere, String nomMatiere,int idEtudiant) {
        this.idMatiere = idMatiere;
        this.nomMatiere = nomMatiere;
        this.idEtudiant = idEtudiant;
    }
    public int getIdEtudiant() {
        return idEtudiant;
    }

    public void setIdEtudiant(int idEtudiant) {
        this.idEtudiant = idEtudiant;
    }

    public int getIdMatiere() {
        return idMatiere;
    }

    public void setIdMatiere(int idMatiere) {
        this.idMatiere = idMatiere;
    }

    public String getNomMatiere() {
        return nomMatiere;
    }

    public void setNomMatiere(String nomMatiere) {
        this.nomMatiere = nomMatiere;
    }

    @Override
    public String toString() {
        return "Matiere{" + "idMatiere=" + idMatiere + ", nomMatiere=" + nomMatiere + '}';
    }

}
