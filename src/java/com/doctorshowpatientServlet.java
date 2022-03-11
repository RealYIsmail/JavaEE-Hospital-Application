    
    // Author : Yonis Ismail

    package com;
    import bean.UserBean;
    import java.io.*;  
    import javax.servlet.*;  
    import javax.servlet.http.*;  
    import java.sql.*;
    import model.Showdoctorsmodel;
        
    public class doctorshowpatientServlet extends HttpServlet
    {    
         public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
          {  
             PrintWriter out = res.getWriter();  
             res.setContentType("text/html");  
             out.println("<html><body>");  
             
             //////////////////////////  call model class    ///////////////////////////
             
            Showdoctorsmodel db = new Showdoctorsmodel();
            String s = db.doQuery("");

            //////////////////////////   send to jsp file   ///////////////////////////
            
            req.setAttribute("showdocpatients", s);
            RequestDispatcher view = req.getRequestDispatcher("Doctor_dashboard.jsp");
            view.forward(req,res);
              
         }  
     }  
