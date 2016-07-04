
<%@ page import ="java.sql.*" %> 
<%@ page import ="javax.sql.*" %>


<%  Class.forName("com.mysql.jdbc.Driver");%>

<HTML>
    <HEAD>
        <TITLE>RESULT OF SUBMITTING TO DEPARTMENT</TITLE>
    </HEAD>

    <BODY>
<h1>RESULT OF SUBMITTING TO DEPARTMENT</h1>
<% 
	String  deptno = request.getParameter("deptno");
	String  dname  = request.getParameter("dname");
	String  loc = request.getParameter("loc");
	
	
	
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    Statement st = con.createStatement();
        
    try{
     int i = st.executeUpdate("insert into dept(deptno,dname,loc) values('" +deptno+ "','" +dname+ "','"+loc+"')");
   %>
            <h3>SUCCESSFULLY SUBMITTED  DATA</h3>
             <a href="subdept.jsp">INSERT ANOTHER DATA </a>
       
            <%
   }
   catch(Exception e)
   {
   %>
            <h3>ERROR IN SUBMITING DATA.</h3>
            <i>deptno should not be null<br/>
            deptno should be unique </i>
             <a href="subdept.jsp">TRY AGAIN WITH VALID INPUT</a>
       
            <%  }     %>
        
        <br/><br/>
        
        <a href="index.html">BACK TO HOME</a>
        </BODY>
        </HTML>