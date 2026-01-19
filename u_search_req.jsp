<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Send Search Request</title>
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
.style12 {color: #000000}
.style13 {font-size: 26px}
.style14 {color: #FF0000}
.style15 {color: #0000FF}
.style16 {font-size: 26px; color: #0000FF; }
.style17 {color: #FF00FF}
.style21 {color: #0000FF; font-size: 20px; }
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
          <h2 align="center" class="style8"> Request Secret Key </h2>
		  <p>&nbsp;</p>






<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>		  
	  
<%
   String email=(String)application.getAttribute("email");
   String mob=(String)application.getAttribute("mob");
   String loc=(String)application.getAttribute("loc");
   String user=(String)application.getAttribute("user");
   String s4="";
   
try {
		
		String sql = "SELECT * FROM search_req where user='" + user+ "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()==true)
		{
		  s4=rs.getString(5);
		  
		  if(s4.equalsIgnoreCase("Requested"))
		   {
		
		 %> 
             <p class="style10 style13 style14">Already Your Search Request Has been Sent. </p>
             <p class="style10 style13 style14">But Not Yet Authorized. Wait..! </p>
             <%
		   }
		  else
		  {
		 %> 
             <p class="style10 style11 style4 style15">Already Your Search Request has been Sent. </p>
             <p class="style10 style11 style4 style15">and is also Authorized. </p>
			 <p class="style15 style10 style11"><span class="style21">Search Request Key = </span><span class="style17"><%=s4%></span> </p>
             <%
		  }
		}
		else
		{
%>
          <form name="s" action="u_search_req_ins.jsp" method="post" onSubmit="return valid()"  ons target="_top"> 
          
            
						
            <span class="style16 style10 style12 style4">
            <label for="password"><span class="style10 style11 style12">File Id </span></label>
            </span><p class="style16 style4 style10 style11 style12">
                          <input type="text" id="name" name="fid" class="text" />
                        </p>
						
                        <span class="style4 style10 style12 style11">
                        <label for="email">Email Address (required)</label>
                        </span>
                        <p class="style16 style4 style10 style11 style12">
                          <input id="email" name="email" value="<%=email%>" class="text" />
                        </p>
                        <span class="style4 style10 style12 style11">
                        <label for="mobile">Mobile Number (required)</label>
                        </span>
                        <p class="style16 style4 style10 style11 style12">
                          <input id="mobile" name="mobile" value="<%=mob%>" class="text" />
                        </p>
                        <span class="style4 style10 style12 style11">
                        <label for="address">Your Location</label>
                        </span>
                        <p class="style16 style10 style12 style4">
                          <input id="location" name="location" value="<%=loc%>" class="text" />
                        </p>
                        
                        <p><br />
                            <input name="submit" type="submit" value="Send Request" />
                        </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
  </form>  
		  
<%		
		}

} 
	catch (Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
%>		  














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
