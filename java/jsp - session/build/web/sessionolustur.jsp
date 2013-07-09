<%-- 
    Document   : sessionolustur
    Created on : 08.Tem.2013, 21:41:04
    Author     : cehars
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
         String text_ici = request.getParameter( "text_ismi" );
         
         session.setAttribute( "ad3", text_ici);
         
         response.sendRedirect("sonuc.jsp");
      %>
</body>
</html>
