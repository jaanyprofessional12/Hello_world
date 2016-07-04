
<%@ page import ="java.sql.*" %> 
<%@ page import ="javax.sql.*" %>


<%  Class.forName("com.mysql.jdbc.Driver");%>

<HTML>
    <HEAD>
        <TITLE>RESULT OF SUBMITTING TO EMPLOYEE</TITLE>
    </HEAD>

    <BODY>
<h1>RESULT OF SUBMITTING TO EMPLOYEE</h1>
<% 
	String  empno = request.getParameter("empno");
	String  ename  = request.getParameter("ename");
	String  job = request.getParameter("job");
	String  mgr = request.getParameter("mgr");
	String  hiredate  = request.getParameter("hiredate");
	String  sal = request.getParameter("sal");
	String  comm = request.getParameter("comm");
	String  deptno  = request.getParameter("deptno");
	
	
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
    Statement st = con.createStatement();
        
    try{
     int i = st.executeUpdate("insert into emp(empno,ename,job,mgr,hiredate,sal,comm,deptno) values('" +empno+ "','" +ename+ "','"+job+"','" +mgr+ "','" +hiredate+ "','" +sal+ "','" +comm+ "','" +deptno+ "')");
   %>
            <h3>SUCCESSFULLY SUBMITTED  DATA</h3>
             <a href="subemp.jsp">INSERT ANOTHER DATA </a>
       
            <%
   }
   catch(Exception e)
   {
   %>
            <h3>ERROR IN SUBMITING DATA.</h3>
            <i>empno should not be null<br/>
            empno should be unique <br/>
            deptno is foreign key<br/>(value should be one among deptno in department table)</i><br/>
             <a href="subemp.jsp">TRY AGAIN WITH VALID INPUT</a>
       
            <%  }     %>
        
        <br/><br/>
        
        <a href="index.html">BACK TO HOME</a>
        </BODY>
        </HTML>