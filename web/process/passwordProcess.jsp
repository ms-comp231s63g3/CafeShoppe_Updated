<%@page import="myBeans.registerBeans"%>
<%
    String cp = request.getParameter("confirm_password");
    String p = request.getParameter("password");
    if (p.equals(cp)) {
        registerBeans rb = new registerBeans();

        rb.setPassword(request.getParameter("oldpassword"));
        rb.setPhone(request.getParameter("password"));
        String status = rb.changeAdmin(rb);
        response.sendRedirect("../admin/index.jsp?page=password.jsp&do="+status);
    }else{
        response.sendRedirect("../admin/index.jsp?page=password.jsp&do=not");
    }
%>