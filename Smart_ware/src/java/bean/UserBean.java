/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author emmanueledmund
 */
public class UserBean {
    
    private String username;
    private String password;
    private String roles;
    private String address;
    private String requestprescription;
    private String SlotTime;
    private String SlotDate;
    private int EmployeeID;
    private int PatientID;
    private String employeeName;
    private String employeeAddress;
    private String patientName;
    private String patientAddress;
    private String patientType;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRoles() {
        return roles;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRequestPerscription() {
        return requestprescription;
    }

    public void setRequestPerscription(String requestprescription) {
        this.requestprescription = requestprescription;
    }

    public String getSlotTime() {
        return SlotTime;
    }

    public void setSlotTime(String SlotTime) {
        this.SlotTime = SlotTime;
    }
    
    public String getSlotDate() {
        return SlotDate;
    }

    public void setSlotDate(String SlotDate) {
        this.SlotDate = SlotDate;
    }
    
    public int getEmployeeID() {
        return EmployeeID;
    }

    public void setEmployeeID(int EmployeeID) {
        this.EmployeeID = EmployeeID;
    }
    public int getPatientID() {
        return PatientID;
    }

    public void setPatientID(int PatientID) {
        this.PatientID = PatientID;
    }
    
    public String getemployeeName() {
        return employeeName;
    }

    public void setemployeeName(String employeeName) {
        this.employeeName = employeeName;
    }
    
    public String getemployeeAddress() {
        return employeeAddress;
    }

    public void setemployeeAddress(String employeeAddress) {
        this.employeeAddress = employeeAddress;
    }
    
    public String getpatientName() {
        return patientName;
    }

    public void setpatientName(String patientName) {
        this.patientName = patientName;
    }
    
    public String getpatientAddress() {
        return patientAddress;
    }

    public void setpatientAddress(String patientAddress) {
       this.patientAddress = patientAddress;
    }
    public String getpatientType() {
        return patientType;
    }

    public void setpatientType(String patientType) {
       this.patientType = patientType;
    }
    
}
 