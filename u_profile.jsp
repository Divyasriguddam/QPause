<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>My Profile</title>
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
.style13 {color: #000000}
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
          <li><a href="a_login.jsp"><span>CSP</span></a></li>
          <li class="active"><a href="u_login.jsp"><span>End User</span></a></li>
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
          <h2 align="center" class="style8"> My Profile </h2>
		  <p>&nbsp;</p>





<table width="561" height="395" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%
						
						String user=(String)application.getAttribute("user");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where name='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//email
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);//loc
								s11=rs.getString(11);//image
								s12=rs.getString(12);
								
								
								
								
								
					%>
            <tr>
              <td width="200" rowspan="6"><input  name="image" type="image" src="u_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;" /></td>
            </tr>
            <tr>
              <td width="131" height="40" bgcolor="#00FFFF"><span class="style17 style10 style11 style12">Name</span></td>
              <td width="222" bgcolor="#CC66FF"><span class="style22 style10 style11 style13">
                <%out.println(s2);%>
              </span></td>
            </tr>
            <tr>
              <td height="40" bgcolor="#00FFFF"><span class="style17 style10 style11 style12">E-Mail</span></td>
              <td bgcolor="#CC66FF"><span class="style22 style10 style11 style13">
                <%out.println(s4);%>
              </span></td>
            </tr>
            <tr>
              <td height="40" bgcolor="#00FFFF"><span class="style17 style10 style11 style12">Mobile</span></td>
              <td bgcolor="#CC66FF"><span class="style22 style10 style11 style13">
                <%out.println(s5);%>
              </span></td>
            </tr>
            <tr>
			  
              <td bgcolor="#00FFFF"><span class="style17 style10 style11 style12">Location</span></td>
              <td bgcolor="#CC66FF"><span class="style22 style10 style11 style13">
                <%out.println(s10);%>
              </span></td>
            </tr>
            <tr>
			  
              <td bgcolor="#00FFFF"><span class="style17 style10 style11 style12">Date of Birth</span></td>
              <td bgcolor="#CC66FF"><span class="style22 style10 style11 style13">
                <%out.println(s7);%>
              </span></td>
            </tr>
            <tr>
              <td height="47"></td>
              <td bgcolor="#00FFFF"><span class="style17 style10 style11 style12">Address</span></td>
              <td bgcolor="#CC66FF"><span class="style22 style10 style11 style13">
                <%out.println(s6);%>
              </span></td>
            </tr>
            <tr>
              <td height="44"></td>
              <td bgcolor="#00FFFF"><span class="style17 style10 style11 style12">Gender</span></td>
              <td bgcolor="#CC66FF"><span class="style22 style10 style11 style13">
                <%out.println(s8);%>
              </span></td>
            </tr>
            <tr>
              <td height="45"></td>
              <td bgcolor="#00FFFF"><span class="style17 style10 style11 style12">Pincode</span></td>
              <td bgcolor="#CC66FF"><span class="style22 style10 style11 style13">
                <%out.println(s9);%>
              </span></td>
            </tr>
            <tr>
              <td height="48"></td>
              <td bgcolor="#00FFFF"><span class="style17 style10 style11 style12">Status</span></td>
              <td bgcolor="#CC66FF"><span class="style22 style10 style11 style13">
                <%out.println(s12);%>
              </span></td>
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
















          <p>&nbsp;</p>
		  <p align="right"><a href="u_main.jsp" class="style9"> Back </a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
		  <p class="style4">User Menu</p> 
          <ul class="sb_menu">
            <li><a href="u_main.jsp">User Main</a></li>
			<li><a href="u_login.jsp">Log Out</a></li>
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
