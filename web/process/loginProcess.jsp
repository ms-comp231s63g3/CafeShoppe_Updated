<%@page import="myBeans.registerBeans"%>
<%
    registerBeans rb = new registerBeans();
    String uname = request.getParameter("uname");
    String password = request.getParameter("password");
    String loginType = request.getParameter("loginType");

    rb.setLoginType(loginType);
    rb.setUname(uname);
    rb.setPassword(password);

    String status = rb.loginStatus(rb);
    String loginId = status;
    if (loginType.equals("admin")) {
        session.setAttribute("session_id", loginId);
        session.setAttribute("session_type", loginType);
        response.sendRedirect("../admin/index.jsp");
    } else if (status.equals("failed")) {
        response.sendRedirect("../login.jsp?do='error'");
    }
%>