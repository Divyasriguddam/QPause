<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View SK Requests</title>
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
.style11 {font-size: 20px}
.style12 {color: #0000FF}
.style16 {color: #FF0000}
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
          <h2 align="center" class="style8"> View Secret Key Requests </h2>
		  <p>&nbsp;</p>








<table width="610" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="35" height="54" bgcolor="#9eb8dd"><div align="center" class="style10 style11 style12">Id</div></td>
		   <td width="74" bgcolor="#9eb8dd"><div align="center" class="style10 style11 style12">File Id</div></td>
           <td width="74" bgcolor="#9eb8dd"><div align="center" class="style10 style11 style12">User Name</div></td>
           <td width="97" bgcolor="#9eb8dd"><div align="center" class="style10 style11 style12">Requested Date</div></td>
		   <td width="110" bgcolor="#9eb8dd"><div align="center" class="style10 style11 style12">Secret Key</div></td>
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	                    String query="select * from search_req "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								 s1=rs.getString(2);//name
								s2=rs.getString(3);//name
								s3=rs.getString(4);//name
								s4=rs.getString(5);//mail
								
								
		
		
		%>
                    
                    <tr>
                      <td height="86" bgcolor="#00FFFF"><div align="center" class="style10 style11 style16"><%=j%></div></td>
					  <td width="74" align="center" bgcolor="#00FFFF"><span class="style16"><%=s1%></span></td>
					  <td width="74" align="center" bgcolor="#00FFFF"><span class="style16"><%=s2%></span></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style10 style11 style16"><%=s3%></div></td>
					  
					  <%
						if(s4.equalsIgnoreCase("Requested"))
						{
						
						%>
              <td bgcolor="#00FFFF"><div align="center" class="style10 style11 style16">
                <a href="k_generate_key.jsp?id=<%=i%>" class="style17 ">Requested</a><br />
                (Click here to<br />Generate Key) </div></td>
              <%
						}
						else
						{
						%>
              <td width="60" bgcolor="#00FFFF"><div align="center" class="style10 style11 style16">
                    <%=s4%>
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
		  <p align="right"><a href="k_main.jsp" class="style9"> Back </a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
		  <p class="style4">Key Servr  Menu</p> 
          <ul class="sb_menu"><li><a href="k_main.jsp">Key Server Main</a></li>
			<li><a href="k_login.jsp">Log Out</a></li>
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
