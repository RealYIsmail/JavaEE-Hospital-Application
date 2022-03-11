
    // Author: Yonis Ismail

    package com;
    import bean.UserBean;
    import java.io.*;  
    import javax.servlet.*;  
    import javax.servlet.http.*;  
    import java.sql.*;
    import model.showprivatePattypemodel;
        
    public class adminshowprivateServlet extends HttpServlet
    {    
         public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
          {  
             PrintWriter out = res.getWriter();  
             res.setContentType("text/html");  
             out.println("<html><body>");
             
             //////////////////////////   call model class   ///////////////////////////
             
            showprivatePattypemodel db = new showprivatePattypemodel();
            String s = db.doQuery("");

            //////////////////////////   send to the jsp file   ///////////////////////////
            
            req.setAttribute("showprivate", s);
            RequestDispatcher view = req.getRequestDispatcher("admin_show_privatepatient.jsp");
            view.forward(req,res);
              
         }  
     }  
