	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		   
			
			String uname=request.getParameter("uname");
			
			String pass,hashcode;
			
			String strQuery3 = "select * from backupuser where name='"+uname+"' ";
			
			ResultSet rs=connection.createStatement().executeQuery(strQuery3);
			if(rs.next())
			{
			pass=rs.getString(3);
			hashcode=rs.getString(14);
			
			
			String sql11="update user set pass='"+pass+"',hc='"+hashcode+"' where name='"+uname+"' ";
								Statement stmt11 = connection.createStatement();
								stmt11.executeUpdate(sql11); 
								
								
			String str = "Recovered";
       		Statement st1 = connection.createStatement();
       		String query1 ="update password_attack set aname='"+str+"' where uname='"+uname+"' ";
	   		st1.executeUpdate (query1);					
			
			}
			response.sendRedirect("A_View_All_Password_Attackers.jsp");  
			
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
