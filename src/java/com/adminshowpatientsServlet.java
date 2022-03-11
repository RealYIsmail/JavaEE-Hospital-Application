
    // Author : Yonis Ismail

    package com;
    import bean.UserBean;
    import java.io.*;  
    import javax.servlet.*;  
    import javax.servlet.http.*;  
    import java.sql.*;
    import model.showpatientmodel;
        
    public class adminshowpatientsServlet extends HttpServlet
    {    
         public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
          {  
             PrintWriter out = res.getWriter();  
             res.setContentType("text/html");  
             out.println("<html><body>");  
            
            //////////////////////////  call  model class    ///////////////////////////
            showpatientmodel db = new showpatientmodel();
            String s = db.doQuery("");
            
            //////////////////////////   Send to the jsp file   ///////////////////////////
            req.setAttribute("showpatient", s);
            RequestDispatcher view = req.getRequestDispatcher("admin_show_patient.jsp");
            view.forward(req,res);
              
         }  
     }  
