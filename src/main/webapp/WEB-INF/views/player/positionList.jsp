<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<br />

	<table class="table table-striped">
		<thead>
			<tr>
				<th>팀이름</th>
				<th>1루수</th>
				<th>외야수</th>
				<th>투수</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="position" items="${positionList}">
			<tr>
				<td>${position.teamName}</td>
				<td>${position.luso}</td>
				<td>${position.yaso}</td>
				<td>${position.tooso}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%@ include file="../layout/footer.jsp"%>

