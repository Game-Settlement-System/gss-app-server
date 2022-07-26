<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css" rel="stylesheet"type="text/css">
	<link href="${pageContext.request.contextPath}/resources/assets/css/mainPage.css" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.js"></script>
	<title>아이템</title>
</head>
<body>
	<c:import url="${pageContext.request.contextPath}/main/nav"></c:import>
	<h1>아이템</h1>
	<div class="div_item_list">		
		<table 
		width="30%"
		height=200
		border="1">
		<tr>
		<td rowspan="3"><div class="select_img"><img src="${pageContext.request.contextPath}/${itemList.itemImagepath}" width="100%" height="100%" /></div></td>
		
		<tr>
			<th>아이템 이름</th>
			<td>${itemList.itemName}</td>
		</tr>
		<tr>
			<th>분류</th>
			<td>${itemList.classification}</td>
		</tr>
		</table>
	</div>
	<a href="/item/itemList"><input type="button" value="목록"></a>
	<c:import url="${pageContext.request.contextPath}/main/bottom"></c:import>
</body>
</body>
</html>