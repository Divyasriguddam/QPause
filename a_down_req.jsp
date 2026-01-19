<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Download Requests</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	font-size: 23px;
	color: #FFFFFF;
	font-weight: bold;
}
.style2 {font-size: 25px}
.style4 {
	font-size: 26px;
	color: #78bbe6;
}
.style8 {color: #00a3e0}
.style9 {font-size: 15px}
.style10 {font-family: "Times New Roman", Times, serif}
.style11 {color: #0000FF}
.style12 {color: #000000}
.style13 {font-family: "Times New Roman", Times, serif; font-size: 20px; }
.style14 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
	    <p>&nbsp;</p>
        <p class="style1 style2">QPause Quantum Resistant Password Protected Data	</p>
		<p class="style1 style2"> Outsourcing for Cloud Storage </p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="a_login.jsp"><span>CSP</span></a></li>
          <li><a href="u_login.jsp"><span>End User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center" class="style8"> View All Download Requests </h2>
		  <p>&nbsp;</p>


<table width="804" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="37" height="54" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style11">Id</div></td>
		   <td width="96" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style11">Requested User</div></td>
		   <td width="96" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style11">File Name</div></td>
           <td width="90" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style11">VM Name</div></td>
		   <td width="90" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style11">Download</div></td>
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;
	String csp=(String)application.getAttribute("csp");

 try 
	{		
      	                    String query="select * from down_req where csp='"+csp+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s3=rs.getString(3);//name
								s4=rs.getString(4);//mail
								s5=rs.getString(5);
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								
												
				                                /*String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						                        String decrys4 = new String(Base64.decode(s4.getBytes()));
								                */
		
		
		%>
                    
                    <tr>
                      <td height="63" bgcolor="#00FFFF"><div align="center" class="style16 style10 style13 style9 style12"><%=j%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style16 style10 style13 style9 style12"><a href="a_user_profile.jsp?user=<%=s2%>&type=<%="five"%>"><%=s2%></a></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style16 style10 style13 style9 style12"><%=s3%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style16 style10 style13 style9 style12"><%=s5%></div></td>
                      <%
						if(s7.equalsIgnoreCase("Requested"))
						{
						
						%>
              <td bgcolor="#00FFFF"><div align="center" class="style16 style10 style13 style9">
                <a href="a_down_req1.jsp?id=<%=i%>" class="style17 style14">Requested</a> </div></td>
              <%
						}
						else
						{
						%>
              <td bgcolor="#00FFFF"><div align="center" class="style16 style10 style13 style9 style12">
                    <%=s7%>
                </div></td>
              <%
						}
						%>
					  
	      </tr>
					  
        <%
		
	  j=j+1;}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>














          <p>&nbsp;</p>
		  <p align="right"><a href="a_main.jsp" class="style9"> Back </a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
		  <p class="style4">CSP Menu</p> 
          <ul class="sb_menu">
            <li><a href="a_main.jsp">CSP Main</a></li>
			<li><a href="a_login.jsp">Log Out</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
