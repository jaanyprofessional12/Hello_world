
<%@ page import ="java.sql.*" %> 
<%@ page import ="javax.sql.*" %>


<%  Class.forName("com.mysql.jdbc.Driver");%>

<HTML>
    <HEAD>
        <TITLE>Listing Employees</TITLE>
    </HEAD>

    <BODY>
        <H1>Listing all Employees</H1>


<% 
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    Statement st = con.createStatement();
    ResultSet rs;
    
    rs=st.executeQuery("select * from emp");
    
    
%>

 <TABLE>
            <TR>
                <TH>EMP NO</TH>
                <TH>NAME</TH>
                <TH>JOB</TH>
                <TH>MGR</TH>
                <TH>HIRE DATE</TH>
                <TH>SALARY</TH>
                <TH>COMM</TH>
                <TH>DEPTNO</TH>
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getInt(1) %></TD>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
 				<TD> <%= rs.getString(4) %></TD>     
 				<TD> <%=rs.getDate(5) %> </TD>
 				<TD><%=rs.getFloat(6)%></TD>
 				<TD><%=rs.getFloat(7)%></TD>
 				<TD> <%= rs.getInt(8) %></td>
 				    
            </TR>
            <% } %>
        </TABLE>
        <br/>
        <a href="index.html">BACK To HOME</a>
        </BODY>
        </HTML>
        