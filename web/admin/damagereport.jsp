<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("admin"))) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
%>
<%@page import="myBeans.registerBeans"%>
<%@page import="java.util.*"%>
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
            <!-- BEGIN EXAMPLE TABLE widget-->
            <div class="widget purple">
                <div class="widget-title">
                    <h4><i class="icon-list"></i>Damage/Dump Report</h4>
                </div>
                <div class="widget-body">
                    <div class="space15"></div>
                    <table class="table table-striped table-hover table-bordered" id="editable-sample">
                        <thead>
                            <tr>
                                <th>S No.</th>
                                <th>Cafe Name</th>
                                <th>Item</th>
                                <th>Quantity</th>
                                <th>Reason</th>
                                <th>Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                int i=1;
                                registerBeans sb = new registerBeans();
                                ArrayList alist = sb.getDamage();
                                if (alist.size() > 0) {
                                    Iterator itr = alist.iterator();
                                    while (itr.hasNext()) {
                                        sb = (registerBeans) itr.next();
                            %>
                            <tr class="">
                                <td><%=i%></td>
                                <td><a class="edit" style="text-decoration: none;" href="javascript:;"><%=sb.getWork()%></a></td>
                                <td><%=sb.getUname()%></td>
                                <td><%=sb.getPin()%></td>
                                <td style="width: 100px; height: 50px;"><textarea readonly style="resize: none;" rows="2"><%=sb.getPadd()%></textarea></td>
                                <td><%=sb.getDoj()%></td>
                            </tr>
                            <%i++;}
                                }
                            %>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>