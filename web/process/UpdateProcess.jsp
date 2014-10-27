<%@page import="myBeans.registerBeans"%>
<%
    registerBeans rb = new registerBeans();
    String des = request.getParameter("des");
    if (des.equals("man")) {
        rb.setId(request.getParameter("mid"));
        rb.setWork(request.getParameter("work"));
        String status = rb.UpdateWork(rb);
        if (status.equals("done")) {
            response.sendRedirect("../admin/index.jsp?page=emplist.jsp&do1=success");
        } else {
            response.sendRedirect("../admin/index.jsp?page=emplist.jsp&do1=error");
        }
    } else if (des.equals("team")) {
        rb.setId(request.getParameter("mid"));
        rb.setWork(request.getParameter("work"));
        String status = rb.UpdateTeamWork(rb);
        if (status.equals("done")) {
            response.sendRedirect("../admin/index.jsp?page=templist.jsp&do1=success");
        } else {
            response.sendRedirect("../admin/index.jsp?page=templist.jsp&do1=error");
        }
    }
%>