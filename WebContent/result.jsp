<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="login.ItemBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>購入履歴ページ</title>
</head>
<body>
<div align ="center">
<h1>購入履歴</h1>
	<%
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String price = request.getParameter("price");
			String kazu = request.getParameter("kazu");

			ItemBean item = (ItemBean) session.getAttribute("item");
		%>
		<table class="type10">

			<tr>

				<th>商品名</th>
				<th>価格</th>
			</tr>

			<tr>

				<td><%=name%></td>
				<td><%=price%></td>
				<td><img src="img/<%=id%>.jpg" height="300" width="350" /></td>

			</tr>


		</table>



</div>

</body>
</html>