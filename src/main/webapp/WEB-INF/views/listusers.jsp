<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Kayıtlı Kullanıcı Bilgileri</title>
<style><%@include file="/WEB-INF/css/home.css"%></style>
</head>
<body>
<header>SpringMVC Projesi</header>
	<h2>Kayıtlı Kullanıcı Bilgileri</h2>
	<div>
	<table id="users">
			<tr>
					<th>İSİM </th>
					<th>SOY İSİM</th>
					<th>KAN GRUBU</th>
					<th>ADRES</th>
					<th>TELEFON</th>
			</tr>
		<c:forEach var="user" items="${users}">
			<tr class="deneme">
				
				<td><c:out value="${user.address}" /></td>
				<td><c:out value="${user.blood}" /></td>
				<td><c:out value="${user.lastname}" /></td>
				<td><c:out value="${user.username}" /></td>				
				<td><c:out value="${user.phone}" /></td>


			</tr>
		</c:forEach>
		<c:if test="${empty users}">
			Daha kullanıcı kaydı yapılmadı
		</c:if>
		
	</table>
	<a href="<c:url value="/"/>">Ana Sayfa</a>
	</div>
	


	<footer>Kullanıcı Kayıt Platformu</footer>
	
</body>
</html>
