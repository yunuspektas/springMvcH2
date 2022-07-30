<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Anasayfa</title>
<style><%@include file="/WEB-INF/css/home.css"%></style>
</head>
<body>
<header>SpringMVC Project</header>

<h1 class="h1">SpringMVC-H2  Database  Uygulaması</h1>

	<div><a href="<c:url value="/add"/>">Yeni Kayıt Ekle</a></div>
	<div><a href="<c:url value="/get"/>">Kayıtları Listele</a></div>
	
	
<footer>Kullanıcı Kayıt Platformu</footer>
</body>
</html>