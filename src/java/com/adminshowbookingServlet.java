    
    // Yonis Ismail

    package com;
    import bean.UserBean;
    import java.io.*;  
    import javax.servlet.*;  
    import javax.servlet.http.*;  
    import java.sql.*;
    import model.showbookingmodel;
        
    public class adminshowbookingServlet extends HttpServlet
    {    
         public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
          {  
             PrintWriter out = res.getWriter();  
             res.setContentType("text/html");  
             out.println("<html><body>");  
             //////////////////////////  Call model class    ///////////////////////////
            showbookingmodel db = new showbookingmodel();
            String s = db.doQuery("");

            //////////////////////////  Send to the file file    ///////////////////////////
            req.setAttribute("showbooking", s);
            RequestDispatcher view = req.getRequestDispatcher("admin_show_booking.jsp");
            view.forward(req,res);
              
         }  
     }  
