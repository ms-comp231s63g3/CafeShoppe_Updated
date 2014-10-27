<%@page import="myBeans.registerBeans"%>
<%
    registerBeans rb = new registerBeans();
    rb.setUname(request.getParameter("item"));
    rb.setLoginType(request.getParameter("item_type"));
    rb.setPin(request.getParameter("price"));
    rb.setPadd(request.getParameter("des"));

    String status = rb.addItem(rb);
    response.sendRedirect("../admin/index.jsp?page=addItem.jsp&do="+status);

%>