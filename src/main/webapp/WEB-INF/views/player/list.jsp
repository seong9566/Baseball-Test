<%@page import="site.metacoding.red.domain.stadium.Stadium"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<br />

	<table class="table table-striped">
		<thead>
			<tr>
				<th>번호</th>
				<th>팀이름</th>
				<th>선수이름</th>
				<th>포지션</th>
				<th>등록일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="player" items="${playerList}">
				<tr>
					<td>${player.no}</td>
					<td>${player.teamName}</td>
					<td>${player.name}</td>
					<td>${player.position}</td>
					<td>${player.createdAt}</td>
					<td><button onclick="btndelete(${player.id});" class="btn btn-danger">삭제</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<script>
function btndelete(id){
	$.ajax("/player/"+id,{
		type: "DELETE",
		dataType: "json",
	}).done((res)=>{
		if(res.code == 1){ // 성공
			alert("선수 삭제 성공");
			location.reload();
		}else{ // 실패
			alert("선수 삭제 실패하였습니다.");
		}
	});
}
</script>

<%@ include file="../layout/footer.jsp"%>

