<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String parameter = request.getParameter("id");
	parameter += "さん、ようこそ！！";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>ショッピング風サイトへようこそ</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div align="center">
		<h1>商品一覧</h1>
	</div>
	<p><%=parameter%></p>
	<style type="text/css">
.table5 {
	border-collapse: collapse;
	width: 500px;
}

.table5 th {
	background-color: #cccccc;
}

.table5 td {
	text-align: center;
}
</style>
	<table class="table5" border=1>
		<tr>
			<th></th>
			<th>スナイパー</th>
			<th>SP</th>
			<th>自衛隊</th>
			<th>剣士</th>
			<th>鼈</th>
		</tr>
		<tr>
			<td>価格</td>
			<td>14,800円</td>
			<td>36,800円</td>
			<td>5,600円</td>
			<td>12,800円</td>
			<td>57,800円</td>

		</tr>
		<tr>
			<td>産地</td>
			<td>ロシア</td>
			<td>日本</td>
			<td>米軍基地</td>
			<td>闘技場</td>
			<td>養殖場</td>

		</tr>
		<tr>
			<td>用途</td>
			<td>暗殺</td>
			<td>護衛</td>
			<td>防衛</td>
			<td>置物</td>
			<td>ペット</td>

		</tr>
		<tr>
			<th>数量</th>
			<td>
				<form action="shopping3.jsp" method="post">
					<p class="marginLeft">
						数量：<select name="kazu">
							<option value="1" selected="selected">1</option>
							<option value="2" selected="selected">2</option>
							<option value="3" selected="selected">3</option>
							<option value="4" selected="selected">4</option>
							<option value="5" selected="selected">5</option>
							<option value="6" selected="selected">6</option>
							<option value="7" selected="selected">7</option>
							<option value="8" selected="selected">8</option>
							<option value="9" selected="selected">9</option>
						</select>
					</p>
				</form>
			</td>
			<td>
				<form action="shopping3.jsp" method="post">
					<p class="marginLeft">
						数量：<select name="kazu">
							<option value="1" selected="selected">1</option>
							<option value="2" selected="selected">2</option>
							<option value="3" selected="selected">3</option>
							<option value="4" selected="selected">4</option>
							<option value="5" selected="selected">5</option>
							<option value="6" selected="selected">6</option>
							<option value="7" selected="selected">7</option>
							<option value="8" selected="selected">8</option>
							<option value="9" selected="selected">9</option>
						</select>
					</p>
				</form>
			</td>
			<td>
				<form action="shopping3.jsp" method="post">
					<p class="marginLeft">
						数量：<select name="kazu">
							<option value="1" selected="selected">1</option>
							<option value="2" selected="selected">2</option>
							<option value="3" selected="selected">3</option>
							<option value="4" selected="selected">4</option>
							<option value="5" selected="selected">5</option>
							<option value="6" selected="selected">6</option>
							<option value="7" selected="selected">7</option>
							<option value="8" selected="selected">8</option>
							<option value="9" selected="selected">9</option>
						</select>
					</p>
				</form>
			</td>
			<td>
				<form action="shopping3.jsp" method="post">
					<p class="marginLeft">
						数量：<select name="kazu">
							<option value="1" selected="selected">1</option>
							<option value="2" selected="selected">2</option>
							<option value="3" selected="selected">3</option>
							<option value="4" selected="selected">4</option>
							<option value="5" selected="selected">5</option>
							<option value="6" selected="selected">6</option>
							<option value="7" selected="selected">7</option>
							<option value="8" selected="selected">8</option>
							<option value="9" selected="selected">9</option>
						</select>
					</p>
				</form>
			</td>
			<td>
				<form action="shopping3.jsp" method="post">
					<p class="marginLeft">
						数量：<select name="kazu">
							<option value="1" selected="selected">1</option>
							<option value="2" selected="selected">2</option>
							<option value="3" selected="selected">3</option>
							<option value="4" selected="selected">4</option>
							<option value="5" selected="selected">5</option>
							<option value="6" selected="selected">6</option>
							<option value="7" selected="selected">7</option>
							<option value="8" selected="selected">8</option>
							<option value="9" selected="selected">9</option>
						</select>
					</p>
				</form>
			</td>
		</tr>
		<tr>
			<td>購入</td>
			<td>
				<form action="shopping3.jsp" method="post">
					<input type="submit" value="購入" />
				</form>
			</td>
			<td>
				<form action="shopping3.jsp" method="post">
					<input type="submit" value="購入" />
				</form>
			</td>
			<td>
				<form action="shopping3.jsp" method="post">
					<input type="submit" value="購入" />
				</form>
			</td>
			<td>
				<form action="shopping3.jsp" method="post">
					<input type="submit" value="購入" />
				</form>
			</td>
			<td>
				<form action="shopping3.jsp" method="post">
					<input type="submit" value="購入" />
				</form>
			</td>
		</tr>
	</table>

	<p>
		<div align="center">
			<form action="shopping2.jsp" method="post">
				<input type="submit" , value="ログイン画面へ戻る"> </input>
			</form>
		</div>
	</p>
</body>
</html>