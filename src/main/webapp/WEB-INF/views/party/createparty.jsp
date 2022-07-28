<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/js/bossgradelist.js"></script>

<title>Insert title here</title>
</head>
<body>
	<c:import url="${pageContext.request.contextPath}/main/nav"></c:import>
	party ________________
	<br>
	<form action="insert" method="post">
		<table border="1">
			<caption>
				<strong>파티생성해보자 </strong>
			</caption>
			<tr>
				<td>파티이름</td>
				<td><input type="text" name="partyName"></td>
			<tr>
				<td>Boss select</td>
				<td><select name='bossName' id="bossName">
						<c:forEach var="bossName" items="${getBossName}">
							<option value="${bossName}">${bossName}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td>난이도선택</td>
				<td><select name='level' id="bossGrade">
						<option value="">선택</option>
				</select></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" value="${authInfo.id}"
					readonly></td>
			</tr>
			<tr>
				<td>캐릭터이름</td>
				<td><input type="text" name="charaterName"></td>
			</tr>
		</table>
		<input type="submit" value="파티생성">
	</form>
	<input type="button" value="목록으로 돌아가기"
		onClick="location.href='<c:url value="main" />'">
</body>
</html>