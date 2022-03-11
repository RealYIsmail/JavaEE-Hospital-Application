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

public class UserDao {
    
    private String dbUrl = "jdbc:derby://localhost:1527/ESDcoursework";
    private String dbUname = "yonis"; 
    private String dbPassword = "yonis";
    private String dbDriver = "org.apache.derby.jdbc.ClientDriver";
    
    
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
        String sql = "INSERT INTO BOOKING_SLOTS (SlotDate, SlotTime, requestprescription, EmployeeID, PatientID) VALUES (?, ?, ?, ?, ?)";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, newslot.getSlotDate());
            ps.setString(2, newslot.getSlotTime());
            ps.setString(3, newslot.getRequestPerscription());
            ps.setInt(4, newslot.getEmployeeID());
            ps.setInt(5, newslot.getPatientID());

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
        String sql = "INSERT INTO EMPLOYEE (EMPLOYEENAME, EMPLOYEEADDRESS, USERNAME) VALUES (?, ?, ?)";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, adddoc.getemployeeName());
            ps.setString(2, adddoc.getemployeeAddress());
            ps.setString(3, adddoc.getUsername());
       
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
        String sql = "INSERT INTO PATIENTS (PATIENTNAME, PATIENTADDRESS, PATIENTTYPE, USERNAME) VALUES (?, ?, ?, ?)";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, addpatient.getpatientName());
            ps.setString(2, addpatient.getpatientAddress());
            ps.setString(3, addpatient.getpatientType());
            ps.setString(4, addpatient.getUsername());
       
            ps.executeUpdate();
                    
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            
            result = "data not entered";
        }
        
             
        return result;
        
   
    }
    
    ///////////////////////////// validate login ///////////////////////////
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
    
    ///////////////////////////// validate login ///////////////////////////
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
    
    ///////////////////////////// validate login ///////////////////////////
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
    
    ///////////////////////////// validate login ///////////////////////////
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
    
    
    /// REMOVE THE COMMENTS OF THE CODE HERE IF YOU ARE DOING DOCTOR DASHBOARD
    ///////////////////////////////// DOCTOR DASHBOARD ////////////////////////////////////////////
    /*
    public String doctordashboard(UserBean viewpatients){
        // Input your code 
        
   
    }
    */
    
    
    
    /*
     /// REMOVE THE COMMENTS OF THE CODE HERE IF YOU ARE DOING SURGERY
    ///////////////////////////////// SURGERY ////////////////////////////////////////////
    public String viewsurgery(UserBean surg){
        // INPUT YOUR CODE HERE
        
        
    }
    */
   
    
    
}
/**
<%!
            public class Nurse {
                 String dbUrl = "jdbc:derby://localhost:1527/SmartCareDB";
                 String dbUname = "smartcare"; 
                 String dbPassword = "1234";
                  


                 Connection connection = null;
                 PreparedStatement addNurse = null;
                 ResultSet resultSet = null;

                 public Nurse(){

                 try {
                 
                    connection = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
                    
                    addNurse  = connection.prepareStatement(
                        "INSERT INTO NURSE (USERNAME, PASSWORD, FULLNAME, EMAIL)"
+ " VALUES (?, ?, ?, ?) ");
                                    
                 } catch (SQLException ex) {
                    ex.printStackTrace();
            
                    }


            }

            public int setNurse(String username, String password, String fullname, String email){
                
                int result1 = 0;
                try{
                    addNurse.setString(1, username);
                    addNurse.setString(2, password);
                    addNurse.setString(3, fullname);
                    addNurse.setString(4, email);
                    result1 =  addNurse.executeUpdate();
                    

                } catch (SQLException ex) {
                    ex.printStackTrace();
            
                    }

             
                  return result1;

               }
        }

            %>
            
            <%  
                int result1 = 0;
                
                if (request.getParameter("add") !=null){
                String userName = new String();
                String password = new String();
                String fullName = new String();
                String email = new String();
                
                

                if (request.getParameter("username") != null) {
                    userName = request.getParameter("username");
                
                }
                
                if (request.getParameter("password") != null) {
                    password = request.getParameter("password");
                
                }
                     
                if (request.getParameter("fullname") != null) {
                    fullName = request.getParameter("fullname");
                
                }
                
                if (request.getParameter("email") != null) {
                    email = request.getParameter("email");
                
                }
                
                
                Nurse nurse = new Nurse();
                result1 = nurse.setNurse(userName, password, fullName, email);
                }
            %>
            
            <form name="myForm" action="adminDashB.jsp" method="POST">
                <table border="0">
                   
                    <tbody>
                        <tr>
                            <td>Username:</td>
                            <td><input type="text" name="username" value="" size="20" /> </td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="password" value="" size="50" /></td>
                        </tr> 
                        <tr>
                            <td>Fullname:</td>
                            <td><input type="text" name="fullname" value="" size="50" /></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input type="text" name="email" value="" size="50" /></td>
                        </tr>
                    </tbody>
                </table>
                <input type="hidden" name="hidden" value="<%= result1 %>" />
                <input type="reset" value="Clear" name="clear" /> 
                <input type="submit" value="Add" name="add" />
            </form>
                <script language="javascript">
                        function displayResult1()
                        {
                            if(document.myForm.hidden.value == 1){
                                alert ("User entered!"); 
                            }
                        }
		
                </script>
                * **/