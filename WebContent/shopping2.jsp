<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
<title>ショッピングサイトへようこそ！</title>
</head>
<body>
<driv align="center">
<h1>ショッピングサイトへようこそ！</h1>
<form action = "shopping.jsp" method = "post">
<h2>ログインIDとパスワードを入力してください</h2>
</div>
<br>
<div align = "center">
<td>ログインID</td>
<td><input type = "text" name = "id" value = "" /></td>
<p>
<br>
<td>パスワード</td>
<td><input type = "text" name = "pa" value = "" /></td>
</p>
</driv>
<p>
<a href="ps.jsp">パスワードを忘れた方はこちらへ</a>
</p>

<div align ="center">
<input type = "submit" value = "ログイン" />
<input type ="submit" value ="ログアウト" />
</div>

</form>
</body>
</html>