/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myBeans;

import Data_Access.MyProjectLayer;
import java.util.*;

public class registerBeans {

    private String id, uname, password, loginType, firstname, designation, email, phone, pin, dob, gender, padd, cadd, state, city, doj, work;
    MyProjectLayer mp = new MyProjectLayer();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPadd() {
        return padd;
    }

    public void setPadd(String padd) {
        this.padd = padd;
    }

    public String getCadd() {
        return cadd;
    }

    public void setCadd(String cadd) {
        this.cadd = cadd;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDoj() {
        return doj;
    }

    public void setDoj(String doj) {
        this.doj = doj;
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLoginType() {
        return loginType;
    }

    public void setLoginType(String loginType) {
        this.loginType = loginType;
    }

    public String loginStatus(registerBeans rb) {
        String status = mp.LoginEmp(rb);
        return status;
    }

    public String getRegister(registerBeans rb) {
        String status = mp.getEmployeeReg(rb);
        return status;
    }

    public ArrayList getinfo() {
        ArrayList flist = mp.fetchinfo();
        return flist;
    }

    public ArrayList Manegergetinfo(registerBeans rb) {
        ArrayList flist = mp.Managerfetchinfo(rb);
        return flist;
    }

    public ArrayList ManegergetFullinfo(registerBeans rb) {
        ArrayList flist = mp.ManagerFullfetchinfo(rb);
        return flist;
    }

    public ArrayList Teamgetinfo(registerBeans rb) {
        ArrayList flist = mp.Teamfetchinfo(rb);
        return flist;
    }

    public String deleteManEmp(registerBeans rb) {
        String status = mp.deleteManager(rb);
        return status;
    }

    public String changeAdmin(registerBeans rb) {
        String status = mp.AdminChange(rb);
        return status;
    }

    public ArrayList getIteminfo() {
        ArrayList ilist = mp.fetchItemList();
        return ilist;
    }

    public ArrayList getTeaminfo() {
        ArrayList flist = mp.fetchTeaminfo();
        return flist;
    }

    public String updateItem(registerBeans rb) {
        String status = mp.getItemUpdate(rb);
        return status;
    }

    public ArrayList Itemgetinfo(registerBeans rb) {
        ArrayList alist = mp.getParInfo(rb);
        return alist;
    }

    public String UpdateWork(registerBeans rb) {
        String status = mp.UpdateManagerWork(rb);
        return status;
    }

    public String UpdateTeamWork(registerBeans rb) {
        String status = mp.TeamUpdateWork(rb);
        return status;
    }

    public String deleteTeamEmp(registerBeans rb) {
        String status = mp.deleteTeam(rb);
        return status;
    }

    public String deleteItem(registerBeans rb) {
        String status = mp.deleteIte(rb);
        return status;
    }

    public String addItem(registerBeans rb) {
        String status = mp.addItem(rb);
        return status;
    }

    public int getOrdered(String cafe) {
        int order = mp.getOrderedSale(cafe);
        return order;
    }

    public int getIndent(String cafe) {
        int indent = mp.getIndentSale(cafe);
        return indent;
    }

    public int getExecute(String cafe) {
        int exe = mp.getExecuted(cafe);
        return exe;
    }

    public int fetchmilestone(String cafe) {
        int mile = mp.get_mile(cafe);
        return mile;
    }
    public ArrayList getGrinder(){
        ArrayList mlist=mp.getListGrinder();
        return mlist;
    }
    public ArrayList getDamage(){
        ArrayList mlist=mp.getDamageDump();
        return mlist;
    }
    public ArrayList getTransfer(){
        ArrayList alist=mp.getTransferReport();
        return alist;
    }
}
