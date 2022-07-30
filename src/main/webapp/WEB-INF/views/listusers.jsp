<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Kayıtlı Kullanıcı Bilgileri</title>
<style><%@include file="/WEB-INF/css/home.css"%></style>
</head>
<body>
<header>SpringMVC Project</header>
	<h1>Kayıtlı Kullanıcı Bilgileri</h1>
	<div>
	<table>
			<tr>
					<th>İsim </th>
					<th>Soy-isim</th>
					<th>K.Grubu </th>
					<th>Adres </th>
					<th>Telefon</th>
			</tr>
		<c:forEach var="user" items="${users}">
			<tr class="deneme">
				
				<td><c:out value="${user.address}" /></td>
				<td><c:out value="${user.blood}" /></td>
				<td><c:out value="${user.lastname}" /></td>
				<td><c:out value="${user.username}" /></td>				
				<td><c:out value="${user.phone}" /></td>

				<%-- 		<td>
					<a href="<c:url value="/delete/${user.id}"/>" >Delete user</a>
				</td> --%>
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
