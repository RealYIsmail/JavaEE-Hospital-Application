/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import bean.UserBean;
import database.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.showNHSmodel;

/**
 *
 * @author tjsou Thomas South
 */
public class adminshowNHSServlet extends HttpServlet {
    int patientID;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
          {  
             PrintWriter out = res.getWriter();  
             res.setContentType("text/html");  
             out.println("<html><body>");  
             //////////////////////////  Call model class    ///////////////////////////
            showNHSmodel db = new showNHSmodel();
            String s = db.doQuery("");
            
            //////////////////////////    Send to the jsp file ///////////////////////////
            req.setAttribute("showNHS", s);
            RequestDispatcher view = req.getRequestDispatcher("admin_show_NHSpatient.jsp");
            view.forward(req,res);
              
         }  
}
  