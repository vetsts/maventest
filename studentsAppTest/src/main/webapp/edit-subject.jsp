<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="students.daopattern.dao.*" %>
<%@ page import="students.daopattern.dto.*" %>
<%@ page import="students.daopattern.mysql.*" %>


<!DOCTYPE html>
<html>
 <head>
 <meta charset="utf-8">
  <title>Двухколоночный макет  на BlogGood.ru</title>
  <link rel="stylesheet" type="text/css" href="style.css">
 </head>
 <body>
  <div class="container">
   <div class="header">STUDENTS.WEB
   <div class="menu">
   <a href="index">Главная</a> |
   <a href="#">О проекте</a> |
   <a href="#">Контакты</a> |
   <a href="#">Вопросы</a>
   <div style="float: right"><a href="exit">Выход</a> &nbsp;</div>
   </div>
   </div>
   <div class="sidebar">
    <p><a href="marks">Список студентов</a></p>
	<p><a href="subjects">Список предметов</a></p>
    <p><a href="studentadd">Добавить студента</a></p>
    <p><a href="subjectadd">Добавить предмет</a></p>
	<p><a href="markadd">Добавить оценку</a></p>
   </div>
   <div class="content">

 <h2>Редактировать предмет</h2><br>
 <br><br>
 <form action="edit-subject" method="GET" >
 <table border = 1 >
 
 </table>
 <input type="hidden" name="subjectId" value="${subjectId}">
 <p>Введите предмет: <input type = "text" value ="" name = "subjectName"></p>
 <input type = "submit" value = "Редактировать предмет" /></form>
<c:if test="${value != null}">
		<c:redirect url = "http://localhost:8080/studentsApp/subjects"/>
	</c:if>
	<c:if test = "${subjectnm != null}">
         <p><c:out value = "${subjectnm}"/><p>
      </c:if>
	  	  <c:if test = "${subjectDeleted != null }">
         <p><c:out value = "${subjectDeleted}"/><p>
      </c:if>
	  
</div>
<div class="footer">&copy; STUDENTS.WEB</div>
</div>
</body>
</html>