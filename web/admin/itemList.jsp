<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("admin"))) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
%>
<script>
    function deleteItem(eid){
        var status = confirm("Are you sure you..??");
        if(status==true){
            window.location="forJs/remove.jsp?tid="+eid;
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
                    <strong>Item not deleted</strong>
                </div>
                <%                       } else if (msg.equals("success")) {

                %>
                <div id="msg" class="alert alert-success">
                    <strong>Item deleted successfully</strong>
                    <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
                </div>
                <%                    } else if (msg.equals("failed")) {
                %>
                <div id="msg" class="alert alert-danger">
                    <strong>Updation not done</strong>
                    <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
                </div>
                <%          } else if (msg.equals("done")) {
                %>
                <div id="msg" class="alert alert-success">
                    <strong>Updation Done</strong>
                    <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
                </div>
                <%}
                    }
                %>   
            </div>
            <div class="widget purple">
                <div class="widget-title">
                    <h4><i class="icon-list"></i>Item List</h4>
                </div>
                <div class="widget-body">

                    <div class="space15"></div>
                    <table class="table table-striped table-hover table-bordered" id="editable-sample">
                        <thead>
                            <tr>
                                <th>S No.</th>
                                <th>Item Name</th>
                                <th>Item Type</th>
                                <th>Price</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                registerBeans sb = new registerBeans();
                                ArrayList alist = sb.getIteminfo();
                                int i = 1;
                                if (alist.size() > 0) {
                                    Iterator itr = alist.iterator();
                                    while (itr.hasNext()) {
                                        sb = (registerBeans) itr.next();
                            %>
                            <tr class="">
                                <td><%=i%></td>
                                <td><a class="edit" style="text-decoration: none;" href="index.jsp?page=seeIem.jsp&des=man&tid=<%=sb.getId()%>"><%=sb.getUname()%></a></td>
                                <td><%=sb.getLoginType()%></td>
                                <td><%=sb.getPin()%></td>
                                <td><a class="edit" href="index.jsp?page=editItem.jsp&tid=<%=sb.getId()%>">Edit</a></td>
                                <td><a class="delete" href="javascript:;" onclick="deleteItem(<%=sb.getId()%>);">Delete</a></td>
                            </tr>
                            <%
                                        i++;
                                    }
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