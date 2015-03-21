<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css" />
<link href="Template/style.css" rel="stylesheet" type="text/css" media="screen" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>CGPA CALCULATOR SDMCET</title>
</head>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
				
		  </div>
		</div>
	</div>

<br>

<script>
function myFunction()
{
	window.open("instructions.jsp","_blank","toolbar=yes, scrollbars=yes, resizable=yes, top=0, left=200, width=1060, height=1000");
}
</script>
<script>
function validate()
{
	
var sem=document.forms['frm'].elements['sem'] ;
var elem=document.forms['frm'].elements['stream'];
len=elem.length-1;
chkvalue='';
for(i=0; i<=len; i++)
{
if(elem[i].checked)
	chkvalue=elem[i].value;	
	if(chkvalue=='d' && (sem.value=='1' || sem.value=='2')){
		
		alert('Select Semester 3 or above');
		return false;
	}
}

return true;
}
</script>

<form action="/Cgpa" name="frm" method="post" onsubmit="validate()"  >
<body style="margin: 0px; padding: 0px; font-family: 'Trebuchet MS',verdana;">

<table width="100%" style="height: 100%;" cellpadding="10" cellspacing="0" border="0">
<tr>




<!-- ============ NAVIGATION BAR SECTION ============== -->
<tr><td colspan="2" valign="middle" height="30" bgcolor="#BFC9ED"><a href="#"><h3>Home</h3></a></td></tr>

<tr>
<!-- ============ LEFT COLUMN (MENU) ============== -->
<td width="20%" valign="top" bgcolor="#CCD4F1">
<ul>
<li><i><a href onclick="myFunction()">Instructions</a><br></li></i>

</ul>
</td>

<!-- ============ RIGHT COLUMN (CONTENT) ============== -->
<td width="80%" valign="top">
<font color="#33339F">
<h3 align="center">CGPA CALCULATOR</h3>

<br>
<font color="#33339F">
<table border="4"  align="center" bordercolor="#AFBCE8" cellspacing="5" cellpadding="8" >

 <tr>
<td align="center">Choose the number of semesters up to which  CGPA should be calculated</td>



  <td align="center">Semester <select name="sem" required>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                   </td>
   </tr>
   <tr><td align="center">Choose Stream</td>
                    <td>PUC<input type="radio" name="stream" value="p" id="pu" required />
                
                    DIPLOMA<input type="radio" name="stream" value="d" id="di" required/>
                    
                    </td>
 <tr>
<td colspan="2" align="center"><input type="submit" value="Submit" name="submit" onclick="return(validate())"></td>
</tr>
</table>
<br>

<!-- ============ FOOTER SECTION ============== -->
<tr><td colspan="2" align="left" height="20" bgcolor="#AFBCE8"><i><a href="design.jsp" target="_blank">Designed By</a></li>
<br></td></tr></i>
</table>


</body>
</form>
</html>