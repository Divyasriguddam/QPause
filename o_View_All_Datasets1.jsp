<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>

          <table width="650" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>

 <td  width="97" height="28" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style1 style8 style11 style10">
  <div align="center"><strong><span class="style16">Fid</span></strong></div>
</div></td>	
<td  width="97" height="28" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style1 style8 style11 style10">
  <div align="center"><strong><span class="style16">Technology_Title</span></strong></div>
</div></td>	
<td  width="97" height="28" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style1 style8 style11 style10">
  <div align="center"><strong><span class="style16">Technology_Desc</span></strong></div>
</div></td>	
<td  width="97" height="28" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style1 style8 style11 style10">
  <div align="center"><strong><span class="style16">DateTime</span></strong></div>
</div></td>
<td  width="97" height="28" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style1 style8 style11 style10"><strong>
  <div align="center"><span class="style19"><span class="style16">Secret_Key
    </span>  </div>
<td  width="97" height="28" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style1 style8 style11 style10">
  <div align="center"><strong><span class="style16">Hashcode</span></strong></div>
</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
					  String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21;
						int i=0;
						try 
						{
						   	String query="select * from datasets"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs1=st.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								i=rs1.getInt(1);
		s1=rs1.getString(2);
		s2=rs1.getString(3);
		s3=rs1.getString(4);
		s4=rs1.getString(5);
		s5=rs1.getString(6);
		s6=rs1.getString(7);
								
										
					%>
            <tr>
			
			
              <td  width="97" height="56" align="center" valign="middle"><span class="style1 style10 style16"><strong>
                <%out.println(s1);%>
              </strong></span></td>
              <td  width="116" height="56" align="center" valign="middle"><span class="style1 style10 style16"><strong>
                <%out.println(s2);%>
              </strong></span></td>
			   <td  width="116" height="56" align="center" valign="middle"><span class="style1 style10 style16"><strong>
                <textarea cols="25" rows="10"><%out.println(s3);%></textarea>
               </strong></span></td>
			   <td  width="116" height="56" align="center" valign="middle"><span class="style1 style10 style16"><strong>
                <%out.println(s4);%>
               </strong></span></td>
			   <td  width="116" height="56" align="center" valign="middle"><span class="style1 style10 style16"><strong>
                <%out.println(s5);%>
               </strong></span></td>
			   <td  width="116" height="56" align="center" valign="middle"><span class="style1 style10 style16"><strong>
                <%out.println(s6);%>
               </strong></span></td>
            </tr>
            <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
         