
<%@ page import ="java.sql.*" %> 
<%@ page import ="javax.sql.*" %>


<%  Class.forName("com.mysql.jdbc.Driver");%>

<HTML>
    <HEAD>
        <TITLE>SUBMITTING DATA TO EMPLOYEE</TITLE>
    </HEAD>

    <BODY>
    
        <H1>SUBMITTING DATA TO EMPLOYEE</H1>
<form action="subempres.jsp" method="post">
<table>
<tr>
<td>EMP NO:</td><td><input type="number" name="empno" size="4" maxlength="4"> *</td>
</tr>
<tr>
<td>ENAME:</td><td><input type="text" name="ename" size="10" maxlength="10"></td>
</tr>
<tr>
<td>JOB:</td><td><input type="text" name="job" size="9" maxlength="9"></td>
</tr>
<tr>
<td>MGR:</td><td><input type="number" name="mgr" size="4" maxlength="4"></td>
</tr>
<tr>
<td>HIRE DATE:</td><td><input type="date" name="hiredate">(YYYY-MM-DD)*</td>
</tr>
<tr>
<td>SALARY:</td><td><input type="number" name="sal" size="10" maxlength="10"></td>
</tr>
<tr>
<td>COMM:</td><td><input type="number" name="comm" size="10" maxlength="10"></td>
</tr>
<tr>
<td>DEPTNO:</td><td><input type="number" name="deptno" size="2" maxlength="2"> *</td>
</tr>

<tr>
<td><br/><input type="submit" name="sub" value="SUBMIT DATA"></td>
</tr>
</table>
</form>
<br/>
        <a href="index.html">BACK To HOME</a>
</BODY>
</HTML>