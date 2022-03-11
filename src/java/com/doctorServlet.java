
// Author : Mohammed


    package com;
    import bean.UserBean;
    import java.io.*;  
    import javax.servlet.*;  
    import javax.servlet.http.*;  
    import java.sql.*;
    import model.showpatientmodel;
        
    public class doctorServlet extends HttpServlet
    {    
        public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
          {  
             PrintWriter out = res.getWriter();  
             res.setContentType("text/html");  
             out.println("<html><body>");  
             
             ////////////////////////// Call model class     ///////////////////////////
             
            showpatientmodel db = new showpatientmodel();
            String s = db.doQuery("");

            //////////////////////////  send the the jsp file     ///////////////////////////
            
            req.setAttribute("showpatient", s);
            RequestDispatcher view = req.getRequestDispatcher("employee_dashboard.jsp");
            view.forward(req,res);
               
         }  
     }  
