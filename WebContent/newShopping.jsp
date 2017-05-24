<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="login.ItemBean"%>
<%@ page import="login.HistoryBean"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="content-system-type" content="text/css" />
<title>商品一覧ページ</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div align="center">
		<img src="img/giphy.gif" height="300" width="550" alt="ようこそ" />


		<h1>商品一覧</h1>
	</div>
	<div align="center">
		<%
		//メッセージを取得した場合
		if (request.getAttribute("empBean") != null) {
	%>
		<p class="item_id">${requestScope.empList}</p>

		<%
		}
	%>
		<%
		ArrayList<ItemBean> empBean = (ArrayList<ItemBean>) request.getAttribute("itemList");
	System.out.println(empBean);
		//検索結果が取得出来た場合
		if (empBean != null && !empBean.isEmpty()) {
	%>

		<table border="3" summary="商品一覧表">
			<tr>

				<th>商品Id</th>
				<th>商品名</th>
				<th>価格</th>
				<th>在庫</th>
			</tr>

			<%
			for (ItemBean bean : empBean) {
		%>
			<form action="shopping3.jsp" method="post">

				<tr>
					<td><%=bean.getItem_id()%></td>
					<td><%=bean.getItem_name()%></td>
					<td><%=bean.getPrice()%></td>







					<td><img src="img/<%=bean.getItem_id()%>.jpg" height="350"
						width="400" /></td>
					<td><select name="list">
							<%
								for (int i = 0; i <= bean.getQuantity(); i++) {
							%>
							<option value=<%=i%>><%=i%></option>
							<%
								}
							%>
					</select></td>
					<td><input type="submit" value="購入"></td>
					<tr>


						<input type="hidden" name="id" value="<%=bean.getItem_id()%>" />
						<input type="hidden" name="name" value="<%=bean.getItem_name()%>" />
						<input type="hidden" name="price" value="<%=bean.getPrice()%>" />
						<input type="hidden" name="quantity" value="<%=bean.getQuantity()%>" />



					</tr>
			</form>
			<%
				}
			%>



		</table>

		<%
			}
		%>

	</div>
</body>
</html>