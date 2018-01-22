<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.GuestbookVo"%>
<%@ page import="com.javaex.dao.GuestbookDao"%>
<%@ page import="java.util.List"%>

<%
	request.setCharacterEncoding("UTF-8");

	GuestbookDao dao = new GuestbookDao();
	List<GuestbookVo> guestBook = dao.getList();
	
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	GuestbookVo gvo = new GuestbookVo();
	for (GuestbookVo vo : guestBook) {
		if (vo.getNo() == no) {
			gvo = vo;
			break;
		}
	}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(gvo.getPassword().equals(password))
		{
			dao.delete(no);
			response.sendRedirect("list.jsp"); 
		} else {
	%>
		<h1>비밀번호가 틀렸습니다.</h1>
		<a href = "list.jsp"> 메인으로 돌아가기</a>
	<%
		}
	%>

</body>
</html>