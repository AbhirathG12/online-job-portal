
<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement pst;
    ResultSet rs=null;
	ResultSetMetaData rsmd=null;
    Statement stmt;
%>
<%
try

{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");


con=DriverManager.getConnection("jdbc:odbc:PRO","SYSTEM","admin");
 stmt=con.createStatement();

}
catch(Exception e)
{
out.println("cannot create");
}
%>
































