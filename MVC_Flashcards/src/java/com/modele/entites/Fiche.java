package com.modele.entites;

/**
 * Date 07 oct 2020
 * @author Équipe Flashcard
 */
public class Fiche {
    
    private int idFiche;
    private int idMatiere;
    private int idEtudiant;
    private String texteQuestion;
    private String texteReponse;
    
    public Fiche(){}

    public Fiche(int idFiche) {
        this.idFiche = idFiche;
    }

    public Fiche(int idMatiere, int idEtudiant) {
        this.idMatiere = idMatiere;
        this.idEtudiant = idEtudiant;
    }

    public Fiche(int idFiche, String texteQuestion, String texteReponse) {
        this.idFiche = idFiche;
        this.texteQuestion = texteQuestion;
        this.texteReponse = texteReponse;
    }
    
    public Fiche(int idMatiere, int idEtudiant, String texteQuestion, String texteReponse) {
        this.idMatiere = idMatiere;
        this.idEtudiant = idEtudiant;
        this.texteQuestion = texteQuestion;
        this.texteReponse = texteReponse;
    }

    public Fiche(int idFiche, int idMatiere, int idEtudiant, String texteQuestion, String texteReponse) {
        this.idFiche = idFiche;
        this.idMatiere = idMatiere;
        this.idEtudiant = idEtudiant;
        this.texteQuestion = texteQuestion;
        this.texteReponse = texteReponse;
    }

    public int getIdFiche() {
        return idFiche;
    }

    public void setIdFiche(int idFiche) {
        this.idFiche = idFiche;
    }

    public int getIdMatiere() {
        return idMatiere;
    }

    public void setIdMatiere(int idMatiere) {
        this.idMatiere = idMatiere;
    }

    public int getIdEtudiant() {
        return idEtudiant;
    }

    public void setIdEtudiant(int idEtudiant) {
        this.idEtudiant = idEtudiant;
    }

    public String getTexteQuestion() {
        return texteQuestion;
    }

    public void setTexteQuestion(String texteQuestion) {
        this.texteQuestion = texteQuestion;
    }

    public String getTexteReponse() {
        return texteReponse;
    }

    public void setTexteReponse(String texteReponse) {
        this.texteReponse = texteReponse;
    }

    @Override
    public String toString() {
        return "Fiche{" + "idFiche=" + idFiche + ", idMatiere=" + idMatiere + ", idEtudiant=" + idEtudiant + ", texteQuestion=" + texteQuestion + ", texteReponse=" + texteReponse + '}';
    }
    
    
    
    
    
    
}
