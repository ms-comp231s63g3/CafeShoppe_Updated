<%@page import="myBeans.registerBeans"%>
<%
    String id = request.getParameter("tid");
    registerBeans rb = new registerBeans();
    rb.setId(id);
    String delete_status = rb.deleteTeamEmp(rb);
    if (delete_status.equals("done")) {
        response.sendRedirect("../index.jsp?page=templist.jsp&do=success");
    } else {
        response.sendRedirect("../index.jsp?page=templist.jsp&do=failure");
    }

%>