
package com.modele.entites;

/**
 * Date 07 oct 2020
 * @author Équipe Flashcard
 */
public class Etudiant {
    
    private int idEtudiant;
    private String identifiant;
    private String motPasse;

    public Etudiant() {
    }

    public Etudiant(int idEtudiant) {
        this.idEtudiant = idEtudiant;
    }

    public Etudiant(String identifiant, String motPasse) {
        this.identifiant = identifiant;
        this.motPasse = motPasse;
    }

    public Etudiant(int idEtudiant, String identifiant, String motPasse) {
        this.idEtudiant = idEtudiant;
        this.identifiant = identifiant;
        this.motPasse = motPasse;
    }

    public int getIdEtudiant() {
        return idEtudiant;
    }

    public void setIdEtudiant(int idEtudiant) {
        this.idEtudiant = idEtudiant;
    }

    public String getIdentifiant() {
        return identifiant;
    }

    public void setIdentifiant(String identifiant) {
        this.identifiant = identifiant;
    }

    public String getMotPasse() {
        return motPasse;
    }

    public void setMotPasse(String motPasse) {
        this.motPasse = motPasse;
    }

    @Override
    public String toString() {
        return "Etudiant{" + "idEtudiant=" + idEtudiant + ", identifiant=" + identifiant + ", motPasse=" + motPasse + '}';
    }
   
    

   
    
}
