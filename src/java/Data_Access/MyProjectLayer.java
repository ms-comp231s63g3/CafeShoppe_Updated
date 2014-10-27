package Data_Access;

import java.sql.*;
import java.text.*;
import java.util.*;
import myBeans.*;

public class MyProjectLayer {

    Connection con;
    Statement stmt;
    ResultSet rs;
    String msg;
    private String Date;
    private String date;

    private Connection myConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql:///robusta", "root", "");
            //con = DriverManager.getConnection("jdbc:mysql://localhost/schoolof_wisdom", "schoolof_wisdom", "viss0414");
        } catch (Exception e) {
            System.out.println("Error while making connection : " + e);
        }
        return con;
    }

    public String LoginEmp(registerBeans rb1) {
        String status = "failed";
        String typ = rb1.getLoginType();
        try {
            con = myConnection();
            stmt = con.createStatement();
            if (typ.equals("admin")) {
                String getLogin = "select * from admin where username='" + rb1.getUname() + "' and password='" + rb1.getPassword() + "'";
                System.out.println(getLogin);
                ResultSet rd = stmt.executeQuery(getLogin);
                if (rd.next()) {
                    status = rd.getString(1);
                    System.out.println("Status is : " + status);
                }
            }
        } catch (Exception e) {
            System.out.println("Exception in LoginEmp : " + e);
        }
        return status;
    }

    public String getEmployeeReg(registerBeans rb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "insert into " + rb.getDesignation() + " (name,uname,password,email,phone,pin,dob,gender,padd,cadd,state,city,doj,work) values('" + rb.getFirstname() + "','" + rb.getUname() + "','" + rb.getUname() + "','" + rb.getEmail() + "','" + rb.getPhone() + "','" + rb.getPin() + "','" + rb.getDob() + "','" + rb.getGender() + "','" + rb.getPadd() + "','" + rb.getCadd() + "','" + rb.getState() + "','" + rb.getCity() + "','" + rb.getDoj() + "','" + rb.getWork() + "')";
            int a = stmt.executeUpdate(q);
            if (a > 0) {
                status = "success";
            }
        } catch (Exception e) {
            System.out.println("Exception in getEmployeeReg : " + e);
        }
        return status;
    }

    public ArrayList fetchinfo() {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "Select * from manager";
            rs = stmt.executeQuery(q);
            while (rs.next()) {
                registerBeans info = new registerBeans();
                info.setFirstname(rs.getString(2));
                info.setUname(rs.getString(3));
                info.setWork(rs.getString(15));
                info.setGender(rs.getString(9));
                info.setId(rs.getString(1));
                mlist.add(info);
            }
        } catch (Exception e) {
            System.out.println("Error Fetchinfo :" + e);
        }
        return mlist;
    }

    public String deleteManager(registerBeans rb) {
        String report = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "delete from manager where id='" + rb.getId() + "'";
            int status = stmt.executeUpdate(q);
            if (status > 0) {
                report = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in deleteManager : " + e);
        }
        return report;
    }

    public ArrayList fetchTeaminfo() {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "Select * from team";
            rs = stmt.executeQuery(q);
            while (rs.next()) {
                registerBeans info = new registerBeans();
                info.setFirstname(rs.getString(2));
                info.setUname(rs.getString(3));
                info.setWork(rs.getString(15));
                info.setGender(rs.getString(9));
                info.setId(rs.getString(1));
                mlist.add(info);
            }
        } catch (Exception e) {
            System.out.println("Error Fetchinfo :" + e);
        }
        return mlist;
    }

    public String deleteTeam(registerBeans rb) {
        String report = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "delete from Team where id=" + rb.getId() + "";
            int status = stmt.executeUpdate(q);
            if (status > 0) {
                report = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in deleteManager : " + e);
        }
        return report;
    }

    public ArrayList Managerfetchinfo(registerBeans rb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "Select * from manager where id=" + rb.getId() + "";
            rs = stmt.executeQuery(q);
            while (rs.next()) {
                registerBeans info = new registerBeans();
                info.setFirstname(rs.getString(2));
                info.setUname(rs.getString(3));
                info.setWork(rs.getString(15));
                mlist.add(info);
            }
        } catch (Exception e) {
            System.out.println("Error Managerfetchinfo :" + e);
        }
        return mlist;
    }

    public String UpdateManagerWork(registerBeans rb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "update manager set work='" + rb.getWork() + "' where id=" + rb.getId() + "";
            int a = stmt.executeUpdate(q);
            if (a > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in UpdateManagerWork : " + e);
        }
        return status;
    }

    public ArrayList Teamfetchinfo(registerBeans rb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "Select * from team where id=" + rb.getId() + "";
            rs = stmt.executeQuery(q);
            while (rs.next()) {
                registerBeans info = new registerBeans();
                info.setFirstname(rs.getString(2));
                info.setUname(rs.getString(3));
                info.setWork(rs.getString(15));
                mlist.add(info);
            }
        } catch (Exception e) {
            System.out.println("Error Managerfetchinfo :" + e);
        }
        return mlist;
    }

    public String TeamUpdateWork(registerBeans rb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "update team set work='" + rb.getWork() + "' where id=" + rb.getId() + "";
            int a = stmt.executeUpdate(q);
            if (a > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in UpdateManagerWork : " + e);
        }
        return status;
    }

    public ArrayList ManagerFullfetchinfo(registerBeans rb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            if (rb.getDesignation().equals("man")) {
                String q = "Select * from manager where id=" + rb.getId() + "";
                rs = stmt.executeQuery(q);
                while (rs.next()) {
                    registerBeans info = new registerBeans();
                    info.setFirstname(rs.getString(2));
                    info.setUname(rs.getString(3));
                    info.setPassword(rs.getString(4));
                    info.setEmail(rs.getString(5));
                    info.setPhone(rs.getString(6));
                    info.setPin(rs.getString(7));
                    info.setDob(rs.getString(8));
                    info.setGender(rs.getString(9));
                    info.setPadd(rs.getString(10));
                    info.setCadd(rs.getString(11));
                    info.setState(rs.getString(12));
                    info.setCity(rs.getString(13));
                    info.setDoj(rs.getString(14));
                    info.setWork(rs.getString(15));
                    mlist.add(info);
                }
            } else if (rb.getDesignation().equals("team")) {
                String q = "Select * from team where id=" + rb.getId() + "";
                rs = stmt.executeQuery(q);
                while (rs.next()) {
                    registerBeans info = new registerBeans();
                    info.setFirstname(rs.getString(2));
                    info.setUname(rs.getString(3));
                    info.setPassword(rs.getString(4));
                    info.setEmail(rs.getString(5));
                    info.setPhone(rs.getString(6));
                    info.setPin(rs.getString(7));
                    info.setDob(rs.getString(8));
                    info.setGender(rs.getString(9));
                    info.setPadd(rs.getString(10));
                    info.setCadd(rs.getString(11));
                    info.setState(rs.getString(12));
                    info.setCity(rs.getString(13));
                    info.setDoj(rs.getString(14));
                    info.setWork(rs.getString(15));
                    mlist.add(info);
                }
            }
        } catch (Exception e) {
            System.out.println("Error ManagerFullfetchinfo :" + e);
        }
        return mlist;
    }

    public String AdminChange(registerBeans rb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "Select * from admin where password='" + rb.getPassword() + "'";
            rs = stmt.executeQuery(q);
            if (rs.next()) {
                String w = "update admin set password='" + rb.getPhone() + "' where password='" + rb.getPassword() + "'";
                int a = stmt.executeUpdate(w);
                if (a > 0) {
                    status = "success";
                }
            } else {
                status = "error";
            }

        } catch (Exception e) {
            System.out.println("Exception in Admin Change : " + e);
        }
        return status;
    }

    public String addItem(registerBeans rb) {
        String status = "failed";
        try {
            DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
            String date = df.format(new java.util.Date());
            con = myConnection();
            stmt = con.createStatement();
            String w = "insert into menu(item_name,cost,item_category,recipe,intro_on) values('" + rb.getUname() + "','" + rb.getPin() + "','" + rb.getLoginType() + "','" + rb.getPadd() + "','" + date + "')";
            int a = stmt.executeUpdate(w);
            if (a > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in editBanner : " + e);
        }
        return status;
    }

    public ArrayList fetchItemList() {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "Select * from menu ";
            rs = stmt.executeQuery(q);
            while (rs.next()) {
                registerBeans info = new registerBeans();
                info.setUname(rs.getString(2));
                info.setLoginType(rs.getString(4));
                info.setPin(rs.getString(3));
                info.setId(rs.getString(1));
                mlist.add(info);
            }
        } catch (Exception e) {
            System.out.println("Error fetchItemList :" + e);
        }
        return mlist;
    }

    public String deleteIte(registerBeans rb) {
        String status = "error";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String w = "delete from menu where id='" + rb.getId() + "'";
            int a = stmt.executeUpdate(w);
            if (a > 0) {
                status = "success";
            }
        } catch (Exception e) {
            System.out.println("Exception in editBanner : " + e);
        }
        return status;
    }

    public ArrayList getParInfo(registerBeans rb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "Select * from menu where id=" + rb.getId() + "";
            ResultSet rs = stmt.executeQuery(q);
            while (rs.next()) {
                registerBeans info = new registerBeans();
                info.setUname(rs.getString(2));
                info.setLoginType(rs.getString(4));
                info.setPin(rs.getString(3));
                info.setId(rs.getString(1));
                info.setPadd(rs.getString(5));
                mlist.add(info);
            }
        } catch (Exception e) {
            System.out.println("Error getParInfo :" + e);
        }
        return mlist;
    }

    public String getItemUpdate(registerBeans rb) {
        String status = "error";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String w = "update menu set item_name='" + rb.getUname() + "',cost='" + rb.getPin() + "',item_category='" + rb.getLoginType() + "',recipe='" + rb.getPadd() + "' where id='" + rb.getId() + "'";
            int a = stmt.executeUpdate(w);
            if (a > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in editBanner : " + e);
        }
        return status;
    }

    public int getIndentSale(String cafe) {
        int status = 0;
        try {
            con = myConnection();
            stmt = con.createStatement();
            String query = "select count(*) from sale where cafe_name='" + cafe + "'";
            rs = stmt.executeQuery(query);
            if (rs.next()) {
                status = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Exception in getIndent :" + e);
        }
        return status;
    }

    public int getOrderedSale(String cafe) {
        int status = 0;
        try {
            con = myConnection();
            stmt = con.createStatement();
            String query2 = "select count(*) from sale where cafe_name='" + cafe + "' and status='Ordered'";
            rs = stmt.executeQuery(query2);
            if (rs.next()) {
                status = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Exception in getOrdered :" + e);
        }
        return status;
    }

    public int getExecuted(String cafe) {
        int status = 0;
        try {
            con = myConnection();
            stmt = con.createStatement();

            String query2 = "select count(*) from sale where cafe_name='" + cafe + "' and status='Executed'";
            rs = stmt.executeQuery(query2);
            if (rs.next()) {
                status = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Exception in getExecuted :" + e);
        }
        return status;
    }

    public int get_mile(String cafe) {
        int status = 0;
        try {
            con = myConnection();
            stmt = con.createStatement();

            String query2 = "select sum(net_ammount) from sale where cafe_name='" + cafe + "'";
            rs = stmt.executeQuery(query2);
            if (rs.next()) {
                status = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Exception in get_mile :" + e);
        }
        return status;
    }

    public ArrayList getListGrinder() {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "Select * from grinder_status";
            ResultSet rs = stmt.executeQuery(q);
            while (rs.next()) {
                registerBeans info = new registerBeans();
                info.setUname(rs.getString(5));
                info.setPin(rs.getString(2));
                info.setState(rs.getString(3));
                info.setDoj(rs.getString(6));
                info.setPadd(rs.getString(4));
                mlist.add(info);
            }
        } catch (Exception e) {
            System.out.println("Error getParInfo :" + e);
        }
        return mlist;
    }

    public ArrayList getDamageDump() {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "Select * from damage";
            ResultSet rs = stmt.executeQuery(q);
            while (rs.next()) {
                registerBeans info = new registerBeans();
                info.setWork(rs.getString(6));
                info.setUname(rs.getString(2));
                info.setPin(rs.getString(3));
                info.setDoj(rs.getString(5));
                info.setPadd(rs.getString(4));
                mlist.add(info);
            }
        } catch (Exception e) {
            System.out.println("Error getParInfo :" + e);
        }
        return mlist;
    }

    public ArrayList getTransferReport() {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "Select * from stock_report";
            ResultSet rs = stmt.executeQuery(q);
            while (rs.next()) {
                registerBeans info = new registerBeans();
                info.setWork(rs.getString(3));
                info.setUname(rs.getString(2));
                info.setPin(rs.getString(4));
                info.setDoj(rs.getString(6));
                info.setPhone(rs.getString(5));
                mlist.add(info);
            }
        } catch (Exception e) {
            System.out.println("Error getParInfo :" + e);
        }
        return mlist;
    }
}