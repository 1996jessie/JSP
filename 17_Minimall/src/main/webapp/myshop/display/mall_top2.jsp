<%@page import="my.shop.CategoryBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="my.shop.CategoryDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
mall_top2.jsp<br>

<link rel="stylesheet" href="<%= request.getContextPath() %>/style.css" type = "text/css"/>
<style>
	body{
		text-align : center;
	}
	
	.logout{
		float : right;
	}
</style>

<%
	String contextPath = request.getContextPath();
	CategoryDao cdao = CategoryDao.getInstance();
	ArrayList<CategoryBean> clist = cdao.getAllCategory();
	String memid = (String)session.getAttribute("memid");
%>
<table border = 1>
	<tr>
		<td colspan = "2" align = "center" height = "50">
			<a href = "<%= contextPath %>/main.jsp"> Home </a>|
			<%
				if(memid.equals("admin")) {
			%>		<a href = "<%= contextPath %>/myshop/admin/main.jsp"> 관리자홈 	</a>|
			<%	} 
			%>
			
			<a href = "<%= contextPath %>/myshop/display/mall.jsp"> 쇼핑몰홈 </a> |
			<a href = "<%= contextPath %>/myshop/display/mall_cartList.jsp"> 장바구니 </a>|
			<a href = "<%= contextPath %>/myshop/board/list.jsp"> 게시판 </a>|
			<a href = "<%= contextPath %>/myshop/display/company.jsp"> 회사소개 </a>|
			<span class = "logout"> <%= memid %>님  </span>
			<a class = "logout" href = "<%= contextPath %>/logout.jsp">
				<img src = "<%= contextPath %>/img/logout3.jpg" width = "50">
			</a>		
		</td>
	</tr>
		
	<tr width = "20%">
		<td valign = "top">
			<table border = 1 width = 100%>
				<tr>
					<td>
						<a href = "<%= contextPath %>/myshop/display/ceo.jsp">CEO 인사말</a>
					</td>
				</tr>
				
				<tr>
					<td>
						<a href = "<%= contextPath %>/myshop/display/history.jsp">회사연혁</a>
					</td>
				</tr>
				
				<tr>
					<td>
						<a href = "<%= contextPath %>/myshop/display/chart.jsp">조직도</a>
					</td>
				</tr>
			
			</table>
		</td>
		
		<td width = "600px" align = "center" valign = "top">
