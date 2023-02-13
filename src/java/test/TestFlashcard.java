package test;

/**
 * Date 07 oct 2020
 * @author Équipe Flashcard 
 */
import java.sql.*;
import java.util.List;
import com.modele.dao.EtudiantDAO;
import com.modele.dao.FicheDAO;
import com.modele.dao.MatiereDAO;
import com.modele.entites.Etudiant;
import com.modele.entites.Fiche;
import com.modele.entites.Matiere;
import java.util.function.Consumer;

public class TestFlashcard {

    public static void main(String[] args) throws ClassNotFoundException {

        EtudiantDAO etuDao = new EtudiantDAO();
        FicheDAO ficheDao = new FicheDAO();
        MatiereDAO matDao = new MatiereDAO();

/****************************************************************
 *
 * Jeux de test par Étudiant
 *
 ****************************************************************/
        
/**
 * test select all etudiants
 */
//        Etudiant etudiant = new Etudiant();
//        etuDao.selectionnerALL();
//
//        List<Etudiant> listEtudiants = etuDao.selectionnerALL();
//
//        for (Etudiant etu : listEtudiants) {
//            System.out.println("etudiant: " + etu);
//        }
//
///**
// * test select étudiant by id
// */
//        Etudiant etu = new Etudiant(3);
//        etuDao.selectionnerByID(etu); 
//        System.out.println("e"+etu);
//
//
///**
// * test insert un nouveau etudiant
// */
//        Etudiant e = new Etudiant("etudiant@mail.com","666");
//        etuDao.insererEtudiant(e);
//
//        List<Etudiant> etudiants = etuDao.selectionnerALL();
//       
//        for (Etudiant etud : etudiants) {
//            System.out.println("etudiant: " + etud);
//        }
//
//
// /**
// * test update étudiant 
// */
// 
// Etudiant student = new Etudiant("etudiant@email.com", "123");
// etuDao.modifierEtudiant(student);
// 
// List<Etudiant> estudiants = etuDao.selectionnerALL();
//       
//        for (Etudiant etud : estudiants) {
//            System.out.println("etudiant: " + etud);
//        }
 
 /**
 * test delete étudiant 
 */
// Etudiant stud = new Etudiant(5);
// etuDao.effacerEtudiant(stud);
// List<Etudiant> estudiantes = etuDao.selectionnerALL();
//       
//        for (Etudiant es : estudiantes) {
//            System.out.println("etudiant: " + es);
//        }


/****************************************************************
 *
 * Jeux de test par Fiche
 *
 ****************************************************************/
        

/**
 * test select all fiches 
 */       
//        Fiche f = new Fiche();
//        ficheDao.selectionnerALL();
//
//        List<Fiche> fiches = ficheDao.selectionnerALL();
//
//        for (Fiche fiche : fiches) {
//            System.out.println("fiche: " + fiche);
//        }



/**
 * test select toutes les fiches d'un étudiant par matiere
 */
//        Fiche f1 = new Fiche(22, 1);
//        ficheDao.selectionnerByIdMatiereIdEtudiant(f1);
//
//        List<Fiche> fiches1 = ficheDao.selectionnerByIdMatiereIdEtudiant(f1);
//
//        for (Fiche fiche : fiches1) {
//            System.out.println("fiches: " + fiche);
//        }

     
/**
 * test insert une nouvelle fiche et au même temps insére un nouvel 
 * enregistrement dans la table etudiant_matiere
 * LORSQUE l'étudiant sélectionne une nouvelle matière
 */
//        Fiche e = new Fiche(5,3,"SQL est: ","Un langage standard pour stocker, manipuler et récupérer des données dans des bases de données.");
//        ficheDao.insererFiche(e);
//        
//        List<Fiche> listFiches = ficheDao.selectionnerALL();
//       
//        for (Fiche fiche : listFiches) {
//            System.out.println("fiche: "+ fiche);
//        }
      
        
/**
 * test update question et/ou reponse d'une fiche by id_fiche
 */
     
//        Fiche e = new Fiche(1,"QUESTION UPDATED ","Vesícula");
//        
//        ficheDao.modifierQuestionReponseByIdFiche(e);
//        
//         List<Fiche> fiches = ficheDao.selectionnerALL();
//       
//        for (Fiche fiche : fiches) {
//            System.out.println("etudiant: "+ fiche);
//        }


//        Fiche e = new Fiche(1,"Lesión típica de la varicela:","REPONSE UPDATED");
//        
//        ficheDao.modifierQuestionReponseByIdFiche(e);
//        
//         List<Fiche> fiches = ficheDao.selectionnerALL();
//       
//        for (Fiche fiche : fiches) {
//            System.out.println("etudiant: "+ fiche);
//        }


//        Fiche e = new Fiche(1, "QUESTION UPDATED", "REPONSE UPDATED");
//
//        ficheDao.modifierQuestionReponseByIdFiche(e);
//
//        List<Fiche> fiches = ficheDao.selectionnerALL();
//
//        for (Fiche fiche : fiches) {
//            System.out.println("etudiant: " + fiche);
//        }

        
        
        
        
/**
 * test DELETE fiche par id_fiche
 */
//        Fiche e = new Fiche(1);
//        ficheDao.effacerByIdFiche(e);
//        
//        List<Fiche> fiches = ficheDao.selectionnerALL();
//       
//        for (Fiche fiche : fiches) {
//            System.out.println("etudiant: "+ fiche);
//        }
    
    
/****************************************************************
 *
 * Jeux de test par Matière et EtudiantMatiere
 *
 ****************************************************************/
/**
 * test select all matières 
 */       
//        Matiere m = new Matiere();
//        matDao.selectionnerALL();
//
//        List<Matiere> matieres = matDao.selectionnerALL();
//
//        for (Matiere mat : matieres) {
//            System.out.println("etudiant: " + mat);
//        }


/**
 * test afficher toutes les matières sélectionnés par un étudiant
 */

//       EtudiantMatiere e = new EtudiantMatiere(2);
//           
//       emDao.selectionnerNomMatiereByIdEtudiant(e);
//
//        List<EtudiantMatiere> matieres = emDao.selectionnerNomMatiereByIdEtudiant(e);
//
//        for (EtudiantMatiere mat : matieres) {
//            System.out.println(mat.creerListeMatiere());
//        }
  



/**
 * test afficher toutes les id_matiere sélectionnés par un étudiant
 */
//
//       EtudiantMatiere em = new EtudiantMatiere(2);
//           
//       emDao.selectionnerIdMatiereByIdEtudiant(em);
//
//        List<EtudiantMatiere> ematieres = emDao.selectionnerIdMatiereByIdEtudiant(em);
//
//        for (EtudiantMatiere mat : ematieres) {
//            System.out.println(mat);
//        }


        
 /**
  * test afficher le contenu du table etudiant_matiere
  */   
//        EtudiantMatiere m = new EtudiantMatiere();
//        emDao.selectionnerALL();
//
//        List<EtudiantMatiere> matieres = emDao.selectionnerALL();
//
//        for (EtudiantMatiere mat : matieres) {
//            System.out.println("etudiant: " + mat);
//        }

 
 

 /**
  * test insert une clé primaire dans la table etudiant_matiere 
  */
//        EtudiantMatiere em = new EtudiantMatiere(1,17);
//       
//        emDao.insererEtudiantMatiere(em);
//        
//        List<EtudiantMatiere> emListe =  emDao.selectionnerALL();
//       
//        for (EtudiantMatiere lista : emListe) {
//            System.out.println("etudiant: "+ lista);
//        }
  

    
    
    
    }

}
