<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import= "login.ItemBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>購入結果ページ</title>
</head>
<body>
	<jsp:include page="header.jsp" />

	<div align="center">
		<h1>ご購入ありがとうございました！！</h1>
		<td><img src="img/0202.gif" height="300" width="450" alt="感謝" />
</td>
<tr>
	<td>
	<p>
	<div align="center">
		<form action="ShoppingServlet" method=post>
			<input type="submit" value="トップへ戻る" />
		</form>
	</div>
	</p>
</td>
</tr>
</body>
</html>