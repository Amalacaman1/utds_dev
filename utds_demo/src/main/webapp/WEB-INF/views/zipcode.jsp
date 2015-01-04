<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>Zipcode Maintenance</title>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
</head>
<body>
	<h1>Add Zipcode</h1>

	<c:url var="addAction" value="/zipcode/add"></c:url>

	<form:form action="${addAction}" commandName="zipcode">
		<table>
			<c:if test="${zipcode.id != 0}">
				<tr>
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<td><form:input path="id" readonly="true" size="8"
							disabled="true" /> <form:hidden path="id" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="zipcode">
						<spring:message text="Zipcode" />
					</form:label></td>
				<td><form:input path="zipcode" /></td>
			</tr>
			<tr>
				<td><form:label path="zipcity">
						<spring:message text="City" />
					</form:label></td>
				<td><form:input path="zipcity" /></td>
			</tr>
			<tr>
				<td><form:label path="ziparea">
						<spring:message text="Area" />
					</form:label></td>
				<td><form:input path="ziparea" /></td>
			</tr>
			<tr>
				<td><form:label path="zipareacode">
						<spring:message text="ZIP Area Code" />
					</form:label></td>
				<td><form:input path="zipareacode" /></td>
			</tr>			
			<tr>
				<td colspan="2"><c:if test="${zipcode.id != 0}">
						<input type="submit" value="<spring:message text="Edit Zipcode"/>" />
					</c:if> <<c:if test="${zipcode.id == 0}">
						<input type="submit" value="<spring:message text="Add Zipcode"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	<h3>Zipcode List</h3>
	<c:if test="${!empty list}">
		<table class="tg">
			<tr>
				<th width="80">Zipcode</th>
				<th width="120">Zip City</th>
				<th width="120">Zip Area</th>
				<th width="120">Zip Area Code</th>
			</tr>
			<c:forEach items="${list}" var="zipcode">
				<tr>
					<td>${zipcode.zipcode}</td>
					<td>${zipcode.zipcity}</td>
					<td>${zipcode.ziparea}</td>
					<td>${zipcode.zipareacode}</td>
					<td><a href="<c:url value='/edit/${zipcode.id}' />">Edit</a></td>
					<td><a href="<c:url value='/remove/${zipcode.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>