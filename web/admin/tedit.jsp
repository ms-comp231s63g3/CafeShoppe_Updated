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
    
    if (tid1 != null) {
        registerBeans sb = new registerBeans();
        sb.setId(tid1);
        ArrayList alist = sb.Teamgetinfo(sb);
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
        <div class="widget green">
            <div class="widget-title">
                <h4><i class="icon-keyboard"></i> Register Employee</h4>
            </div>
            <div class="widget-body form">
                <form class="cmxform form-horizontal" id="" method="get" action="../process/UpdateProcess.jsp" onsubmit="return meditcheck();">
                    <div class="control-group ">
                        <label for="firstname" class="control-label">Employee Name</label>
                        <div class="controls">
                            <input class="span6" value="<%=sb.getFirstname()%>" disabled="true" placeholder="Enter Employee Name" type="text">
                            <input type="hidden" name="mid" id="mid" value="<%out.println(tid1);%>">
                            <input type="hidden" name="des" id="des" value="team">
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="uname" class="control-label">Username</label>
                        <div class="controls">
                            <input type="hidden" name="username" id="username"/>
                            <input class="span6"  value="<%=sb.getUname()%>" type="text" placeholder="Self Generated" disabled="true">
                        </div>
                    </div> 
                    <div class="control-group">
                        <label for="work" class="control-label">Work Area</label>
                        <div class="controls">
                            <%
                                String wrk = sb.getWork();
                                if (wrk.equals("Sector 17")) {
                            %>
                            <select class="span6 chzn-select" name="work" id="work" style="color: grey;">
                                <option value="">Choose a Category</option>
                                <option selected="true" value="Sector 17">Sector 17</option>
                                <option value="Sector 34">Sector 34</option>
                                <option value="Aroma Classic">Aroma Classic</option>
                            </select>
                            <%                                } else if (wrk.equals("Sector 34")) {
                            %>
                            <select class="span6 chzn-select" name="work" id="work" style="color: grey;">
                                <option value="">Choose a Category</option>
                                <option value="Sector 17">Sector 17</option>
                                <option selected="true" value="Sector 34">Sector 34</option>
                                <option value="Aroma Classic">Aroma Classic</option>
                            </select>
                            <% } else if (wrk.equals("Aroma Classic")) {
                            %>
                            <select class="span6 chzn-select" name="work" id="work" style="color: grey;">
                                <option value="">Choose a Category</option>
                                <option value="Sector 17">Sector 17</option>
                                <option value="Sector 34">Sector 34</option>
                                <option selected="true" value="Aroma Classic">Aroma Classic</option>
                            </select>
                            <%
                            }
                            %>

                        </div>
                    </div>

                    <div class="form-actions">
                        <input type="submit" class="btn btn-success" value="Update Work" name="reg" id="reg">
                    </div>

                </form>
                <!-- END FORM-->
            </div>
        </div>
    </div>
</div>
<%
            }
        }
    }
%>