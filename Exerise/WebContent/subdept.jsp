
<%@ page import ="java.sql.*" %> 
<%@ page import ="javax.sql.*" %>


<%  Class.forName("com.mysql.jdbc.Driver");%>

<HTML>
    <HEAD>
        <TITLE>SUBMITTING DATA TO DEPTARTMENT</TITLE>
    </HEAD>

    <BODY>
    
        <H1>SUBMITTING DATA TO DEPTARTMENT</H1>
<form action="subdeptres.jsp" method="post">
<table>
<tr>
<td>DEPTNO:</td><td><input type="number" name="deptno" size="2" maxlength="2"> *</td>
</tr>
<tr>
<td>DNAME:</td><td><input type="text" name="dname" size="14" maxlength="14"></td>
</tr>
<tr>
<td>LOCATION:</td><td><input type="text" name="loc" size="13" maxlength="13"></td>
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