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
<title>Insert title here</title>

</head>
<body>
	정산현황보러가기(정산링크연결 정규)
	<br>
	<br>

	<form>
		<table border="1">
			<caption>
				<strong>내가만든 파티정보</strong>
			</caption>

			<tr>
				<td><strong>파티이름</strong></td>
				<td>${myParty.partyName}</td>
			</tr>

			<tr>
				<td><strong>보스이름</strong></td>
				<td>${myParty.bossName}</td>
				<td>난이도</td>
				<td>${myParty.bossGrade}</td>
			</tr>
			<tr>
				<td><strong>파티장</strong></td>
				<td>${myParty.gssUserId}</td>
				<td><strong>캐릭터네임</strong></td>
				<td>${myParty.charaterName}</td>
			</tr>
		</table>
		</form>
	<input type="button" value="목록으로 돌아가기"
		onClick="location.href='<c:url value="main" />'">
		<div>
	<form action="getSearchList" method="get">
	<fieldset>
		<legend> 글검색필드</legend>
		<select name=id>
		<option value ="gssUserId" > 아이디</option>
		</select>
		<label>검색어</label>
		<input type="hidden" name=gssUserId value="${myParty.gssUserId}">
		<input type="hidden" name=partyName value="${myParty.partyName}">
	<input type="text" name= keyWord value=""> 
	<input type="submit" value="검색">
	
	</fieldset>
	</form>
		</div>
			
		<form action="insertPerson" method="get">
			<c:forEach var="list" items="${search}">
		<div style="border:1px  padding:15px;">	
		<tr>
		<td><input type="radio" name="gssUserId" value="${list.gssUserId}">${list.gssUserId}</td></tr>
		<tr><td>EMAIL: ${list.email }</td></tr>
		</div>
			</c:forEach>
			<input type="hidden" name=partyName value="${myParty.partyName}">
			
		<input type ="text" name="charaterName" > 캐릭터 이름 <br>
		<input type ="submit" value="파티원으로 등록하기">
			</form>
</body>
</html>