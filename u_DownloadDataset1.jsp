<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data User </title>
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
.style18 {font-size: 14px}
.style20 {color: #FFFFFF}
.style21 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><span class="style20"><a href="index.html">QPause Quantum Resistant Password Protected Data </a>Outsourcing for Cloud Storage</span></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="u_main.jsp"><span>Home </span></a></li>
          <li><a href="u_login.jsp"><span>Logout</span></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"><a href="#"><img src="images/slide1.jpg" width="935" height="307" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="935" height="307" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="935" height="307" alt="" /></a></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Download Files </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="article">
            <p>&nbsp;</p>
            <form action="u_DownloadDataset2.jsp" method="post" name="form1" id="form1">
              <p>
                <%
		  
	try 
	{
	String fid = request.getParameter("fid");
	String  fid1,trapdoor,sk;
	
			String user=(String)application.getAttribute("user");
		    String s44;
			String query="select * from search_req where user='"+user+"' and fid='"+fid+"'"; 
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
	
	
	String Query5 = "select * from datasets where fid='"+fid+"'";
	ResultSet rs5 = connection.createStatement().executeQuery(Query5);
	if(rs5.next()==true)
	{	
	
	        fid1=rs5.getString(2);
			trapdoor=rs5.getString(6);
			sk=rs5.getString(5);				
							
								
							%>
									</p>
									<table width="548" border="1" cellpadding="0" cellspacing="0" align="center">
									<tr>
									<td width="223" height="35" bgcolor="#FF0000"><span class="style18 style21"><strong>Enter File Name :</strong></span></td>
									<td width="245"><label>
									<input required="required" name="t1" type="text" value="<%=fid1%>" size="40" />
									</label></td>
									</tr>
									<tr>
									<td height="41" bgcolor="#FF0000"><span class="style18 style21"><strong>Trapdoor :</strong></span></td>
									<td><input name="t12" type="text" value="<%=trapdoor%>" size="40" /></td>
									</tr>
									<tr>
									<td height="40" bgcolor="#FF0000"><span class="style21 style18"><strong>Secret Key :</strong></span></td>
									<td><input name="t13" type="text" value="<%=sk%>" size="40" /></td>
									</tr>
									<tr>
									<td height="41"><div align="right"></div></td>
									<td><input type="submit" name="Submit2" value="Decrypt & Download" /></td>
									</tr>
			  </table>
									<p>
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
              </p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
            </form>
            <p>&nbsp;</p>
            <p align="right"><a href="u_main.jsp">Back</a></p>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search :" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="g1">
          <div class="g2">
            <div class="gadget">
              <h2 class="star">Menu</h2>
              <div class="clr"></div>
              <ul class="sb_menu">
                <li><a href="u_main.jsp">Home</a></li>
                <li><a href="u_login.jsp">Logout</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&nbsp;</p>
      <p class="rf">&nbsp;</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
