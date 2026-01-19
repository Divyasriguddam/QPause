<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{


var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}

var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

if (na6.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}

if (na6.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}


var na55=document.s.address.value;
if(na55=="")

{
alert("Please Enter Your address");
document.s.address.focus();
return false;
}

var dob=document.s.dob.value;
if(dob=="")

{
alert("please Enter Your Date Of Birth");
document.s.dob.focus();
return false;
}





var na9=document.s.gender.value;
if(na9=="-Select-")

{
alert("Please Select Your Gender");
document.s.gender.focus();
return false;
}

var na10=document.s.pincode.value;
if(na10=="")

{
alert("please Enter Your Pincode");
document.s.pincode.focus();
return false;
}

var na5=document.s.location.value;
if(na5=="")

{
alert("Please Enter Your location");
document.s.location.focus();
return false;
}

var na11=document.s.pic.value;
if(na11=="")

{
alert("please Select Picture");
document.s.pic.focus();
return false;
}

}
</script>

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
.style10 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #000000;
}
.style11 {
	color: #FF0000;
	font-weight: bold;
}
.style12 {font-weight: bold}
.style13 {font-weight: bold}
.style14 {font-weight: bold}
.style15 {font-weight: bold}
.style18 {color: #000000}
.style20 {font-weight: bold}
.style23 {color: #FF0000}
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
          <h2 align="center" class="style8"> User Registration </h2>
		  <p>&nbsp;</p>






<form name="s" action="u_RegIns.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">
		  
			
			
            <span class="style14 style20 style5 style12 style13 style10">
                  <label for="name"><span class="style11">User Type (required)<br />
                  </span></label>
            </span>
                  <p class="style11 style10 style5"><strong>
                  <select name="utype">
                    <option>---Select---</option>
                    <option>User</option>
                    <option>Owner</option>
                  </select>
                  </strong></p>		
			
                  <span class="style11 style10 style5"><strong><span class="style18 style5"><strong>
                  <label for="name"><span class="style23">User Name (required)<br />
                  </span></label>
                  </strong></span></strong></span>
                  <p class="style11 style10 style5 style23"><strong>
                  <input id="name" name="userid" class="text" />
                  </strong></p>
				  
				  <span class="style11 style10 style5 style23"><strong><strong>
                  <label for="email">Password (required)<br />
                  </label>
                  </strong></strong></span>
                  <p class="style11 style10 style5 style23"><strong>
                  <input type="password" id="password" name="pass" class="text" />
                  </strong></p>
				  
				  <span class="style11 style10 style5 style23"><strong><strong>
                  <label for="email">Email id (required)<br />
                  </label>
                  </strong></strong></span>
                  <p class="style11 style10 style5 style23"><strong>
                  <input id="email" name="email" class="text" />
                  </strong></p>
				  
                  <span class="style11 style10 style5 style23"><strong><strong>
                  <label for="mobile">Mobile Number (required)<br />
                  </label>
                  </strong></strong></span>
                  <p class="style11 style10 style5 style23"><strong>
                  <input id="mobile" name="mobile" class="text" />
                  </strong></p>
				  
                  <span class="style11 style10 style5 style23"><strong><strong>
                  <label for="address">Your Address<br />
                  </label>
                  </strong></strong></span>
                  <p class="style11 style10 style5 style23"><strong>
                  <textarea name="address" cols="30" id="address"></textarea>
                  </strong></p>
				  
                  <span class="style11 style10 style5 style23"><strong><strong>
                  <label for="dob">Date of Birth (required)<br />
                  </label>
                  </strong></strong></span>
                  <p class="style11 style10 style5 style23"><strong>
                  <input id="dob" name="dob" class="text" />
                  </strong></p>
				  
                  <span class="style11 style10 style5 style23"><strong><strong>
                  <label for="gender">Select Gender (required)</label>
                  </strong></strong></span><span class="style11 style10 style5"><strong><span class="style18 style5"><strong><label for="gender"><br />
                  </label>
                  </strong></span></strong></span>
                  <p class="style11 style10 style5"><strong>
                  <select id="s1" name="gender" class="text" style="width:170px">
                    <option>-Select-</option>
                    <option>Male</option>
                    <option>Female</option>
                  </select>
                  </strong></p>
				  
                  <span class="style11 style10 style5 style23"><strong>
                  <label for="pincode">Enter Pincode (required)<br />
                  </label>
                  </strong></span>
                  <p class="style11 style10 style5"><strong>
                  <input id="pincode" name="pincode" class="text" />
                  </strong></p>
				  
                  <span class="style11 style10 style5 style23"><strong>
                  <label for="location">Enter Location (required)<br />
                  </label>
                  </strong></span>
                  <p class="style11 style10 style5"><strong>
                  <input id="loc" name="location" class="text" />
                  </strong></p>
				  
                  <span class="style11 style10 style5 style23"><strong>
                  <label for="pic">Select Profile Picture (required)</label>
                  </strong></span>
                  <span class="style11 style10 style5 style23"><strong>
                  <label for="pic"></label>
                  </strong></span><span class="style10 style5 style23"><strong><span class="style5 style18">
                  <label for="pic"></label>
                  </span></strong></span><span class="style20 style23 style5 style12 style13 style10"><label for="pic"><br />
                  </label>
                  </span>
				  
                  <p class="style15">
                    <input type="file" id="pic" name="pic" class="text" />
		    </p>
				  
                  <p class="style15">
                    <input name="submit" type="submit" value="REGISTER" />
                  </p>
</form>



















          <p>&nbsp;</p>
		  <p align="right"><a href="u_login.jsp" class="style9"> Back </a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
		  <p class="style4">Sidebar Menu</p>
          <ul class="sb_menu">
			<li><a href="index.html">Home Page</a></li>
            <li><a href="a_login.jsp">CSP</a></li>
            <li><a href="u_login.jsp">End User</a></li>
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
