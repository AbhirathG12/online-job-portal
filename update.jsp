<%@include file="common.jsp" %>
<%@page import="java.sql.*"%>

<%
String ide=request.getParameter("ccode");
String cname=request.getParameter("cname");
String empid=request.getParameter("empid");
String branches=request.getParameter("branches");
String nos=request.getParameter("nos");
String email=request.getParameter("email");
String contactno=request.getParameter("contactno");
String web=request.getParameter("web");
String address=request.getParameter("address");
String estyear=request.getParameter("estyear");
try{
st=con.createStatement();
ResultSet rs=st.executeQuery("update administrator set cname='"+cname+"',empid='"+empid+"',branches='"+branches+"',nos='"+nos+"',email='"+email+"',contactno='"+contactno+"',web='"+web+"',address='"+address+"',estyear='"+estyear+"' where ccode='"+ide+"'");
out.println("Record Edited Successfully");
}
catch(Exception e){
System.out.println(e);
   }
%>