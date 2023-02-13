package com.modele.dao;

/**
 * Date 07 oct 2020
 *
 * @author Équipe Flashcard
 */
import com.modele.entites.Etudiant;
import com.modele.entites.Connexion;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class EtudiantDAO {

    private static final String SQL_SELECT_ALL = "SELECT id_etudiant, identifiant, mot_passe FROM etudiant";
    private static final String SQL_SELECT_BY_ID = "SELECT id_etudiant, identifiant, mot_passe FROM etudiant WHERE id_etudiant = ?";
    private static final String SQL_SELECT_BY_IDENTIFIANT_MOTPASSE = "SELECT id_etudiant, identifiant, mot_passe FROM etudiant WHERE identifiant = ? AND mot_passe = ? ";
    private static final String SQL_SELECT_BY_IDENTIFIANT = "SELECT id_etudiant, identifiant, mot_passe FROM etudiant WHERE identifiant = ?";
    private static final String SQL_INSERT = "INSERT INTO etudiant(identifiant, mot_passe) VALUES(?,?)";
    private static final String SQL_UPDATE = "UPDATE etudiant SET identifiant = ?, mot_passe = ? WHERE id_etudiant = ?";
    private static final String SQL_DELETE = "DELETE from etudiant WHERE id_etudiant = ?";

    /**
     * Méthode qui permet d'afficher la liste de tous les étudiants dans la BD
     *
     * @return liste d'étudiants
     */
    public List<Etudiant> selectionnerALL() {

        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        Etudiant e = null;

        List<Etudiant> etudiants = new ArrayList<>();

        try {

            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_SELECT_ALL);
            rs = stm.executeQuery();

            while (rs.next()) {
                int idEtudiant = rs.getInt("id_etudiant");
                String identifiant = rs.getString("identifiant");
                String motPasse = rs.getString("mot_passe");

                e = new Etudiant(idEtudiant, identifiant, motPasse);

                etudiants.add(e);

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
        return etudiants;
    }

    /**
     * Métodhe qui permet d'afficher l'étudiant recherché par id
     *
     * @param e object de type Étudiant
     * @return un object Étudiant, mais null
     */
    public Etudiant selectionnerByID(Etudiant e) {
        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {

            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_SELECT_BY_ID);
            stm.setInt(1, e.getIdEtudiant());
            rs = stm.executeQuery();
            while (rs.next()) {
                e.setIdEtudiant(rs.getInt("id_etudiant"));
                e.setIdentifiant(rs.getString("identifiant"));
                e.setMotPasse(rs.getString("mot_passe"));

                //return e;
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
//return null;
        return e;
    }

    public Etudiant selectionnerByID(int id) {
        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        Etudiant e = new Etudiant();
        try {
            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_SELECT_BY_ID);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            while (rs.next()) {
                e.setIdEtudiant(rs.getInt("id_etudiant"));
                e.setIdentifiant(rs.getString("identifiant"));
                e.setMotPasse(rs.getString("mot_passe"));
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
        return e;
    }

    /**
     * Méthode qui permet d'insérer un nouveau étudiant dans la BD
     *
     * @param e object de type Étudiant
     * @return numéro d'étudiants insérés
     */
    public int insererEtudiant(Etudiant e) {
        Connection cnx = null;
        PreparedStatement stm = null;
        int cmptEnregistrement = 0;

        try {
            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_INSERT);
            stm.setString(1, e.getIdentifiant());
            stm.setString(2, e.getMotPasse());
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
     * Méthode qui permet de mettre à jour l'identifiant d'un étudiant
     *
     * @param e object de type Étuddiant
     * @return numéro d'enregistrements modifiés
     */
    public int modifierEtudiant(Etudiant e) {
        Connection cnx = null;
        PreparedStatement stm = null;
        int cmptEnregistrement = 0;

        try {
            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_UPDATE);
            stm.setString(1, e.getIdentifiant());
            stm.setString(2, e.getMotPasse());
            stm.setInt(3, e.getIdEtudiant());
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
     * Méthode qui permet la suppression d'un étudiant dans la BD
     *
     * @param e objet de type Étudiant
     * @return numéro d'étudiants éffacés
     */
    public int effacerEtudiant(Etudiant e) {
        Connection cnx = null;
        PreparedStatement stm = null;
        int cmptEnregistrement = 0;

        try {
            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_DELETE);
            stm.setInt(1, e.getIdEtudiant());
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
    public int trouverEtudiant(Etudiant e) {
        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        int r = 0;//
        try {
            cnx = Connexion.getConnexion();

            stm = cnx.prepareStatement(SQL_SELECT_BY_IDENTIFIANT_MOTPASSE);
            stm.setString(1, e.getIdentifiant());
            stm.setString(2, e.getMotPasse());
            rs = stm.executeQuery();

            while (rs.next()) {
                e.setIdentifiant(rs.getString("identifiant"));
                e.setMotPasse(rs.getString("mot_passe"));
                r = rs.getRow();//
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
        return r;
    }

    public Etudiant selectionnerByIdentifiant(Etudiant e) {
        Connection cnx = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        int r = 0;
        try {
            cnx = Connexion.getConnexion();
            stm = cnx.prepareStatement(SQL_SELECT_BY_IDENTIFIANT);
            stm.setString(1, e.getIdentifiant());
            rs = stm.executeQuery();

            while (rs.next()) {
                e.setIdEtudiant(rs.getInt("id_etudiant"));
                e.setIdentifiant(rs.getString("identifiant"));
                e.setMotPasse(rs.getString("mot_passe"));
                r = rs.getRow();
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
        return e;
    }
}
