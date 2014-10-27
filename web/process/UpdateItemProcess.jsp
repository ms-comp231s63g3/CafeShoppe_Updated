<%@page import="myBeans.registerBeans"%>
<%
    registerBeans rb = new registerBeans();
    rb.setUname(request.getParameter("item"));
    rb.setLoginType(request.getParameter("item_type"));
    rb.setPin(request.getParameter("price"));
    rb.setPadd(request.getParameter("des"));
    rb.setId(request.getParameter("item_id"));
    String status = rb.updateItem(rb);
    response.sendRedirect("../admin/index.jsp?page=itemList.jsp&do=" + status);

%>