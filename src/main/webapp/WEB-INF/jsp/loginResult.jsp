<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>

<%
//セッションスコープからユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SNS</title>
</head>
<body>
<h1>SNSへログイン</h1>
<% if(loginUser != null){ %>
	<p>ログインに成功しました</p>
	<p>ようこそ<%= loginUser.getName() %>さん</p>
	<a href="/SNS/Main">つぶやき投稿・観覧へ</a>
<% } else { %>
	<p>ログインに失敗しました</p>
	<a href="/SNS/">TOPへ</a>
<% } %>
</body>
</html>