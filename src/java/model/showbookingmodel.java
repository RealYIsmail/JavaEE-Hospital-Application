/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class showbookingmodel {

  private Connection con;

    private Statement state;
    private ResultSet rs;

  public String doQuery(String query) {
    StringBuilder sb = new StringBuilder();
    
    try {
      // You will need to explicitly load this driver in a web app
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      con = DriverManager.getConnection("jdbc:derby://localhost:1527/ESDcoursework", "yonis", "yonis");
      state = con.createStatement();
      rs = state.executeQuery("SELECT * FROM BOOKING_SLOTS");
      while (rs.next()) {
        sb.append(rs.getString(1) + " -- " + rs.getString(2) + " -- " + rs.getString(3) + " -- " + rs.getString(4) + " -- " + rs.getString(5) + " -- " + rs.getString(6) + " -- " + rs.getString(7)) ;
        sb.append("\n<br>");
        System.out.println(rs.getString(1) + " -- " + rs.getString(2) + " -- " + rs.getString(3) + " -- " + rs.getString(4) + " -- " + rs.getString(5) + " -- " + rs.getString(6) + " -- " + rs.getString(7));
      }
      rs.close();
      state.close();
      con.close();
    } catch (ClassNotFoundException | SQLException e) {
      System.err.println("Error: " + e);

    }//try
    return sb.toString();
  }
} //class

    
