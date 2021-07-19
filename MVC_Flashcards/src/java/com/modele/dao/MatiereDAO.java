package com.modele.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.modele.entites.Connexion;
import com.modele.entites.Etudiant;
import com.modele.entites.Fiche;
import com.modele.entites.Matiere;

/**
 * Date 07 oct 2020
 *
 * @author Équipe Flashcard
 */
public class MatiereDAO {

    private static final String SQL_SELECT_ALL = "SELECT id_matiere, nom_matiere, id_etudiant FROM matiere";
    private static final String SQL_LISTE_MATIERES_BY_IDETUDIANT = "SELECT * FROM matiere WHERE id_etudiant = ?";
    private static final String SQL_MATIERE_NOM_BY_ID = "SELECT * FROM matiere WHERE id_matiere = ?";
    private static final String SQL_FICHE_BY_NOM_MATIERE = "SELECT id_fiche, fiche.id_matiere AS id_matiere, fiche.id_etudiant AS id_etudiant, texte_question, texte_reponse FROM fiche JOIN matiere ON fiche.id_matiere = matiere.id_matiere WHERE nom_matiere = ? AND matiere.id_etudiant = ?";
    private static final String SQL_UPDATE = "UPDATE matiere SET nom_matiere = ? WHERE id_matiere = ?";
    private static final String SQL_DELETE = "DELETE FROM matiere WHERE id_matiere = ?";
    private static final String SQL_SELECT_BY_IDETUDIANT = "select * from matiere where id_etudiant = ?";
    private static final String SQL_INSERT = "INSERT INTO matiere(nom_matiere,id_etudiant) VALUES(?,?)";
    

    /**
     * Méethode qui permet l'affichage de la table matiere
     *
     * @return liste
     */
    public List<Matiere> selectionnerALL() {

        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        Matiere m = null;

        List<Matiere> matieres = new ArrayList<>();

        try {

            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_SELECT_ALL);
            rs = stm.executeQuery();

            while (rs.next()) {
                int idMatiere = rs.getInt("id_matiere");
                String nomMatiere = rs.getString("nom_matiere");
                int idEtudiant = rs.getInt("id_etudiant");

                m = new Matiere(idMatiere, nomMatiere, idEtudiant);

                matieres.add(m);

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
        return matieres;
    }

    public static ArrayList<Matiere> obtenirNomMatieresByIdEtudiant(int id) throws SQLException {
        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        ArrayList<Matiere> matieres = new ArrayList<>();

        cnx = Connexion.getConnexion();
        stm = cnx.prepareStatement(SQL_LISTE_MATIERES_BY_IDETUDIANT);
        stm.setInt(1, id);
        rs = stm.executeQuery();
        Matiere m = null;
        while (rs.next()) {
            m = new Matiere();
            m.setIdEtudiant(id);
            m.setIdMatiere(rs.getInt("id_matiere"));
            m.setNomMatiere(rs.getString("nom_matiere"));
            matieres.add(m);
        }
        return matieres;
    }
    
    public static String obtenirNomMatiereByIdMatiere(int id) throws SQLException {
        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        cnx = Connexion.getConnexion();
        stm = cnx.prepareStatement(SQL_MATIERE_NOM_BY_ID);
        stm.setInt(1, id);
        rs = stm.executeQuery();        
        String nomMatiere=rs.getString("nom_matiere");
        return nomMatiere;
    }
    
    public static Matiere obtenirMatiereParIdMatiere(int id) throws SQLException {
        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        cnx = Connexion.getConnexion();
        stm = cnx.prepareStatement(SQL_MATIERE_NOM_BY_ID);
        stm.setInt(1, id);
        rs = stm.executeQuery();        
        int idMatiere=rs.getInt("id_matiere");
        String nomMatiere=rs.getString("nom_matiere");
        int idEtudiant=rs.getInt("id_etudiant");
        
        return(new Matiere(idMatiere, nomMatiere, idEtudiant));
    }

    public List<Fiche> obtenirFichesByNomMatiereIdEtudiant(Matiere m, Etudiant e) throws ClassNotFoundException {

        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        List<Fiche> fiches = new ArrayList<>();

        try {

            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_FICHE_BY_NOM_MATIERE);
            stm.setString(1, m.getNomMatiere());
            stm.setInt(2, e.getIdEtudiant());
            rs = stm.executeQuery();

            while (rs.next()) {
                Fiche f = new Fiche();
                int idFiche = rs.getInt("id_fiche");
                int idMatiere = rs.getInt("id_matiere");
                int idEtudiant = rs.getInt("id_etudiant");
                String texteQuestion = rs.getString("texte_question");
                String texteReponse = rs.getString("texte_reponse");

                f = new Fiche(idFiche, idMatiere, idEtudiant, texteQuestion, texteReponse);

                fiches.add(f);
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

    
    public static int modifierMatiere(String nom, int id) {
        Connection cnx = null;
        PreparedStatement stm = null;
        int cmptEnregistrement = 0;

        try {
            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_UPDATE);
            stm.setString(1, nom);
            stm.setInt(2, id);
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
            stm = cnx.prepareStatement(SQL_DELETE);
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
    
    public List<Matiere> selectionnerByIdEtudiant(int id) throws ClassNotFoundException {

        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        List<Matiere> matieres = new ArrayList<>();

        try {
            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_SELECT_BY_IDETUDIANT);
            stm.setInt(1,id);
            rs = stm.executeQuery();

            while (rs.next()) {
                Matiere m = new Matiere();
                int idMatiere = rs.getInt("id_matiere");
                String nomMatiere = rs.getString("nom_matiere");
                int idEtudiant = rs.getInt("id_etudiant");
                m = new Matiere(idMatiere,nomMatiere,idEtudiant);
                matieres.add(m);
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
        return matieres;
    }
    public int insererMatiere(Matiere m) {
        Connection cnx = null;
        PreparedStatement stm = null;
        int cmptEnregistrement = 0;

        try {
            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_INSERT);
            stm.setString(1, m.getNomMatiere());
            stm.setInt(2, m.getIdEtudiant());
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
}
