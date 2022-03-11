
    // Author : Yonis Ismail

    package com;
    import bean.UserBean;
    import java.io.*;  
    import javax.servlet.*;  
    import javax.servlet.http.*;  
    import java.sql.*;
    import model.showsurgerymodel;
        
    public class surgeryServlet extends HttpServlet
    {    
        public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
          {  
             PrintWriter out = res.getWriter();  
             res.setContentType("text/html");  
             out.println("<html><body>");  
             
             //////////////////////////   call model class   ///////////////////////////
             
            showsurgerymodel db = new showsurgerymodel();
            String s = db.doQuery("");

            //////////////////////////   send to the jsp file   ///////////////////////////
            
            req.setAttribute("showsurgery", s);
            RequestDispatcher view = req.getRequestDispatcher("surgery.jsp");
            view.forward(req,res);
               
         }  
     }  
