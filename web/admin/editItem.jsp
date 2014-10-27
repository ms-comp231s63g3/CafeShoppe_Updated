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
        ArrayList alist = sb.Itemgetinfo(sb);
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
                <h4><i class="icon-keyboard"></i>Edit Item</h4>
            </div>
            <div class="widget-body form">
                <form class="cmxform form-horizontal" method="get" action="../process/UpdateItemProcess.jsp" onsubmit="return checkItemFor();">
                    <input  type="hidden" value="<%=sb.getId()%>" name="item_id" id="item_id" readonly="true"/>
                    <div class="control-group ">
                        <label for="item" class="control-label">Item Name</label>
                        <div class="controls">
                            <input value="<%=sb.getUname()%>" class="span6" placeholder="Item Name" name="item" id="item" type="text"/>
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="item_type" class="control-label">Item Type</label>
                        <div class="controls">
                            <%
                                String dem = sb.getLoginType();
                                if (dem.equals("Hot")) {
                            %>
                            <select name="item_type" id="item_type" class="span6">
                                <option value="">Select Item Type</option>
                                <option selected="true" value="Hot">Hot</option>
                                <option value="Cold">Cold</option>
                                <option value="Iced Teas">Iced Teas</option>
                                <option value="Hoteas">Hoteas</option>
                                <option value="Fruiteazers/Shakes">Fruiteazers/Shakes</option>                                
                            </select>
                            <%                            } else if (dem.equals("Cold")) {
                            %>
                            <select name="item_type" id="item_type" class="span6">
                                <option value="">Select Item Type</option>
                                <option value="Hot">Hot</option>
                                <option selected="true" value="Cold">Cold</option>
                                <option value="Iced Teas">Iced Teas</option>
                                <option value="Hoteas">Hoteas</option>
                                <option value="Fruiteazers/Shakes">Fruiteazers/Shakes</option>                                
                            </select>
                            <%                            } else if (dem.equals("Iced Teas")) {
                            %>
                            <select name="item_type" id="item_type" class="span6">
                                <option value="">Select Item Type</option>
                                <option value="Hot">Hot</option>
                                <option value="Cold">Cold</option>
                                <option selected="true"  value="Iced Teas">Iced Teas</option>
                                <option value="Hoteas">Hoteas</option>
                                <option value="Fruiteazers/Shakes">Fruiteazers/Shakes</option>                                
                            </select>
                            <%                                } else if (dem.equals("Hoteas")) {
                            %>
                            <select name="item_type" id="item_type" class="span6">
                                <option value="">Select Item Type</option>
                                <option value="Hot">Hot</option>
                                <option value="Cold">Cold</option>
                                <option value="Iced Teas">Iced Teas</option>
                                <option value="Hoteas" selected="true">Hoteas</option>
                                <option value="Fruiteazers/Shakes">Fruiteazers/Shakes</option>                                
                            </select>
                            <%                            } else if (dem.equals("Fruiteazers/Shakes")) {
                            %>
                            <select name="item_type" id="item_type" class="span6">
                                <option value="">Select Item Type</option>
                                <option value="Hot">Hot</option>
                                <option value="Cold">Cold</option>
                                <option value="Iced Teas">Iced Teas</option>
                                <option value="Hoteas">Hoteas</option>
                                <option selected="true" value="Fruiteazers/Shakes">Fruiteazers/Shakes</option>                                
                            </select>
                            <%                                }
                            %>
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="price" class="control-label">Price</label>
                        <div class="controls">
                            <input class="span6" value="<%=sb.getPin()%>"  name="price" id="price" type="text" placeholder="Enter Price"/>
                        </div>
                    </div> 
                    <div class="control-group">
                        <label for="des" class="control-label">Description</label>
                        <div class="controls">
                            <textarea name="des" id="des" class="span6" placeholder="Enter Some Description" style="resize: none;"><%=sb.getPadd()%></textarea>

                        </div>
                    </div>
                    <div class="form-actions">
                        <input type="submit" class="btn btn-success" value="Update" name="reg" id="reg">
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