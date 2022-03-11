/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;


import java.sql.*;
import java.util.logging.*;
import java.sql.Connection;
import bean.UserBean;
import java.util.ArrayList;
import java.sql.ResultSet;


public class UserDao {
    
    private String dbUrl = "jdbc:derby://localhost:1527/ESDcoursework";
    private String dbUname = "yonis"; 
    private String dbPassword = "yonis";
    private String dbDriver = "org.apache.derby.jdbc.ClientDriver";
    ResultSet rs = null;
    
    public Connection getConnection() 
    {
        Connection con = null;
        
        try {
            Class.forName(dbDriver);
            con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
            
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return con;
        
    }
    
   
    
    ///////////////////////////////// Add/Register users ////////////////////////////////////////////
    public String addnewreg(UserBean newreg){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;
        String result = "data entered successfully";
        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "INSERT INTO USERS (USERNAME, PASSWORD, ROLE) VALUES (?, ?, ?)";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, newreg.getUsername());
            ps.setString(2, newreg.getPassword());
            ps.setString(3, newreg.getRoles());   
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered";
        }
             
        return result;
        
   
    }
    
    
    ///////////////////////////////// Add Bookingslot ////////////////////////////////////////////
    public String addnewslot(UserBean newslot){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;
        String result = "data entered successfully";
        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "INSERT INTO BOOKING_SLOTS (SlotDate, SlotTime, requestprescription, EmployeeID, PatientID, BookingNote) VALUES (?, ?, ?, ?, ?, ?)";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, newslot.getSlotDate());
            ps.setString(2, newslot.getSlotTime());
            ps.setString(3, newslot.getRequestPerscription());
            ps.setInt(4, newslot.getEmployeeID());
            ps.setInt(5, newslot.getPatientID());
            ps.setString(6, newslot.getBookingNote());

            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered";
        }
        
             
        return result;
        
   
    }
    
    ///////////////////////////////// Admin adding doctor ////////////////////////////////////////////
    public String adminadddoc(UserBean adddoc){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;
        String result = "data entered successfully";
        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "INSERT INTO EMPLOYEE (EMPLOYEENAME, EMPLOYEEADDRESS, USERNAME, EmployeeDOB) VALUES (?, ?, ?, ?)";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, adddoc.getemployeeName());
            ps.setString(2, adddoc.getemployeeAddress());
            ps.setString(3, adddoc.getUsername());
            ps.setString(4, adddoc.getEmployeeDOB());
       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered";
        }
        
             
        return result;
        
   
    }
    
    ///////////////////////////////// Admin adding patient ////////////////////////////////////////////
    public String addminaddpatient(UserBean addpatient){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;
        String result = "data entered successfully";
        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "INSERT INTO PATIENTS (PATIENTNAME, PATIENTADDRESS, PATIENTTYPE, PATIENTDOB, USERNAME) VALUES (?, ?, ?, ?, ?)";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, addpatient.getpatientName());
            ps.setString(2, addpatient.getpatientAddress());
            ps.setString(3, addpatient.getpatientType());
            ps.setString(4, addpatient.getPatientDOB());
            ps.setString(5, addpatient.getUsername());
       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered";
        }
        
             
        return result;
        
   
    }
    
    ///////////////////////////////// Admin add operations ////////////////////////////////////////////
    public String adminaddoperations(UserBean addoperation){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;
        String result = "data entered successfully";
        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "INSERT INTO OPERATIONS (EMPLOYEEID, PATIENTID, OPERATIONDATE, OPERATIONTIME, NSLOT, INVOICE, OperationNote) VALUES (?, ?, ?, ?, ?, ?, ?)";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, addoperation.getEmployeeID());
            ps.setInt(2, addoperation.getPatientID());
            ps.setString(3, addoperation.getSlotDate());
            ps.setString(4, addoperation.getSlotTime());
            ps.setInt(5, addoperation.getNSlot());
            ps.setFloat(6, addoperation.getInvoice());
            ps.setString(7, addoperation.getOperationNote());
            
       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered";
        }
        
             
        return result;
    }
    
    
    ///////////////////////////// validate Patient login ///////////////////////////
    public boolean validatePatient(UserBean users){
       // loadDriver(dbDriver);
        Connection con = getConnection();
        Statement statement = null;
        
        boolean status = false;
        
        String patient = "patient";
        String sql = "SELECT * FROM USERS WHERE Role = '"+patient+"' AND username = '"+users.getUsername()+"' AND password = '"+users.getPassword()+"'";
        
    
        
        try {
            statement = con.createStatement();
            
            
        ResultSet rs = statement.executeQuery(sql);
        status = rs.next();
            
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
           
        return status;
        
   
    }
    
    ///////////////////////////// validate Doctor login ///////////////////////////
    public boolean validateDoctor(UserBean users){
       // loadDriver(dbDriver);
        Connection con = getConnection();
        Statement statement = null;
        
        boolean status = false;
        
        String doctor = "doctor";
        String sql = "SELECT * FROM USERS WHERE Role = '"+doctor+"' AND username = '"+users.getUsername()+"' AND password = '"+users.getPassword()+"'";
        
    
        
        try {
            statement = con.createStatement();
            
            
        ResultSet rs = statement.executeQuery(sql);
        status = rs.next();
            
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
           
        return status;
        
   
    }
    
    ///////////////////////////// validate Nurse login ///////////////////////////
    public boolean validateNurse(UserBean users){
       // loadDriver(dbDriver);
        Connection con = getConnection();
        Statement statement = null;
        
        boolean status = false;
        
        String nurse = "nurse";
        String sql = "SELECT * FROM USERS WHERE Role = '"+nurse+"' AND username = '"+users.getUsername()+"' AND password = '"+users.getPassword()+"'";
        
    
        
        try {
            statement = con.createStatement();
            
            
        ResultSet rs = statement.executeQuery(sql);
        status = rs.next();
            
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
           
        return status;
        
   
    }
    
    ///////////////////////////// validate Admin login ///////////////////////////
    public boolean validateAdmin(UserBean users){
       // loadDriver(dbDriver);
        Connection con = getConnection();
        Statement statement = null;
        
        boolean status = false;
        
        String admin = "admin";
        String sql = "SELECT * FROM USERS WHERE Role = '"+admin+"' AND username = '"+users.getUsername()+"' AND password = '"+users.getPassword()+"'";
        
    
        
        try {
            statement = con.createStatement();
            
            
        ResultSet rs = statement.executeQuery(sql);
        status = rs.next();
            
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
           
        return status;
        
   
    }
     ///////////////////////////// Delete EmployeeID in Booking Slots////////////////////////
    public void EmpDeleteinbooking(int EmployeeID){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;

        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "DELETE  FROM BOOKING_SLOTS WHERE EMPLOYEEID =?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, EmployeeID);

       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            

        }

    }
    
     ///////////////////////////// Delete EmployeeID in operations////////////////////////
    public void EmpDeleteinOperations(int EmployeeID){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;

        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "DELETE  FROM OPERATIONS WHERE EMPLOYEEID =?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, EmployeeID);

       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            

        }

    }
    ///////////////////////////// Delete PatientID in operations////////////////////////
     public void PatDeleteinOPerations(int PatientID){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;

        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "DELETE  FROM OPERATIONS WHERE PATIENTID =?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, PatientID);

       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            

        }

    }
     
      ///////////////////////////// Delete PatientID in Booking Slots////////////////////////
    public void PatDeleteinBooking(int PatientID){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;

        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "DELETE  FROM BOOKING_SLOTS WHERE PatientID =?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, PatientID);

       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            

        }

    }
    
    
     ///////////////////////////// Delete Username in Employee////////////////////////
    public void UserDeleteinPatient(int PatientID){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;

        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "DELETE  FROM Patients WHERE PatientID =?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, PatientID);

       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            

        }

    }
    
    ///////////////////////////// Delete Username in Patient////////////////////////
    public void UserDeleteinEmployee(int EmployeeID){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;

        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "DELETE FROM Employee WHERE EmployeeID =?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, EmployeeID);

       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            

        }

    }
    
     ///////////////////////////// Delete Username in operations////////////////////////
     public void UserDeleteinOPerations(String Username){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;

        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "DELETE FROM OPERATIONS WHERE Username =?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, Username);

       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            

        }

    }
    
    
    
    
     ///////////////////////////// Delete for Employee ///////////////////////////
    public String DeleteEmployee(UserBean DelEmployee){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;
        String result = "data entered successfully";
        int EmployeeID = DelEmployee.getEmployeeID();
        EmpDeleteinbooking(EmployeeID);
        EmpDeleteinOperations(EmployeeID);
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "DELETE  FROM EMPLOYEE WHERE EMPLOYEEID =?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, DelEmployee.getEmployeeID());

       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered";
        }
        
             
        return result;
        
   
    }
    
     ///////////////////////////// Delete for Patient ///////////////////////////
    public String DeletePatient(UserBean DelPatient){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;
        String result = "data entered successfully";
        int PatientID = DelPatient.getPatientID();
        PatDeleteinOPerations(PatientID);
        PatDeleteinBooking(PatientID);
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "DELETE FROM PATIENTS WHERE PATIENTID =?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, DelPatient.getPatientID());

       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered";
        }
        
             
        return result;
        
   
    }
    
     ///////////////////////////// Delete for Booking Slots ///////////////////////////
    public String DeleteBooking(UserBean DelBooking){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;
        String result = "data entered successfully";

        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "DELETE  FROM BOOKING_SLOTS WHERE SLOTID =?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, DelBooking.getSlotID());

       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered";
        }
        
             
        return result;
        
   
    }
    ///////////////////////////// Delete for operations ///////////////////////////
    public String DeleteOp(UserBean DelOp){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;
        String result = "data entered successfully";

        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "DELETE  FROM OPERATIONS WHERE OID =?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, DelOp.getOID());

       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered";
        }
        
             
        return result;
        
   
    }
    
    
    ///////////////////////////// Delete Username in operations////////////////////////
     public int UserassignPatientID(String Username){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;
        int PatientID = 0;
        
        
        //String sql = "INSERT INTO USERS + (username, password, role)" + "VALUES ("+registerBean.getUsername()+"," +registerBean.getPassword()+ "," +registerBean.getRole() + ")";
        String sql = "Select PatientID from Patients where UserName =?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, Username);

       
            ps.executeUpdate();
            ResultSet rs = ps.executeQuery(sql);
    
            if (rs.next()) { // replace 'if' with 'while' to iterate if multiple records
                PatientID = rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            
        }
        return PatientID;
    }
    
    ///////////////////////////// Delete for an admin ///////////////////////////
    public String DeleteAdminUser(UserBean DelUsers){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        //Statement statement = null;
        String result = "data entered successfully";
        String Username = DelUsers.getUsername();

        
  
        
        
        String sql = "DELETE  FROM Users WHERE Username = ?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, DelUsers.getUsername());

       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered";
        }
        
             
        return result;
        
   
    }
    
    ///////////////////////////// Delete user that is a patient ///////////////////////////
    public String DeletePatientUser(UserBean DelUsers){
        //loadDriver(dbDriver);
        Connection con = getConnection();  
        //Statement statement = null;
        String result = "data entered successfully";
        String Username = DelUsers.getUsername();
        int PatientID = UserassignPatientID(Username);
        
        PatDeleteinOPerations(PatientID);
        PatDeleteinBooking(PatientID);
        UserDeleteinPatient(PatientID); 
        

        String sql = "DELETE FROM Users WHERE Username = ?";
        
         
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, DelUsers.getUsername());
            ps.executeUpdate();
            
            
       
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered";
        }
        
             
        return result;
        
   
    }
    
  
 
    
    ///////////////////////////// Periodic Turnover ///////////////////////////
     public String AdminTurnover(UserBean Turnover){
        //loadDriver(dbDriver);
        Connection con = getConnection();
        StringBuilder sb = new StringBuilder();
        //Statement statement = null;
        String result = "data entered successfully";
        
        
        //SELECT SUM(column_name)FROM table_name WHERE condition
        String sql = "select sum(invoice) as invoice from operations where OperationDate between ? and ?";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, Turnover.getSlotDate());
            ps.setString(2, Turnover.getEndDate());
            ResultSet rs1 = ps.executeQuery();
            while(rs1.next()){
            sb.append(rs1.getString("invoice"));
            } 

            ps.executeUpdate();
            
            sb.append(ps.toString());
            System.out.println(ps.toString());
            
            result = sb.toString();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered!";
        }
        
             
        return sb.toString();
        
   
    }
    
    
    
    
}