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
public class adminaddoperationsServlet extends HttpServlet {
    int EmployeeID;
    int PatientID;
    float Invoice;
    int NSlot;
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
        /////////////////// obtain inputs fron the webpage///////////////////
        String EmployeeIDStr = request.getParameter("Employee");
        String PatientIDStr = request.getParameter("Patient");
        String SlotDate = request.getParameter("Dateofappointment");
        String SlotTime = request.getParameter("Start");
        String NSlotStr = request.getParameter("Slot");
        String InvoiceStr = request.getParameter("Charge");
        String OperationNote = request.getParameter("note");

   
        if(EmployeeIDStr !=null){
            EmployeeID = Integer.parseInt(EmployeeIDStr.trim());  
            
        }
        
        if(PatientIDStr !=null){
            PatientID = Integer.parseInt(PatientIDStr.trim());  
        }
        
        if(NSlotStr !=null){
            NSlot = Integer.parseInt(NSlotStr.trim());  
        }
        
        if(InvoiceStr !=null){
            Invoice = Float.parseFloat(InvoiceStr.trim());  
        }
        
        //////////////////Set the variables ////////////////////
        UserBean addoperation = new UserBean();
        addoperation.setEmployeeID(EmployeeID);
        addoperation.setPatientID(PatientID);
        addoperation.setSlotDate(SlotDate);
        addoperation.setSlotTime(SlotTime);
        addoperation.setNSlot(NSlot);
        addoperation.setInvoice(Invoice);
        addoperation.setOperationNote(OperationNote);


       
        
        
        ///////////////////Sent the the JDBC and send a redirect so that it stays on the same webpage///////////////////
        UserDao Newsurgery = new UserDao();
        String result = Newsurgery.adminaddoperations(addoperation);
        response.getWriter().print(result);
        response.sendRedirect("admin_add_operations.jsp");
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
