
package com.modele.entites;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Date 07 oct 2020
 * @author Équipe Flashcard
 */
public class Connexion {
  private static final String JDBC_URL = "jdbc:mysql://localhost:3306/flashcard?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
  private static final String JDBC_USER = "root";
  private static final String JDBC_PASSWORD = "root";
  
  public static Connection getConnexion() throws SQLException{
      Connection dbconnexion = null;
      try {
          Class.forName("com.mysql.cj.jdbc.Driver");
          dbconnexion = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
      } catch (ClassNotFoundException ex) {
          Logger.getLogger(Connexion.class.getName()).log(Level.SEVERE, null, ex);
      }
      return dbconnexion;
  }
    
  public static void close (ResultSet rs) throws SQLException{
    rs.close();
  }
  
  public static void close (PreparedStatement stm) throws SQLException{
  stm.close();
  }
  
  public static void close (Connection cnx) throws SQLException{
  cnx.close();
  }
  
  
  
}
