<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Pateint</title>
<style>
table {
  width:100%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
#t01 tr:nth-child(even) {
  background-color: #eee;
}
#t01 tr:nth-child(odd) {
 background-color: #fff;
}
#t01 th {
  background-color: grey;
  color: white;
}
</style>
</head>
<body>

<form action="PatientRegistration" method="post">

					<div class="main">
						<h1 style="margin-left: 40%;">Patient Registration</h1>
					</div>

<table id="t01">
  <tr>
    <th>Patient Id</th>
    <th>Name</th> 
    <th>Age</th>
    <th>Address</th>
    <th>DOJ</th>
    <th>Type of Room</th>
    
  </tr>
</body>
</html>