
    // Author : Yonis Ismail


    package com;
    import bean.UserBean;
    import java.io.*;  
    import javax.servlet.*;  
    import javax.servlet.http.*;  
    import java.sql.*;
    import model.Showdoctorsmodel;
        
    public class adminshowdoctorsServlet extends HttpServlet
    {    
         public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
          {  
             PrintWriter out = res.getWriter();  
             res.setContentType("text/html");  
             out.println("<html><body>");  
             
             //////////////////////////   Call model class   ///////////////////////////
            Showdoctorsmodel db = new Showdoctorsmodel();
            String s = db.doQuery("");
            //////////////////////////  Send to the jsp file    ///////////////////////////
            req.setAttribute("showdoctor", s);
            RequestDispatcher view = req.getRequestDispatcher("admin_show_doctors.jsp");
            view.forward(req,res);
               
         }  
     }  
