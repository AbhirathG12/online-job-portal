<%@ page import="java.sql.*"%>
<% 
     Connection con = null;
     Statement st = null,st1=null,st2=null,st3=null,st4=null;
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","admin");
st=con.createStatement();
st1=con.createStatement();
st2=con.createStatement();
st3=con.createStatement();
st4=con.createStatement();
%>