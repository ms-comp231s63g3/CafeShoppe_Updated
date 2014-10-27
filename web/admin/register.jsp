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
            <strong>Registeration Failed</strong>
            <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
        </div>

        <%                       } else if (msg.equals("success")) {

        %>
        <div id="msg" class="alert alert-success">
            <strong>Registered Successfully</strong>
            <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
        </div>
        <%}
            }
        %>
        <div class="widget green">
            <div class="widget-title">
                <h4><i class="icon-keyboard"></i> Register Employee</h4>
            </div>
            <div class="widget-body form">
                <!-- BEGIN FORM-->
                <form class="cmxform form-horizontal" id="" method="get" action="../process/RegisterProcess.jsp" onsubmit="return checkInfo();">
                    <div class="control-group ">
                        <label for="firstname" class="control-label">Employee Name</label>
                        <div class="controls">
                            <input class="span6" placeholder="Enter Employee Name" id="firstname" name="firstname" type="text">
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="designation" class="control-label">Designation</label>
                        <div class="controls">
                            <select onchange="setUsername(this.value);"  class="span6 chzn-select" style="color: grey;" name="designation" id="designation" >
                                <option value="">Choose a Category</option>
                                <option value="manager">Cafe Manager</option>
                                <option value="team">Team Member</option>
                            </select>
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="uname" class="control-label">Username</label>
                        <div class="controls">
                            <input type="hidden" name="username" id="username"/>
                            <input class="span6" id="uname" name="uname" type="text" placeholder="Self Generated" disabled="true">
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="email" class="control-label">Email</label>
                        <div class="controls">
                            <div class="input-icon left">
                                <i style="color: #4A8B4E;" class="icon-envelope"></i>
                                <input name="email" id="email" class="span6" type="email" placeholder="Enter Email Address" />
                            </div>
                        </div>
                    </div>
                    <div class="control-group ">
                        <label for="phone" class="control-label">Phone Number</label>
                        <div class="controls">
                            <input class="span6" placeholder="Enter Phone Number" id="phone" name="phone" type="text">
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="pin" class="control-label">PIN Code</label>
                        <div class="controls">
                            <input type="text" placeholder="Enter PIN Code" class="span6" name="pin" id="pin">
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="dob" class="control-label">Date Of Birth</label>
                        <div class="controls">
                            <input name="dob" id="dob" type="date" style="color: grey;" class="span6">
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="gender" class="control-label">Gender</label>
                        <div class="controls">
                            <select class="span6 chzn-select" style="color: grey;" name="gender" id="gender" >
                                <option value="">Choose Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="padd" class="control-label">Permanent Address</label>
                        <div class="controls">
                            <textarea class="span6 " rows="3" placeholder="Enter Permanent Address" style="resize: none;" name="padd" id="padd"></textarea>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="cadd" class="control-label">Correspondence Address</label>
                        <div class="controls">
                            <textarea class="span6 " placeholder="Enter Correspondence Address" rows="3" style="resize: none;" name="cadd" id="cadd"></textarea>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="state" class="control-label">State</label>
                        <div class="controls">
                            <input type="text" class="span6 " name="state" placeholder="Enter State" id="state">
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="city" class="control-label">City</label>
                        <div class="controls">
                            <input type="text" class="span6" name="city" placeholder="Enter City" id="city">
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="doj" class="control-label">Date Of Joining</label>
                        <div class="controls">
                            <input type="date"  style="color: grey;" name="doj" id="doj" class="span5">
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="work" class="control-label">Work Area</label>
                        <div class="controls">
                            <select class="span6 chzn-select" name="work" id="work" style="color: grey;">
                                <option value="">Choose a Category</option>
                                <option value="Sector 17">Sector 17</option>
                                <option value="Sector 34">Sector 34</option>
                                <option value="Aroma Classic">Aroma Classic</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-actions">
                        <input type="submit" class="btn btn-success" value="Register Employee" name="reg" id="reg">
                    </div>

                </form>
                <!-- END FORM-->
            </div>
        </div>
    </div>
</div>