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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Yonis Ismail
 */
public class patientServlet extends HttpServlet {
   int EmployeeID;
   int PatientID;
   
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String SlotDate = request.getParameter("dateofappointment");
        String SlotTime = request.getParameter("start");
        String RequestPerscription = request.getParameter("Request");
        String EmployeeIDStr = request.getParameter("employee");
        String PatientIDStr = request.getParameter("patient");
        
        if(EmployeeIDStr !=null){
            EmployeeID = Integer.parseInt(EmployeeIDStr.trim());  
            
        }
        
        if(PatientIDStr !=null){
            PatientID = Integer.parseInt(PatientIDStr.trim());  
        }
        
        UserBean newslot = new UserBean();
        newslot.setSlotDate(SlotDate);
        newslot.setSlotTime(SlotTime);
        newslot.setRequestPerscription(RequestPerscription);
        newslot.setEmployeeID(EmployeeID);
        newslot.setPatientID(PatientID);
       
        
        
        
        UserDao PatientDash = new UserDao();
        String result = PatientDash.addnewslot(newslot);
        response.getWriter().print(result);
        response.sendRedirect("patient_dashboard.jsp");
        response.getWriter().print(result);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
