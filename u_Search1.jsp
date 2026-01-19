<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Fresh Fruits</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style15 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style16 {color: #FF0000}
.style17 {font-size: 24px}
.style19 {color: #FF0000; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style17">QPause Quantum Resistant Password Protected Data Outsourcing for Cloud Storage
 </a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          
          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /><span><big>QPause Quantum Resistant Password Protected Data Outsourcing for Cloud Storage
 </big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><big>QPause Quantum Resistant Password Protected Data Outsourcing for Cloud Storage
 </big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><big>QPause Quantum Resistant Password Protected Data Outsourcing for Cloud Storage
 </big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <p class="style15">View Dataset Details !!! </p>
      <p class="style15">&nbsp;</p>
      <p class="style15"><a href="u_main.jsp">Back</a></p>
      <table width="650" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
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
			
			 
			 <%
            String user=(String)application.getAttribute("user");

		    String infoid=request.getParameter("Fid");
		  
           String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s44;
	       int i=0,k=0,rank1=0;
  try 
	{	
	 String query="select * from search_req where user='"+user+"' and fid='"+infoid+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() ) 
			                {
				                
								s44=rs.getString(5);
								
								if(s44.equalsIgnoreCase("Requested"))
						        {%>
								
								<h2>Please Request Secret Key !!!</h2>
								<%}
								else
								{
								 String str="select * from datasets where fid='"+infoid+"' "; 
  Statement st1=connection.createStatement();
   ResultSet rs1=st1.executeQuery(str);
   	   
	if ( rs1.next() )
	   {
		i=rs1.getInt(1);
		s1=rs1.getString(2);
		s2=rs1.getString(3);
		s3=rs1.getString(4);
		s4=rs1.getString(5);
		s5=rs1.getString(6);
		s6=rs1.getString(7);
		
		String keys = "ef50a0ef2c3e3a5f";
										byte[] keyValue1 = keys.getBytes();
										Key key1 = new SecretKeySpec(keyValue1,"AES");
										Cipher c1 = Cipher.getInstance("AES");
										c1.init(Cipher.DECRYPT_MODE, key1);
										String decryptedValue = new String(Base64.decode(s3.getBytes()));
		
		
%>
          </p>
          
				 				<tr >
								    
								  <td  width="97" height="56" align="center" valign="middle"><span class="style1 style10 style16"><strong>
                <%out.println(s1);%>
              </strong></span></td>
              <td  width="116" height="56" align="center" valign="middle"><span class="style1 style10 style16"><strong>
                <%out.println(s2);%>
              </strong></span></td>
			   <td  width="116" height="56" align="center" valign="middle"><span class="style1 style10 style16"><strong>
                <%out.println(decryptedValue);%>
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

								}
								
								
								
							}
							else
						        {%>
								
								<h2>Please Request Secret Key For this File ID!!!</h2>
								<%}
	
	
 
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
	  </table>
      <div class="clr">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p><a href="u_main.jsp"></a></p>
      </div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
</body>
</html>
