<%-- 
    Document   : sonuc
    Created on : 08.Tem.2013, 21:41:40
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
            String metin = "";
            String s = session.getAttribute( "ad3" ).toString();
            metin += s + "<br/>";
            
            // session.setAttribute("ad5","cehars");
            // metin += session.getAttribute("ad5").toString();
            
            out.print(metin);
      %>


</body>
</html>
