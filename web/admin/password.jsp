<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("admin"))) {
                response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
%><div id="main-content">
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
        <%
            String msg = request.getParameter("do");
            if (msg != null) {
                if (msg.equals("error")) {
        %>
        <div id="msg" class="alert alert-danger">
            <strong>Old Password Not Matched</strong>
            <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
        </div>
        <%                       } else if (msg.equals("success")) {

        %>
        <div id="msg" class="alert alert-success">
            <strong>Password Successfully Updated</strong>
            <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
        </div>
        <%} else if (msg.equals("failed")) {
        %>
        <div id="msg" class="alert alert-danger">
            <strong>Password Not Updated</strong>
            <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
        </div>
        <%} else if (msg.equals("not")) {
        %>
        <div id="msg" class="alert alert-danger">
            <strong>New Password and Confirm Password not matched</strong>
            <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
        </div>
        <%                }
            }
        %>
        <div class="widget green">
            <div class="widget-title">
                <h4><i class="icon-reorder"></i> Change Password</h4>
               
            </div>
            <div class="widget-body form">
                <!-- BEGIN FORM-->
                <form class="cmxform form-horizontal" id="" method="get" action="../process/passwordProcess.jsp">
                    <div class="control-group ">
                        <label for="oldpassword" class="control-label">Old Password</label>
                        <div class="controls">
                            <input class="span6" id="oldpassword" name="oldpassword" type="password">
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="password" class="control-label">Password</label>
                        <div class="controls">
                            <input class="span6" id="password" name="password" type="password" onblur="check_new(this.value);">
                            <span id="validatemsg"></span>
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="confirm_password" class="control-label">Confirm Password</label>
                        <div class="controls">
                            <input class="span6" id="confirm_password" name="confirm_password" type="password" onblur="check_confirmPassword();"/>
                            <span id="confmsg"></span>
                        </div>
                    </div>
                    <div class="form-actions">
                        <input class="btn btn-success" name="submit" id="submit" type="submit" value="Change Password">
                    </div>

                </form>
                <!-- END FORM-->
            </div>
        </div>
    </div>
</div>