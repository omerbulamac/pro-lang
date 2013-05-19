<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Goster</title>
</head>
<body>
<jsp:useBean id="kaydet1" class="com.cehars.kullanici" scope="session"/>
<h2>Bilgiler</h2>
Adı:<%= kaydet1.getAdi()%><br>
Soyadi:<%= kaydet1.getSoyadi()%>
</body>
</html>