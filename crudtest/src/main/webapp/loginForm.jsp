<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<%
	// 로그인 전
	if(session.getAttribute("loginId") != null) { // 로그인 되어 있으면
		response.sendRedirect(request.getContextPath()+"/private.jsp");
		return;
	}
	
	String msg = request.getParameter("msg");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container ">
	<h1>로그인</h1>
	<%
		if(msg != null) {
	%>
			<div><%=msg%></div>		
	<%
		}
	%>
	<form method="post" action="<%=request.getContextPath()%>/loginAction.jsp">
		<table border="1" class="table table-bordered table-striped">
			<tr>
				<th><h2>memberId</h2></th>
				<td><h2><input type="text" name="memberId"></h2></td>
			</tr>
			<tr>
				<th><h2>memberPw</h2></th>
				<td><h2><input type="password" name="memberPw"></h2></td>
			</tr>
			<tr>
				<th colspan="2">
					<button type="submit" class="btn btn-primary">로그인</button>
					<a href="<%=request.getContextPath()%>/insertMember.jsp" 
					class="btn btn-success">회원가입</a>
				</th>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>