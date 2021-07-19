package com.modele.dao;

/**
 * Date 07 oct 2020
 *
 * @author Équipe Flashcard
 */
import com.modele.dao.*;
import com.modele.entites.*;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FicheDAO {

    private static final String SQL_SELECT_ALL = "SELECT id_fiche, id_matiere, id_etudiant, texte_question, texte_reponse FROM fiche";
    private static final String SQL_SELECT_BY_IDMATIERE = "SELECT * FROM fiche WHERE id_matiere = ?";
    private static final String SQL_SELECT_BY_IDFICHE = "SELECT id_fiche, id_matiere, id_etudiant, texte_question, texte_reponse FROM fiche WHERE id_fiche = ?";
    private static final String SQL_SELECT_BY_IDETUDIANT = "SELECT * FROM fiche WHERE id_etudiant = ?";
    private static final String SQL_SELECT_BY_IDENTIFIANT_NOMMATIERE = "SELECT texte_question, texte_reponse FROM fiche JOIN etudiant ON fiche.id_etudiant = etudiant.id_etudiant JOIN matiere ON fiche.id_matiere = matiere.id_matiere WHERE identifiant = ? AND nom_matiere = ?";
    private static final String SQL_INSERT = "INSERT INTO fiche (id_matiere, id_etudiant, texte_question, texte_reponse) VALUES (?,?,?,?)";
    private static final String SQL_UPDATE_QUESTION_BY_NOMMATIERE_IDETUDIANT = "UPDATE fiche INNER JOIN  matiere ON fiche.id_matiere = matiere.id_matiere SET texte_question = ? WHERE nom_matiere = ? AND id_etudiant = ? ";
    private static final String SQL_UPDATE_QUESTION_BY_IDMATIERE_IDETUDIANT = "UPDATE fiche INNER JOIN  matiere ON fiche.id_matiere = matiere.id_matiere SET texte_question = ? WHERE id_matiere = ? AND id_etudiant = ? ";
    private static final String SQL_UPDATE_REPONSE = "UPDATE fiche INNER JOIN  matiere ON fiche.id_matiere = matiere.id_matiere SET texte_reponse = ? WHERE id_etudiant = ? AND nom_matiere = ?";
    private static final String SQL_UPDATE_QUESTION_REPONSE = "UPDATE fiche INNER JOIN  matiere ON fiche.id_matiere = matiere.id_matiere SET texte_question = ?, texte_reponse = ? WHERE id_etudiant = ? AND nom_matiere = ? AND id_fiche = ?";
    private static final String SQL_UPDATE_QUESTION_REPONSE_BY_IDFICHE = "UPDATE fiche SET texte_question = ?, texte_reponse = ? WHERE  id_fiche = ?";
    private static final String SQL_DELETE_BY_IDMATIERE = "DELETE FROM fiche WHERE id_matiere = ?";
    private static final String SQL_DELETE_BY_IDFICHE = "DELETE FROM fiche WHERE id_fiche = ?";

    /**
     * Méthode qui permet d'afficher la liste de toutes les fiches dans la BD
     *
     * @return une liste de fiches
     */
    public List<Fiche> selectionnerALL() throws ClassNotFoundException {

        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        Fiche e = null;

        List<Fiche> fiches = new ArrayList<>();

        try {

            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_SELECT_ALL);
            rs = stm.executeQuery();

            while (rs.next()) {
                int idFiche = rs.getInt("id_fiche");
                int idMatiere = rs.getInt("id_matiere");
                int idEtudiant = rs.getInt("id_etudiant");
                String texteQuestion = rs.getString("texte_question");
                String texteReponse = rs.getString("texte_reponse");

                e = new Fiche(idFiche, idMatiere, idEtudiant, texteQuestion, texteReponse);

                fiches.add(e);

            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                Connexion.close(rs);
                Connexion.close(stm);
                Connexion.close(cnx);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }

        }
        return fiches;
    }

    /**
     * Méthode qui permet de trouver une fiche en particulier
     *
     * @param f un object de type Fiche
     * @return une fiche
     * @throws ClassNotFoundException
     */
    public Fiche trouver(Fiche fiche) throws ClassNotFoundException {
        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {

            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_SELECT_BY_IDFICHE);
            stm.setInt(1, fiche.getIdFiche());
            rs = stm.executeQuery();
            
            while (rs.next()) {
                int idFiche = rs.getInt("id_fiche");
                int idMatiere = rs.getInt("id_matiere");
                int idEtudiant = rs.getInt("id_etudiant");
                String texteQuestion = rs.getString("texte_question");
                String texteReponse = rs.getString("texte_reponse");
                fiche.setTexteQuestion(texteQuestion);
                fiche.setTexteReponse(texteReponse);
            }
          

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {

                Connexion.close(rs);
                Connexion.close(stm);
                Connexion.close(cnx);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }

        }

        return fiche;

    }

    
    public static ArrayList<Fiche> selectionnerByIdMatiere(int id) throws ClassNotFoundException {

        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        ArrayList<Fiche> fiches = new ArrayList<>();

        try {

            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_SELECT_BY_IDMATIERE);
            stm.setInt(1, id);
            rs = stm.executeQuery();

            while (rs.next()) {
                int idFiche = rs.getInt("id_fiche");
                int idMatiere = rs.getInt("id_matiere");
                int idEtudiant = rs.getInt("id_etudiant");
                String texteQuestion = rs.getString("texte_question");
                String texteReponse = rs.getString("texte_reponse");

                Fiche e = new Fiche(idFiche, idMatiere, idEtudiant, texteQuestion, texteReponse);

                fiches.add(e);
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {

                Connexion.close(rs);
                Connexion.close(stm);
                Connexion.close(cnx);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }

        }

        return fiches;
    }

    /**
     * Méthode qui permet d'insérer une nouvelle fiche dans la table Fiche
     *
     * @param e un object de type Fiche
     * @return numéro de fiches insérées dans la DB
     * @throws ClassNotFoundException
     */
    public int insererFiche(Fiche e) throws ClassNotFoundException {
        Connection cnx = null;
        PreparedStatement stm = null;
        int idEtudiant = 0;
        int idMatiere = 0;
        int cmptEnregistrement = 0;

        try {
            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_INSERT);
            stm.setInt(1, e.getIdMatiere());
            stm.setInt(2, e.getIdEtudiant());
            stm.setString(3, e.getTexteQuestion());
            stm.setString(4, e.getTexteReponse());

            cmptEnregistrement = stm.executeUpdate();

            idEtudiant = e.getIdEtudiant();
            idMatiere = e.getIdMatiere();


        } catch (SQLException ex) {
            ex.printStackTrace(System.out);

        } finally {

            try {
                Connexion.close(stm);
                Connexion.close(cnx);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }

        return cmptEnregistrement;
    }


    /**
     * Méthode qui permet de mettre à jour la question et / ou la réponse d'une
     * fiche spécifique
     *
     * @param e un object de type Fiche
     * @return numéro d'enregistrements modifiés
     */
    public int modifierQuestionReponseByIdFiche(Fiche e) throws ClassNotFoundException {
        Connection cnx = null;
        PreparedStatement stm = null;
        int cmptEnregistrement = 0;

        try {
            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_UPDATE_QUESTION_REPONSE_BY_IDFICHE);
            stm.setString(1, e.getTexteQuestion());
            stm.setString(2, e.getTexteReponse());
            stm.setInt(3, e.getIdFiche());
            cmptEnregistrement = stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);

        } finally {

            try {
                Connexion.close(stm);
                Connexion.close(cnx);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }

        return cmptEnregistrement;
    }

    /**
     * Méthode qui permet la suppression d'un enregistrement sélectionné
     *
     * @param e un object de type Fiche
     * @return numéro d'enregistrements éffacés
     */
    public int effacerByIdFiche(Fiche e) throws ClassNotFoundException {
        Connection cnx = null;
        PreparedStatement stm = null;
        int cmptEnregistrement = 0;

        try {
            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_DELETE_BY_IDFICHE);
            stm.setInt(1, e.getIdFiche());
            cmptEnregistrement = stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);

        } finally {

            try {
                Connexion.close(stm);
                Connexion.close(cnx);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }

        return cmptEnregistrement;
    }
    
    public int effacerByIdMatiere(int id) throws ClassNotFoundException {
        Connection cnx = null;
        PreparedStatement stm = null;
        int cmptEnregistrement = 0;

        try {
            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_DELETE_BY_IDMATIERE);
            stm.setInt(1, id);
            cmptEnregistrement = stm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);

        } finally {

            try {
                Connexion.close(stm);
                Connexion.close(cnx);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return cmptEnregistrement;
    }
    
     public List<Fiche> selectionnerByIdEtudiant(Fiche e) throws ClassNotFoundException {

        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        List<Fiche> fiches = new ArrayList<>();

        try {

            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_SELECT_BY_IDETUDIANT);
            stm.setInt(1, e.getIdEtudiant());
            rs = stm.executeQuery();

            while (rs.next()) {
                int idFiche = rs.getInt("id_fiche");
                int idMatiere = rs.getInt("id_matiere");
                int idEtudiant = rs.getInt("id_etudiant");
                String texteQuestion = rs.getString("texte_question");
                String texteReponse = rs.getString("texte_reponse");

                e = new Fiche(idFiche, idMatiere, idEtudiant, texteQuestion, texteReponse);

                fiches.add(e);
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {

                Connexion.close(rs);
                Connexion.close(stm);
                Connexion.close(cnx);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }

        }

        return fiches;
    }

}

