    // Author : Yonis Ismail


    package com;
    import bean.UserBean;
    import java.io.*;  
    import javax.servlet.*;  
    import javax.servlet.http.*;  
    import java.sql.*;
    import model.showinvoicesmodel;
        
    public class adminviewturnoverServlet extends HttpServlet
    {    
         public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
          {  
             PrintWriter out = res.getWriter();  
             res.setContentType("text/html");  
             out.println("<html><body>");  
             
             //////////////////////////  Call model class    ///////////////////////////
            showinvoicesmodel db = new showinvoicesmodel();
            String s = db.doQuery("");

            //////////////////////////   send the the jsp file   ///////////////////////////
            req.setAttribute("showinvoices", s);
            RequestDispatcher view = req.getRequestDispatcher("admin_show_invoice.jsp");
            view.forward(req,res);
              
         }  
     }  
