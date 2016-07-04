<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete and Update Department Record</title>
</head>
<body>
<h1>Delete Record from dept</h1>
<form action="./rest/dept/delete/{deptno}" method="post">
<table>
<tr>
<td>DEPTNO:</td><td>
<input type="text" name="deptno" value="${DEPTARTMENT.deptno}" size="2" maxlength="2"> *</td>
</tr>
<tr><td></td>
<td><input type="submit" name="deloperation" value="delete"></td>
</tr>
</table>
</form>

<h1>Update Record from dept</h1>
<form action="./rest/dept/update" method="post">
<table>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DEPTNO:</td><td>
<input type="text" name="deptno" value="${DEPTARTMENT.deptno}" size="2" maxlength="2"> *</td>
</tr>
<tr>
<td>NEW DEPTNAME:</td><td>
<input type="text" name="dname" value="${DEPTARTMENT.dname}" size="14" maxlength="14"> </td>
</tr>
<tr>
<td>NEW LOC:</td><td>
<input type="text" name="loc" value="${DEPTARTMENT.loc}" size="13" maxlength="13"> </td>
</tr>

<tr><td></td>
<td><input type="submit" name="editoperation" value="update"></td>
</tr>
</table>
</form>
</body>
</html>