<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css" rel="stylesheet"type="text/css">
	<link href="${pageContext.request.contextPath}/resources/assets/css/mainPage.css" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/bossAdd.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bossImage"></script>
<title>${bossList.itemName}정보</title>
</head>
<body>
<form:form modelAttribute="ItemDto" method="POST" enctype="multipart/form-data" onsubmit="return check()">
		<table 
		width="50%" 
		height=200
		border="1">
		<tr>
		<td rowspan="3"><div class="select_img"><img style=width:150px; id="preview-image"/></div></td>
		
		<tr>
			<th>아이템 이름</th>
			<td>${bossList.itemName}</td>
		</tr>
		<tr>
			<th>분류</th>
			<td>${bossList.classification}</td>
		</tr>
		</table>
		<a href="/admin/item"><input type="button" value="목록"></a>
	</form:form>
</body>
</html>