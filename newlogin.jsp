<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.*"%>
    <%!
       
        Statement stmt1=null;
		ResultSet rs=null;
        String usr=null,passwd=null,ty1=null,sid=null,spw=null,sid1=null,spw1=null,u=null,p=null,t=null;
		int flag,n=1;
     %>
     <%
        usr=request.getParameter("usrname");
        passwd=request.getParameter("password");
     
%>
      
      <%
         
                HttpSession ses=request.getSession();
				ses.setAttribute("sid",usr);
				ses.setAttribute("spw",passwd);
				sid1=(String)ses.getAttribute("sid");
				spw1=(String)ses.getAttribute("spw");
				
			
stmt1=con.createStatement();
 rs=stmt1.executeQuery("select * from login");

			
              while(rs.next())
		      {
			         String uid=rs.getString(1);
				String pwd=rs.getString(2);
                String ty=rs.getString(3);
				if((usr.equals(uid))&&(passwd.equals(pwd)))
				{
					flag=1;
                                     ty1=ty;
//out.println(uid);
				}
			}
if((flag==1)&&(ty1.equals("a")))
{
response.sendRedirect("ahome.html");	
}
if((flag==1)&&(ty1.equals("r")))
{
response.sendRedirect("recthome.html");	
}
if((flag==1)&&(ty1.equals("s")))
{
response.sendRedirect("student home.html");	
}
if((flag==0))
{
	response.sendRedirect("ahome1.html");
}
  %>































