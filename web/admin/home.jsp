<%@page import="myBeans.registerBeans"%>
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
                <!-- BEGIN THEME CUSTOMIZER-->
                <%
                    registerBeans rb = new registerBeans();
                %>
                <!-- END THEME CUSTOMIZER-->
                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                <h3 class="page-title">
                    Admin Panel
                </h3>
            </div>
        </div>
        <div class="row-fluid">
            <hr>
            <!--BEGIN METRO STATES-->
            <h1>Aroma Classic</h1><hr>
            <div class="metro-nav">
                <div class="metro-nav-block nav-olive">
                    <a data-original-title="" href="#">
                        <i class="icon-bar-chart"></i>
                        <div class="info"><%=rb.getIndent("Aroma Classic")%></div>
                        <div class="status">Indents</div>
                    </a>
                </div>
                <div class="metro-nav-block double  nav-block-orange">
                    <a data-original-title="" href="#">
                        <i class="icon-shopping-cart"></i>
                        <div class="info"><%=rb.getOrdered("Aroma Classic")%></div>
                        <div class="status">Ordered</div>
                    </a>
                </div>
                <div class="metro-nav-block nav-light-purple">
                    <a data-original-title="" href="#">
                        <i class="icon-user"></i>
                        <div class="info"><%=rb.getExecute("Aroma Classic")%></div>
                        <div class="status">Executed</div>
                    </a>
                </div>
                <div class="metro-nav-block nav-light-blue double">
                    <a data-original-title="" href="#">
                        <i class="icon-tags"></i>
                        <div class="info"><%=rb.fetchmilestone("Aroma Classic")%></div>
                        <div class="status">Sale Yet</div>
                    </a>
                </div>
            </div>

        </div>
        <div class="row-fluid">
            <hr>
            <!--BEGIN METRO STATES-->
            <h1>Sector 34</h1><hr>
            <div class="metro-nav">
                <div class="metro-nav-block nav-olive">
                    <a data-original-title="" href="#">
                        <i class="icon-bar-chart"></i>
                        <div class="info"><%=rb.getIndent("Sector 34")%></div>
                        <div class="status">Indents</div>
                    </a>
                </div>
                <div class="metro-nav-block double  nav-block-orange">
                    <a data-original-title="" href="#">
                        <i class="icon-shopping-cart"></i>
                        <div class="info"><%=rb.getOrdered("Sector 34")%></div>
                        <div class="status">Ordered</div>
                    </a>
                </div>
                <div class="metro-nav-block nav-light-purple">
                    <a data-original-title="" href="#">
                        <i class="icon-user"></i>
                        <div class="info"><%=rb.getExecute("Sector 34")%></div>
                        <div class="status">Executed</div>
                    </a>
                </div>
                <div class="metro-nav-block nav-light-blue double">
                    <a data-original-title="" href="#">
                        <i class="icon-tags"></i>
                        <div class="info"><%=rb.fetchmilestone("Sector 34")%></div>
                        <div class="status">Sale Yet</div>
                    </a>
                </div>
            </div>

        </div>
        <div class="row-fluid">
            <hr>
            <!--BEGIN METRO STATES-->
            <h1>Sector 17</h1><hr>
            <div class="metro-nav">
                <div class="metro-nav-block nav-olive">
                    <a data-original-title="" href="#">
                        <i class="icon-bar-chart"></i>
                        <div class="info"><%=rb.getIndent("Sector 17")%></div>
                        <div class="status">Indents</div>
                    </a>
                </div>
                <div class="metro-nav-block double  nav-block-orange">
                    <a data-original-title="" href="#">
                        <i class="icon-shopping-cart"></i>
                        <div class="info"><%=rb.getOrdered("Sector 17")%></div>
                        <div class="status">Ordered</div>
                    </a>
                </div>
                <div class="metro-nav-block nav-light-purple">
                    <a data-original-title="" href="#">
                        <i class="icon-user"></i>
                        <div class="info"><%=rb.getExecute("Sector 17")%></div>
                        <div class="status">Executed</div>
                    </a>
                </div>
                <div class="metro-nav-block nav-light-blue double">
                    <a data-original-title="" href="#">
                        <i class="icon-tags"></i>
                        <div class="info"><%=rb.fetchmilestone("Sector 17")%></div>
                        <div class="status">Sale Yet</div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- END PAGE CONTAINER-->
</div>