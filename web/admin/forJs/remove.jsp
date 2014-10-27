<%@page import="myBeans.registerBeans"%>
<%
    String id = request.getParameter("tid");
    registerBeans rb = new registerBeans();
    rb.setId(id);
    String delete_status = rb.deleteItem(rb);
    response.sendRedirect("../index.jsp?page=itemList.jsp&do=" + delete_status);
%>