<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="login.ItemBean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>購入確認画面</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<div align="center">

		<h1>商品一覧</h1>
		<h2>つぎの商品を購入しますか？</h2>
		<%

			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String price = request.getParameter("price");
			String quantity = request.getParameter("list");




			ItemBean item = (ItemBean) session.getAttribute("item");
		%>
		<table class="type10">

			<tr>

				<th>商品名</th>
				<th>価格</th>
				<th>購入数</th>
			</tr>

			<tr>

				<td><%=name%></td>
				<td><%=price%></td>
<td><%= quantity %></td>
				<td><img src="img/<%=id%>.jpg" height="300" width="350" /></td>
				<td><img src="img/hanko_01.png" height="350" width="200" alt="確認" />
</td>

			</tr>


		</table>



	</div>
	<div align="center">
		<tr>
			<td>
				<form action="shopping4.jsp" method="post">
					<input type="submit" value="購入" />
				</form>
			</td>
		</tr>
		<p>
		<tr>
			<td>
				<form action="ShoppingServlet" method="post">
					<input type="submit" value="戻る" />

				</form>
			</td>
			</tr>
			</p>
	</div>
</body>
</html>