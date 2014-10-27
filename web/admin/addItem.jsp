<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("admin"))) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
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
        <%
            String msg = request.getParameter("do");
            if (msg != null) {
                if (msg.equals("failed")) {
        %>
        <div id="msg" class="alert alert-danger">
            <strong>Failed to Add Item</strong>
            <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
        </div>

        <%                       } else if (msg.equals("done")) {

        %>
        <div id="msg" class="alert alert-success">
            <strong>Item Successfully Added</strong>
            <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
        </div>
        <%}
            }
        %>
        <div class="widget green">
            <div class="widget-title">
                <h4><i class="icon-keyboard"></i>Introduce New Item</h4>
            </div>
            <div class="widget-body form">
                <form class="cmxform form-horizontal" method="get" action="../process/AddItemProcess.jsp" onsubmit="return checkItemFor();">
                    <div class="control-group ">
                        <label for="item" class="control-label">Item Name</label>
                        <div class="controls">
                            <input class="span6" placeholder="Item Name" name="item" id="item" type="text"/>
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="item_type" class="control-label">Item Type</label>
                        <div class="controls">
                            <select name="item_type" id="item_type" class="span6">
                                <option value="">Select Item Type</option>
                                <option value="Hot">Hot</option>
                                <option value="Cold">Cold</option>
                                <option value="Iced Teas">Iced Teas</option>
                                <option value="Hoteas">Hoteas</option>
                                <option value="Fruiteazers/Shakes">Fruiteazers/Shakes</option>                                
                            </select>
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="price" class="control-label">Price</label>
                        <div class="controls">
                            <input class="span6"  name="price" id="price" type="text" placeholder="Enter Price"/>
                        </div>
                    </div> 
                    <div class="control-group">
                        <label for="des" class="control-label">Description</label>
                        <div class="controls">
                            <textarea name="des" id="des" class="span6" placeholder="Enter Some Description" style="resize: none;"></textarea>

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
