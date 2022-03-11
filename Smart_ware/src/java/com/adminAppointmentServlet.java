/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
import java.sql.*;  

public class adminAppointmentServlet extends HttpServlet  
{    
     public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
      {  
         PrintWriter out = res.getWriter();  
         res.setContentType("text/html");  
         out.println("<html><body>");  
         try 
         {  
             Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
             Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/ESDcoursework", "yonis", "yonis");  
             // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.  
             Statement stmt = con.createStatement();  
             ResultSet rs = stmt.executeQuery("SELECT * from OPERATIONS");  
             out.println("<table border=1 width=50% height=50%>");  
             out.println("<tr><th>EmpId</th><th>EmpName</th><th>Salary</th><tr>");  
             while (rs.next()) 
             {  
                 String oid = rs.getString("oid");  
                 String employeeID = rs.getString("employeeID");
                 String patientID = rs.getString("patientID");
                 String operationDate = rs.getString("operationDate");
                 String OperationTime = rs.getString("OperationTime");
                 String nSlot = rs.getString("nSlot");
                 String Invoice = rs.getString("Invoice");
                  
                 out.println("<tr><td>" + oid + "</td><td>" + employeeID + "</td><td>" + patientID + "</td></tr>" + operationDate + "</td><td>" + OperationTime + "</td><td>" + nSlot + "</td><td>" + Invoice + "</td><td>");   
             }  
             out.println("</table>");  
             out.println("</html></body>");  
             con.close();  
            }  catch(Exception e) {
                
            
             out.println(e);  
         }  
     }  
 }  