<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<style><%@include file="/WEB-INF/css/register.css"%></style>

</head>
<body>
	<header>SpringMVC Project</header>

	<div class="jumbotron text-center">
		<h1>Kullanıcı Kayıt Formu</h1>

	</div>

	<div class="container">
  <form action="addStudent">
    <div class="row">
      <div class="col-25">
        <label for="address">İsim</label>
      </div>
      <div class="col-75">
        <input type="text" id="address" name="address" placeholder="İsminizi giriniz..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="blood">Soy İsim</label>
      </div>
      <div class="col-75">
        <input type="text" id="blood" name="blood" placeholder="Soy isminizi giriniz..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lastname">Kan Grubu</label>
      </div>
      <div class="col-75">
   		<input type="text" class="form-control" id="lastname" name="lastname" placeholder="Kan grubunuzu giriniz..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="phone">Telefon</label>
      </div>
      <div class="col-75">
        <input type="text" id="phone" name="phone" placeholder="Telefonunuzu giriniz.." >
      </div>
    </div>
        <div class="row">
      <div class="col-25">
        <label for="username">Adres</label>
      </div>
      <div class="col-75">
        <input type="text" id="username" name="username" placeholder="Adres bilginizi giriniz.." >
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Kaydet">
    </div>
  </form>
</div>

	<footer>Kullanıcı Kayıt Platformu</footer>
</body>
</html>
<div class="open_grepper_editor" title="Edit & Save To Grepper"></div>