<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User LogIn</title>
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
alert("Please Enter Name");
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
.style5 {font-family: "Times New Roman", Times, serif}
.style6 {color: #000000}
.style8 {color: #00a3e0}
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
          <h2 align="center" class="style8">User LogIn</h2>
		  <p>&nbsp;</p>




<form name="s" action="u_authentication.jsp" method="post" onSubmit="return valid()"  ons target="_top">  
            
    <table align="center" border="1" width="65%" height="146">
	
	 <tr>
        <td width="48%" height="25" bgcolor="#78bbe6" class="style5 style2"> <span class="style9 style2 style4 style3 style6">Select User Type </span></td>
        <td width="55%" height="25" bgcolor="#78bbe6"><select name="utype">
                      <option>---Select---</option>
                      <option>User</option>
                      <option>Owner</option>
                    </select></td>
      </tr>
      <tr>
        <td width="48%" height="25" bgcolor="#78bbe6" class="style5 style2"> <span class="style9 style2 style4 style3 style6">Username</span></td>
        <td width="55%" height="25" bgcolor="#78bbe6"><input type="text"  name="userid" size="15" /></td>
      </tr>
      <tr>
        <td width="48%" height="25" bgcolor="#78bbe6" class="style5 style2"> <span class="style9 style2 style4 style3 style6">Password</span></td>
        <td width="55%" height="25" bgcolor="#78bbe6"><input type="password"  name="pass" size="15" /></td>
      </tr>
      <tr>
        <td height="78" colspan="2" bgcolor="#999999"><p align="center">
            <input type="submit"  value="Login" name="B1" />
            <input type="reset" value="Reset" name="B2" />
        </td>
      </tr>
    </table>
	<p align="center" class="style2 style3">New User? <a href="u_register.jsp">Register Here</a></p>
</form>		  

















          <p>&nbsp;</p>
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
