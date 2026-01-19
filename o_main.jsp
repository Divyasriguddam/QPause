<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Owner  Main</title>
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
.style9 {color: #FF0000}
.style10 {
	font-weight: bold;
	color: #FF0000;
}
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
          <h2 align="center" class="style8"> Welcome to Owner Main : <span class="style9"> <%=application.getAttribute("owner")%> </span></h2>

<p><img src="images/User.jpg" width="614" height="179" /></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
		  <p class="style4">Owner Menu</p> 
          <ul class="sb_menu style10">
            <li><a href="o_profile.jsp">My Profile</a></li>
			
			<li><a href="o_Upload_Datasets.jsp">Upload Datasets</a></li>
			<li><a href="o_View_All_Datasets.jsp">View All Datasets</a></li>
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
