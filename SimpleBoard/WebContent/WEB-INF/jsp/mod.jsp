<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.doheum.sb.*" %>
<%
	BoardVo vo = (BoardVo)request.getAttribute("vo");
	String msg = (String)request.getAttribute("msg");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>
	<h1>수정 화면</h1>
	<% if(msg != null) { %>
		<div><%=msg %></div>
	<% } %>
	<form action="mod" method="post" id="frm" onsubmit="return check()">
		<input type="hidden" name="i_board" value="<%=vo.getI_board()%>">
		<div>
			제목 : <input type="text" name="title" value="<%=vo.getTitle()%>"> 
		</div>
		<div>
			내용
			<textarea name="content"><%=vo.getContent() %></textarea>	
		</div>
		<input type="submit" value="글수정">	
	</form>
	<script>
		function check() {
			if(frm.title.value == '') {
				alert('제목을 입력해 주세요')
				frm.title.focus()
				return false
			
			} else if(frm.content.value == '') {
				alert('내용을 입력해 주세요')
				frm.content.focus()
				return false
			}
		}
	</script>
</body>
</html>





