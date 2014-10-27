<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("admin"))) {
                response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
%><%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="myBeans.registerBeans"%>
<%
    String tid1 = request.getParameter("tid");
    String des = request.getParameter("des");
    if (tid1 != null) {
        registerBeans sb = new registerBeans();
        sb.setId(tid1);
        sb.setDesignation(des);
        ArrayList alist = sb.ManegergetFullinfo(sb);
        if (alist.size() > 0) {
            Iterator itr = alist.iterator();
            while (itr.hasNext()) {
                sb = (registerBeans) itr.next();
%>
<div id="main-content">
    <!-- BEGIN PAGE CONTAINER-->
    <div class="container-fluid">
        <!-- BEGIN PAGE HEADER-->   
        <div class="row-fluid">
            <div class="span12">
                <h3 class="page-title">
                    Admin Area
                </h3>
            </div>
        </div>
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->

        <div class="widget green">
            <div class="widget-title">
                <h4><i class="icon-keyboard"></i> Employee Info</h4>
            </div>
            <div class="widget-body form">
                <!-- BEGIN FORM-->
                <form class="cmxform form-horizontal" id="" method="get" action="../process/RegisterProcess.jsp" onsubmit="return checkInfo();">
                    <div class="control-group ">
                        <label for="firstname" class="control-label">Employee Name</label>
                        <div class="controls">
                            <input class="span6" value="<%=sb.getFirstname()%>" disabled="true" type="text">
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="uname" class="control-label">Username</label>
                        <div class="controls">
                            <input class="span6" value="<%=sb.getUname()%>" disabled="true" type="text"/>
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="uname" class="control-label">Password</label>
                        <div class="controls">
                            <input class="span6" type="text" value="<%=sb.getPassword()%>" disabled="true">
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="email" class="control-label">Email</label>
                        <div class="controls">
                            <div class="input-icon left">
                                <i style="color: #4A8B4E;" class="icon-envelope"></i>
                                <input value="<%=sb.getEmail()%>" disabled="true" class="span5" type="email" />
                            </div>
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="phone" class="control-label">Phone Number</label>
                        <div class="controls">
                            <input class="span6" value="<%=sb.getPhone()%>" disabled="true" type="text">
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="pin" class="control-label">PIN Code</label>
                        <div class="controls">
                            <input type="text" value="<%=sb.getPin()%>" disabled="true" class="span6" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="dob" class="control-label">Date Of Birth</label>
                        <div class="controls">
                            <input value="<%=sb.getDob()%>" disabled="true" type="text" style="color: grey;" class="span6">
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="gender" class="control-label">Gender</label>
                        <div class="controls">
                            <input type="text" disabled="true" value="<%=sb.getGender()%>">
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="padd" class="control-label">Permanent Address</label>
                        <div class="controls">
                            <textarea class="span6" disabled="true" rows="3" placeholder="Enter Permanent Address" style="resize: none;" name="padd" id="padd"><%=sb.getPadd()%></textarea>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="cadd" class="control-label">Correspondence Address</label>
                        <div class="controls">
                            <textarea class="span6 " placeholder="Enter Correspondence Address" rows="3" style="resize: none;" name="cadd" id="cadd"><%=sb.getCadd()%></textarea>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="state" class="control-label">State</label>
                        <div class="controls">
                            <input type="text" class="span6" disabled="true" value="<%=sb.getState()%>"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="city" class="control-label">City</label>
                        <div class="controls">
                            <input type="text" class="span6" disabled="true" value="<%=sb.getCity()%>"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="doj" class="control-label">Date Of Joining</label>
                        <div class="controls">
                            <input type="text"  style="color: grey;" class="span5" disabled="true" value="<%=sb.getDoj()%>">
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="work" class="control-label">Work Area</label>
                        <div class="controls">
                            <input type="text" disabled="true" value="<%=sb.getWork()%>">
                            </select>
                        </div>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
    </div>
</div>
<%}
        }
    }%>