package com.controlleur;

/**
 * Date 23 oct 2020 GestionFiches
 *
 * @author Équipe Flashcard
 */
import com.modele.dao.EtudiantDAO;
import com.modele.dao.FicheDAO;
import com.modele.dao.MatiereDAO;
import com.modele.entites.Etudiant;
import com.modele.entites.Fiche;
import com.modele.entites.Matiere;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet("/controlleurFrontal")
public class ControlleurFrontal extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "listerMatieres": {
                    try {
                        this.listerMatieres(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    } catch (SQLException ex) {
                        Logger.getLogger(ControlleurFrontal.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                break;
                case "afficherALLFichesEtudiant": {
                    try {

                        this.afficherALLFichesEtudiant(request, response);

                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    }
                    break;

                }
                case "afficherALLFichesMatiere": {
                    try {

                        this.afficherALLFichesMatiere(request, response);

                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    }
                    break;

                }
                case "afficherMatieresJeu":
                    try {
                        this.afficherMatieresJeu(request, response);
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(ControlleurFrontal.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    break;
                case "editerFiche": {
                    try {
                        this.afficherFormModifier(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    }
                }
                case "selectMatiere": {
                    try {
                        this.selectMatiere(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    } catch (SQLException ex) {
                        Logger.getLogger(ControlleurFrontal.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                break;

                case "supprimerFiche": {
                    try {
                        this.supprimerFiche(request, response);
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(ControlleurFrontal.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (SQLException ex) {
                    Logger.getLogger(ControlleurFrontal.class.getName()).log(Level.SEVERE, null, ex);
                }
                    break;
                }
                case "supprimerMatiere": {
                    try {
                        this.supprimerMatiere(request, response);
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(ControlleurFrontal.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (SQLException ex) {
                        Logger.getLogger(ControlleurFrontal.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                break;

                case "jouerParMatiere":
                    try {
                        this.jouerParMatiere(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    } catch (SQLException exc) {
                        exc.printStackTrace(System.out);
                    }

                    break;
                case "modifierUtilisateur":
                    try {
                        this.afficherModifierUtilisateur(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    }
                    break;
                case "afficherALLFiches": {
                    try {
                        this.afficherALLFiches(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    }
                }
                break;
                case "afficherForm":
                    this.afficherForm(request, response);
                    break;
                case "selectionnerMatiere": {
                    try {
                        this.selectionnerMatiere(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    }
                }
                break;

                case "logout": {
                    this.deconnecterEtudiant(request, response);
                }
                break;

                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "filtrerNomMatiere":
                    try {
                        this.filtrerByNomMatiere(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    }
                    break;
                case "insererFiche": {
                    try {
                        this.insererFiche(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    }
                }
                break;

                case "modifierFiche": {
                    try {
                        this.modifierFiche(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    } catch (SQLException ex) {
                        Logger.getLogger(ControlleurFrontal.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                break;

                case "modifierMatiere": {
                    try {
                        this.modifierMatiere(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    } catch (SQLException ex) {
                        Logger.getLogger(ControlleurFrontal.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                break;
                case "modifierUtilisateur":
                    try {
                        this.modifierUtilisateur(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    }
                    break;
                case "ajouterMatiere":

                    try {
                        this.ajouterMatiere(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    }
                    break;
                case "ajouterEtudiant":

                    try {
                        this.ajouterEtudiant(request, response);
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace(System.out);
                    }
                    break;

                case "login": {
                try {
                    this.trouverEtudiant(request, response);
                } catch (ClassNotFoundException ex) {
                     ex.printStackTrace(System.out);
                }
                }
                break;

                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Controlleur frontal";
    }// </editor-fold>

    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("accueil.jsp");
    }
    
    private void afficherMatieresJeu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException{
        HttpSession session = request.getSession();
        request.setAttribute("matieres", new MatiereDAO().selectionnerByIdEtudiant(((Etudiant)session.getAttribute("e")).getIdEtudiant()));
        request.getRequestDispatcher("WEB-INF/vues/afficherMatieresJeu.jsp").forward(request, response);
    }

    private void jouerParMatiere(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException {
        int idMatiere = Integer.parseInt(request.getParameter("idMatiere"));
        List<Fiche> fiches = FicheDAO.selectionnerByIdMatiere(idMatiere);
        request.setAttribute("fiches", fiches);
        request.getRequestDispatcher("WEB-INF/vues/jouer.jsp").forward(request, response);
    }

    private void afficherALLFiches(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException {
        List<Fiche> fiches = new FicheDAO().selectionnerALL();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("fiches", fiches);
        response.sendRedirect("fiches.jsp");
    }

    private void afficherForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("creerFiche.jsp").forward(request, response);

    }

    private void afficherFormModifier(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, ServletException, IOException {
        int idFiche = Integer.parseInt(request.getParameter("idFiche"));
        Fiche fiche = new FicheDAO().trouver(new Fiche(idFiche));
        request.setAttribute("fiche", fiche);
        String jspEditer = "WEB-INF/vues/formModifierFiche.jsp";
        request.getRequestDispatcher(jspEditer).forward(request, response);
    }

    private void afficherModifierUtilisateur(HttpServletRequest request, HttpServletResponse response) throws ClassCastException, ServletException, IOException, ClassNotFoundException, NullPointerException {
        HttpSession session = request.getSession();
        Etudiant utilisateur = (new EtudiantDAO()).selectionnerByID((Etudiant) session.getAttribute("e"));
        session.setAttribute("e", utilisateur);
        request.getRequestDispatcher("WEB-INF/vues/modifierUtilisateur.jsp").forward(request, response);
    }

    private void modifierUtilisateur(HttpServletRequest request, HttpServletResponse response) throws ClassCastException, ServletException, IOException, ClassNotFoundException {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        Etudiant utilisateur = (new EtudiantDAO()).selectionnerByID((Etudiant) session.getAttribute("e"));
        if (action.equals("Modifier")) {
            if (session.getAttribute("e") == null) {
                this.accionDefault(request, response);
            }
            if (request.getParameter("mdp1").equals(utilisateur.getMotPasse())) {
                if ((request.getParameter("mdp2").length() > 0) && (((String) request.getParameter("mdp2")).equals((String) request.getParameter("mdp3")))) {
                    if (request.getParameter("mdp3").length() < 8) {
                        request.setAttribute("erreur", "Votre mot de passe doit contenir au moins 8 caractères.");
                    } else {
                        utilisateur.setMotPasse(request.getParameter("mdp3"));
                        new EtudiantDAO().modifierEtudiant(utilisateur);
                        session.setAttribute("e", utilisateur);
                        request.setAttribute("valide", true);
                    }
                } else {
                    request.setAttribute("erreur", "Afin de changer votre mot de passe, les deux dernières zones de texte doivent contenir la même chaine de caractères.");
                }
            } else {
                request.setAttribute("erreur", "Votre mot de passe est invalide. Veuillez vous assurer que le premier mot de passe saisi soit celui que vous avez couramment.");
            }
            this.afficherModifierUtilisateur(request, response);
        } else if (action.equals("Supprimer")) {
            if (request.getParameter("mdp1").equals(utilisateur.getMotPasse())) {
                new EtudiantDAO().effacerEtudiant((Etudiant) request.getSession().getAttribute("e"));
                request.getSession().invalidate();
                this.accionDefault(request, response);
            } else {
                request.setAttribute("erreur", "Afin de supprimer votre compte, vous devez fournir votre mot de passe courant.");
                this.afficherModifierUtilisateur(request, response);
            }
        }
    }

    private void modifierFiche(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IOException, ServletException, SQLException {

        int idFiche = Integer.parseInt(request.getParameter("idFiche"));
        String texteQuestion = request.getParameter("question");
        String texteReponse = request.getParameter("reponse");
        Fiche fiche = new Fiche(idFiche, texteQuestion, texteReponse);
        int enregistrementModifies = new FicheDAO().modifierQuestionReponseByIdFiche(fiche);
        this.listerMatieres(request, response);
    }

    private void modifierMatiere(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IOException, ServletException, SQLException {
        HttpSession session = request.getSession();
        int idMatiere = Integer.parseInt((String) session.getAttribute("idMatiere"));
        String nomMatiere = request.getParameter("nomMatiere");
        MatiereDAO.modifierMatiere(nomMatiere, idMatiere);
        session.setAttribute("nomMatiere", null);
        session.setAttribute("idMatiere", null);
        session.setAttribute("display", "none");
        this.listerMatieres(request, response);
    }

    private void supprimerFiche(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IOException, ServletException, SQLException {
        int idFiche = Integer.parseInt(request.getParameter("idFiche"));
        String nomMatiere = request.getParameter("nomMatiere");
        FicheDAO ficheDao = new FicheDAO();
        ficheDao.effacerByIdFiche(new Fiche(idFiche));
        this.afficherALLFichesEtudiant(request, response);
    }

    private void selectMatiere(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IOException, ServletException, SQLException {

        HttpSession sesion = request.getSession();
        sesion.setAttribute("nomMatiere", request.getParameter("nomMatiere"));
        sesion.setAttribute("idMatiere", request.getParameter("idMatiere"));
        sesion.setAttribute("display", "block");
        this.listerMatieres(request, response);
    }

    private void supprimerMatiere(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IOException, ServletException, SQLException {
        int idMatiere = Integer.parseInt(request.getParameter("idMatiere"));
        MatiereDAO matiereDao = new MatiereDAO();
        matiereDao.effacerByIdMatiere(idMatiere);
        FicheDAO ficheDao = new FicheDAO();
        ficheDao.effacerByIdMatiere(idMatiere);
        this.listerMatieres(request, response);

    }

    private void selectionnerMatiere(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException {
        HttpSession session = request.getSession();
        Etudiant utilisateur = (new EtudiantDAO()).selectionnerByID((Etudiant) session.getAttribute("e"));
        List<Matiere> matieres = new MatiereDAO().selectionnerByIdEtudiant(utilisateur.getIdEtudiant());
        session.setAttribute("matieres", matieres);
        response.sendRedirect("creerFiche.jsp");

    }

    private void insererFiche(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, ServletException, IOException {
        String question = request.getParameter("question");
        String reponse = request.getParameter("reponse");
        int idmatiere = Integer.parseInt(request.getParameter("matiere"));
        Fiche temp = new Fiche(idmatiere, ((Etudiant) request.getSession().getAttribute("e")).getIdEtudiant(), question, reponse);
        int enregistrement = new FicheDAO().insererFiche(temp);
        this.selectionnerMatiere(request, response);

    }

    private void ajouterEtudiant(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, ServletException, IOException {
        String email = request.getParameter("email");
        String confirm = request.getParameter("confirm");
        String password = request.getParameter("password");
        Etudiant etu = new Etudiant(email, confirm);
        int enregistrement = new EtudiantDAO().insererEtudiant(etu);
        this.accionDefault(request, response);
    }

    private void trouverEtudiant(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException {
        String identifiant = request.getParameter("identifiant");
        String motPasse = request.getParameter("motPasse");
        int e = new EtudiantDAO().trouverEtudiant(new Etudiant(identifiant, motPasse));
        if (e != 0) {
            HttpSession session = request.getSession();
            session.setAttribute("e", new EtudiantDAO().selectionnerByIdentifiant(new Etudiant(identifiant, motPasse)));            
            session.setAttribute("nomIdentifiant", identifiant.split("@",2)[0]);
            session.setAttribute("identifiant", identifiant);
            if (identifiant.equals("nadia@email.com")) {
                /*String jsp = "/WEB-INF/vues/admin.jsp";
                request.getRequestDispatcher(jsp).forward(request, response);*/
                this.administration(request, response);
            } else {
                String jsp = "menu.jsp";
                request.getRequestDispatcher(jsp).forward(request, response);
            }

        } else {
            request.setAttribute("msg", "Le nom d'utilisateur ou mot de passe invalide!!!");
            request.setAttribute("typemsg", "error");
            request.getRequestDispatcher("accueil.jsp").forward(request, response);

        }

    }

    private void deconnecterEtudiant(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(true);
        if (session != null) {
            session.invalidate();
            response.sendRedirect("accueil.jsp");
        }
    }

    private void listerMatieres(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException {
        HttpSession sesion = request.getSession();
        int idEtudiant = ((Etudiant) sesion.getAttribute("e")).getIdEtudiant();
        ArrayList<Matiere> matieres = (ArrayList<Matiere>) MatiereDAO.obtenirNomMatieresByIdEtudiant(idEtudiant);
        sesion.setAttribute("matieres", matieres);
        response.sendRedirect("gererMatiere.jsp");

    }

    private void afficherALLFichesEtudiant(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IOException, ServletException {
        Fiche e = new Fiche();
        HttpSession sesion = request.getSession();
        int idEtudiant = ((Etudiant) sesion.getAttribute("e")).getIdEtudiant();
        e.setIdEtudiant(idEtudiant);
        List<Fiche> fiches = new FicheDAO().selectionnerByIdEtudiant(e);
        List<Matiere> matieres = new MatiereDAO().selectionnerByIdEtudiant(idEtudiant);
        sesion.setAttribute("matieres", matieres);
        sesion.setAttribute("fiches", fiches);
        response.sendRedirect("fiches.jsp");

    }

    private void afficherALLFichesMatiere(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IOException, ServletException {
        HttpSession sesion = request.getSession();
        int idMatiere = Integer.parseInt(request.getParameter("idMatiere"));
        List<Fiche> fiches = FicheDAO.selectionnerByIdMatiere(idMatiere);
        sesion.setAttribute("fiches", fiches);
        response.sendRedirect("fiches.jsp");
    }

    private void filtrerByNomMatiere(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IOException, ServletException {
        HttpSession sesion = request.getSession();
        Etudiant e = (new EtudiantDAO()).selectionnerByID((Etudiant) sesion.getAttribute("e"));
        Fiche f = new Fiche();
        int idEtudiant = e.getIdEtudiant();
        Matiere m = new Matiere();
        String nomMatiere = request.getParameter("nomMatiere");
        m.setNomMatiere(nomMatiere);
        if ("all".equals(m.getNomMatiere())) {
            this.afficherALLFichesEtudiant(request, response);
        } else {
            List<Fiche> fiches = new MatiereDAO().obtenirFichesByNomMatiereIdEtudiant(m, e);
            sesion.setAttribute("fiches", fiches);
            response.sendRedirect("fiches.jsp");
        }
    }

    private void ajouterMatiere(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, ServletException, IOException {
        HttpSession session = request.getSession();
        Etudiant utilisateur = (new EtudiantDAO()).selectionnerByID((Etudiant) session.getAttribute("e"));
        String nom = request.getParameter("nomMatiere");
        Matiere m = new Matiere(nom, utilisateur.getIdEtudiant());
        int enregistrement = new MatiereDAO().insererMatiere(m);
        this.selectionnerMatiere(request, response);
    }

    private void administration(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IOException {
        HttpSession sesion = request.getSession();
        List<Etudiant> etudiants = new EtudiantDAO().selectionnerALL();
        List<Matiere> matieres = new MatiereDAO().selectionnerALL();
        List<Fiche> fiches = new FicheDAO().selectionnerALL();
        
        sesion.setAttribute("etudiants", etudiants);
        sesion.setAttribute("matieres", matieres);
        sesion.setAttribute("fiches", fiches);
        response.sendRedirect("admin.jsp");
    }
}
