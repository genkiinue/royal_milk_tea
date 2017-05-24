<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%

request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String pass = request.getParameter("pass");



%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
	<title>ショッピング風サイトへようこそ！</title>
</head>
<body>
	<div align="center">


		<img src="img/welcomeback9.gif" height="300" width="500" alt="ようこそ" />

		<form action="LoginServlet" method="post">
			<h2>ログインIDとパスワードを入力してください</h2>
	</div>

	<br>
		<div align="center">
<td><img src="img/free.gif" height="150" width="300" alt="free" />

			<td>ログインID</td>
			<td><input type="text" name="id" value="" /></td>
<td><img src="img/free.gif" height="150" width="300" alt="free" />

			<p>


					<td>パスワード</td>
					<td><input type="text" name="pass" value="" /></td>

			</p>
		</div>
		</br>
		<p>
			<div align="center">
				<a href="ps.jsp">パスワードを忘れた方はこちらへ</a>
			</div>
		</p>
		<p>
			<div align="center">
				<input type="submit" value="ログイン" />
			</div>
		</p>
		</form>
		<p>
			<div align="center">
				<input type="submit" value="ログアウト" />
			</div>
		</p>
</body>
</html>