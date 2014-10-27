<%@page import="myBeans.registerBeans"%>
<%
    registerBeans rb = new registerBeans();
    rb.setFirstname(request.getParameter("firstname"));
    rb.setDesignation(request.getParameter("designation"));
    rb.setUname(request.getParameter("username"));
    rb.setEmail(request.getParameter("email"));
    rb.setPhone(request.getParameter("phone"));
    rb.setPin(request.getParameter("pin"));
    rb.setDob(request.getParameter("dob"));
    rb.setGender(request.getParameter("gender"));
    rb.setPadd(request.getParameter("padd"));
    rb.setCadd(request.getParameter("cadd"));
    rb.setState(request.getParameter("state"));
    rb.setCity(request.getParameter("city"));
    rb.setDoj(request.getParameter("doj"));
    rb.setWork(request.getParameter("work"));
    String status = rb.getRegister(rb);
    if (status.equals("success")) {
        response.sendRedirect("../admin/index.jsp?page=register.jsp&do=success");
    } else if (status.equals("failed")) {
        response.sendRedirect("../admin/index.jsp?page=register.jsp&do=error");
    }
%>