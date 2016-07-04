
<%@ page import ="java.sql.*" %> 
<%@ page import ="javax.sql.*" %>


<%  Class.forName("com.mysql.jdbc.Driver");%>

<HTML>
    <HEAD>
        <TITLE>Listing Departments</TITLE>
    </HEAD>

    <BODY>
        <H1>Listing all Departments</H1>


<% 
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    Statement st = con.createStatement();
    ResultSet rs;
    
    rs=st.executeQuery("select * from dept");
    
    
%>
 <TABLE >
            <TR>
                <TH>DEPTNO</TH>
                <TH>DEPARTMENTNAME</TH>
                <TH>LOCATION</TH>
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getInt(1) %></TD>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
            </TR>
            <% } %>
        </TABLE>
        <br/>
        <a href="index.html">BACK To HOME</a>
        </BODY>
        </HTML>
