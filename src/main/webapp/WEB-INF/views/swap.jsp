<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>User management</h1>

	<table>
			<tr>
					<th>Isim </th>
					<th>Soy isim</th>
					<th>Kan Grubu </th>
					<th>Adres </th>
					<th>Telefon</th>
			</tr>
		<c:forEach var="user" items="${users}">
			<tr>
				
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

	<a href="<c:url value="/add"/>">Kayit Sayfasi</a>
	<a href="<c:url value="/add"/>">Listele</a>
	<a href="<c:url value="/"/>">Ana Sayfa</a>
</body>
</html>
