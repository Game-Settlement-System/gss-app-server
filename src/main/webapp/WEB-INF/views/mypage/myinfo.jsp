<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets/js/mypartyNick.js"></script>
<title>User Info</title>
</head>
<body>
	<c:import url="${pageContext.request.contextPath}/main/nav"></c:import>
	<div class="container text-center">
		<br> <br>
		<div class="mb-3">
			<h2>안녕하세요! ${member.gssuserId }님!</h2>
			<br> <br>
			<c:if test="${!empty MIL}">
				<div id="1"class="table-responsive-sm">
					<table id="2" class="table table-striped table-bordered table-sm col-md-6">
						<caption id="3">${member.gssuserId }<spring:message
								code="iamLeader" />
						</caption>
						<thead id="4" class="table-dark">
							<tr id="5">
								<th class="col-md-1"><spring:message code="party.name" /></th>
								<th colspan="2" class="col-md-2"><spring:message
										code="partyofmyNick" /></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="MIL" items="${MIL }" varStatus="status">
								
								<tr class="tr${status.index }" id="tr${status.index }">
									<td ><label><a
											href="<c:url value='/party/imakeparty?gssUserId=${member.gssuserId}&partyName=${MIL.partyName }'/>">${MIL.partyName}</a>
									</label></td>
									<td><input class="form-control-lg col-lg-9"
										id="charaterNick" type="text" value="${MIL.charaterName }"
										placeholder="${MIL.charaterName }"
										onfocus="this.placeholder=''"
										onblur="this.placeholder='${MIL.charaterName }'"></td>
									<td id="18181">
										<button 
											class="btn-sm btn-outline-success btn btn-dark btn-lg col-lg-8" id="nickBtn">
											<spring:message code="editNick" />
										</button> 
									<input type="hidden" id="userPartyName"value="${MIL.partyName }">
									</td>	
									
								<tr>
						
							</c:forEach>
						</tbody>
					</table>
				</div>
			</c:if>
			<c:if test="${!empty MILMember}">
				<div class="table-responsive-sm">
					<table class="table table-striped table-bordered table-sm col-md-6">
						<caption>${member.gssuserId }<spring:message
								code="iamMember" />
						</caption>
						<thead class="table-dark">
							<tr>
								<th class="col-md-1"><spring:message code="party.name" /></th>
								<th colspan="2" class="col-md-2"><spring:message
										code="partyofmyNick" /></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="MILM" items="${MILMember }">
								<tr>
									<td><label>${MILMember.partyName} </label></td>
									<td><label><a
											href="<c:url value='/party/imakeparty?gssUserId=${member.gssuserId}&partyName=${MILMember.partyName }'/>">${MILMember.charaterName }</a></label></td>
									<td><a
										href="<c:url value='/party/imakeparty?gssUserId=${member.gssuserId}&partyName=${MILMember.partyName }'/>">
											<button
												class=" btn-sm btn-outline-success btn btn-dark btn-lg col-lg-8">
												<spring:message code="editNick" />
											</button>
									</a></td>
								<tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</c:if>
		</div>
	</div>
</body>
</html>