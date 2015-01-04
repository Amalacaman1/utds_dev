<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="<c:url value="/resources/js/jquery-2.1.3.min.js" />"></script>
<style>
@CHARSET "ISO-8859-1";

body {
	font-family: 'Lucida Grande', 'Helvetica Neue', Helvetica, Arial,
		sans-serif;
	padding: 20px 50px 150px;
	font-size: 13px;
	text-align: center;
	background: #E3CAA1;
}

ul {
	text-align: left;
	display: inline;
	margin: 0;
	padding: 15px 4px 17px 0;
	list-style: none;
	-webkit-box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
}

ul li {
	font: bold 12px/18px sans-serif;
	display: inline-block;
	margin-right: -4px;
	position: relative;
	padding: 15px 20px;
	background: #fff;
	cursor: pointer;
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	-ms-transition: all 0.2s;
	-o-transition: all 0.2s;
	transition: all 0.2s;
}

ul li:hover {
	background: #555;
	color: #fff;
}

ul li ul {
	padding: 0;
	position: absolute;
	top: 48px;
	left: 0;
	width: 150px;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	display: none;
	opacity: 0;
	visibility: hidden;
	-webkit-transiton: opacity 0.2s;
	-moz-transition: opacity 0.2s;
	-ms-transition: opacity 0.2s;
	-o-transition: opacity 0.2s;
	-transition: opacity 0.2s;
}

ul li ul li {
	background: #555;
	display: block;
	color: #fff;
	text-shadow: 0 -1px 0 #000;
}

ul li ul li:hover {
	background: #666;
}

ul li:hover ul {
	display: block;
	opacity: 1;
	visibility: visible;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delivery Tracking System Demo</title>
</head>
<body>
	<h1>Delivery Tracking System (Demo)</h1>
	<h4><font color="red">(Note: Only few links are working)</font></h4>
	
	<script type="text/javascript">
	   function changeDiv(link)
	   {
	      var contentDiv = $('#content');
	      if (link == '1')
	         contentDiv.html('<span style="color:red;">Link 2</span>');
	      if (link == '2')
	         contentDiv.html('<span style="color:red;">Link 2</span>');
	
	   }
	</script>
	<div id="menu">
	
			<ul>
		<li>User Access Control
			<ul class="menu-item">
				<li>User Account Maintenance</li>
				<li>Group Profile</li>
				<li>Group Access Maintenance</li>
				<li>Define Bank</li>
				<li>Change Password</li>
			</ul>
		</li>
		<li>Parameter Maintenance
			<ul class="menu-item">
				<li>Item Type Maintenance</li>
				<li>Product Application Set Up</li>
				<li>Bank Calendar Maintenance</li>
				<li>Bank Code Maintenance</li>
				<li>Delivery Type Maintenance</li>
				<li><a href="zipcode">Zip Code Maintenance</a></li>
				<li>Courier Table</li>
				<li>Complaint Type Maintenance</li>
				<li>TAT Table</li>
				<li>SMS Table</li>
				<li>Codes Table</li>
				<li>DR Parameter</li>
				<li>Card Destruction Reason</li>
				<li>Card Destruction Period</li>
			</ul>
		</li>
		<li>Administration
			<ul class="menu-item">
				<li>Interface File Maintenance</li>
				<li>Batch Run Scheduler</li>
				<li>New Window Maintenance</li>
				<li>Audit Trail Log</li>
			</ul>
		</li>
		<li>Batch Process
			<ul class="menu-item">
				<li>Upload File</li>
				<li>Generate Transmittals</li>
				<li>Generate DR</li>
				<li>Initial Instruction Tagging</li>
			</ul>
		</li>
		<li>Transaction
			<ul class="menu-item">
				<li>Delivery Status Maintenance</li>
				<li>Delivery Receipt (DR) / Proof of Delivery (POD) Maintenance</li>
				<li>SMS and Email Notifications</li>
				<li>Erroneous Courier Assignment</li>
				<li>Purging</li>
			</ul>
		</li>
		<li>Courier
			<ul class="menu-item">
				<li>Messenger Performance Maintenance</li>
				<li>Delivery Status Maintenance</li>
				<li>DR / POD Maintenance</li>
			</ul>
		</li>
		<li>Inquiry
			<ul class="menu-item">
				<li>Demographics</li>
				<li>Delivery Related</li>
				<li>Cases Monitoring</li>
				<li>Cases Extraction</li>
			</ul>
		</li>
		<li>Reports</li>
	</ul>
			
	   <!--  <ul class="menu-item"><a id="link1" onclick="changeDiv('1')">home</a></ul>
	    <ul class="menu-item"><a id="link2" onclick="changeDiv('2')">home</a></ul>
	    <ul class="menu-item"><a id="link3" onclick="changeDiv('3')">home</a></ul> -->
	</div>
	<div id="content">
	
	</div>	
</body>
</html>