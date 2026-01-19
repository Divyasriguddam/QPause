	<%@ include file="connect.jsp" %>
 	<%
  		
   try {
		   
			
			int id = Integer.parseInt(request.getParameter("id"));
			
			
			String str = "Permitted";
       		Statement st1 = connection.createStatement();
       		String query1 ="update down_req set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			
			connection.close();
			response.sendRedirect("a_down_req.jsp");  
			
			                
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
