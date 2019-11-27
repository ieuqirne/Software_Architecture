<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-/ /W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="StyleSheet.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Report</title>
</head>
<body>
	<h1>Report And Analisys</h1>
	<table border= "1" frame="box" width = "500px" class="table" align="center">
		<tr>
			<th>Day Of Week</th>
			<th>Date</th>
			<th>Number Of Sales</th>
			<th>Average Sale</th>
			<th>Total Sales</th>
		</tr>
		<c:forEach items="${AllReport}" var="p">
			<tr>
			
				<td>
					<c:if test = "${p.dayWeek == '1'}">
		         				Monday
		      		</c:if>
		      		<c:if test = "${p.dayWeek == '2'}">
	         				Tuesday
	      			</c:if>
	      			<c:if test = "${p.dayWeek == '3'}">
		         			Wednesday
		      		</c:if>
		      		<c:if test = "${p.dayWeek == '4'}">
	         				Thursday
	      			</c:if>
	      			<c:if test = "${p.dayWeek == '5'}">
	         				Friday
	      			</c:if>
	      			<c:if test = "${p.dayWeek == '6'}">
		         			Saturday
		      		</c:if>
		      		<c:if test = "${p.dayWeek == '7'}">
	         				Sunday
      			</c:if>
				</td>
				<td><fmt:formatDate value="${p.date}" pattern="dd-MM-yyyy" /></td>
				<td style="text-align:center" >${p.countTotal}</td>
				<td style="text-align:center" >£ ${p.average}</td>
				<td style="text-align:center" >£ ${p.total}</td>
			</tr>
		</c:forEach>
	</table>
	<div style="margin-left: 20px;" class="buttons-container">
		<br> <br>
		<a class="button" href="/DE_Store/welcome.jsp">Go Back</a>		
	</div>
</body>