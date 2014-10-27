<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("admin"))) {
                response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
%><script>
    function deleteTeamUser(eid){
        var status = confirm("Are you sure you..??");
        if(status==true){
            window.location="forJs/deleteTeamEmp.jsp?tid="+eid;
        }
    }
</script>
<%@page import="myBeans.registerBeans"%>
<%@page import="java.util.*"%>
<script type="text/javascript" src="myjs/allSimple.js"></script>
<div id="main-content">
    <!-- BEGIN PAGE CONTAINER-->
    <div class="container-fluid">
        <!-- BEGIN PAGE HEADER-->   
        <div class="row-fluid">
            <div class="span12">
                <!-- BEGIN THEME CUSTOMIZER-->

                <!-- END THEME CUSTOMIZER-->
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    Admin Area
                </h3>
            </div>
        </div>
        <!-- END PAGE HEADER-->
        <!-- BEGIN PAGE CONTENT-->

        <div class="row-fluid">
            <div class="span12">
                <%
                    String msg = request.getParameter("do");
                    if (msg != null) {
                        if (msg.equals("error")) {
                %>
                <div id="msg" class="alert alert-danger">
                    <strong>Employee not deleted</strong>
                    <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
                </div>
                <%                       } else if (msg.equals("success")) {

                %>
                <div id="msg" class="alert alert-success">
                    <strong>Employee deleted successfully</strong>
                    <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
                </div>
                <%}
                    }
                %>    
				<%
                    String msg1 = request.getParameter("do1");
                    if (msg1 != null) {
                        if (msg1.equals("error")) {
                %>
                <div id="msg" class="alert alert-danger">
                    <strong>Updation not done</strong>
                    <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
                </div>
                <%          } else if (msg1.equals("success")) {
                %>
                <div id="msg" class="alert alert-success">
                    <strong>Updation Done</strong>
                    <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
                </div>
                <%}
                    }
                %>
                <!-- BEGIN EXAMPLE TABLE widget-->
                <div class="widget purple">
                    <div class="widget-title">
                        <h4><i class="icon-list"></i>Team Memeber List</h4>
                    </div>
                    <div class="widget-body">

                        <div class="space15"></div>
                        <table class="table table-striped table-hover table-bordered" id="editable-sample">
                            <thead>
                                <tr>
                                    <th>Username</th>
                                    <th>Full Name</th>
                                    <th>Gender</th>
                                    <th>Cafe</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    registerBeans sb = new registerBeans();
                                    ArrayList alist = sb.getTeaminfo();
                                    if (alist.size() > 0) {
                                        Iterator itr = alist.iterator();
                                        while (itr.hasNext()) {
                                            sb = (registerBeans) itr.next();
                                %>
                                <tr class="">
                                    <td><a class="edit" style="text-decoration: none;" href="index.jsp?page=seeEmp.jsp&des=team&tid=<%=sb.getId()%>"><%=sb.getUname()%></a></td>
                                    <td><%=sb.getFirstname()%></td>
                                    <td><%=sb.getGender()%></td>
                                    <td><%=sb.getWork()%></td>
                                    <td><a class="edit" href="index.jsp?page=tedit.jsp&tid=<%=sb.getId()%>">Edit</a></td>
                                    <td><a class="" href="javascript:;" onclick="deleteTeamUser(<%=sb.getId()%>);">Delete</a></td>
                                </tr>
                                <%}
                                    }
                                %>


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- END EXAMPLE TABLE widget-->
        </div>
    </div>
</div>
