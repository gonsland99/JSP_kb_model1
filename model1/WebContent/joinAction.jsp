<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.test.model1.dao.UserDAO" %>
<%@ page import ="javax.naming.*" %>
<%
	request.setCharacterEncoding("utf-8");
%>
	<jsp:useBean id="user" class="com.test.model1.vo.User" scope="page" />
	<jsp:setProperty name="user" property="*" />
<%
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(user);
	if(result != -1){
		out.println("<script>");
		out.println("location.href='main.jsp'");
		out.println("</script>");
	} else {
		out.println("<script>");
		out.println("alert('이미 존재하는 아이디 입니다.')");
		out.println("history.back()");
		out.println("</script>");
	} 
	userDAO.udClose();
%>
