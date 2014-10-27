<%@page import="myBeans.registerBeans"%>
<%
    String id = request.getParameter("tid");
    registerBeans rb = new registerBeans();
    rb.setId(id);
    String delete_status = rb.deleteManEmp(rb);
    if(delete_status.equals("done")){
        response.sendRedirect("../index.jsp?page=emplist.jsp&do=success");
    }else if(delete_status.equals("failed")){
        response.sendRedirect("../index.jsp?page=emplist.jsp&do=error");
    }
    

%>