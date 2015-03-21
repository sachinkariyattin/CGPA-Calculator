<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%!





Double[] sgpa=new Double[8];
Double[] crdern=new Double[8];
Double[] crdtot=new Double[8];
int sem,x=1;
String msg="";
double cgpa = 0.0;
double sgpaC = 0.0;
double percent=0.0;

public void input(HttpServletRequest request)
{
	for(int i=1;i<=sem;i++){
	sgpa[i-1]=Double.parseDouble(request.getParameter("sgpa"+i));
	crdern[i-1]=Double.parseDouble(request.getParameter("crdern"+i));
	crdtot[i-1]=Double.parseDouble(request.getParameter("totcrd"+i));
	}
}
public void calc(){
	
	cgpa = 0.0;
	sgpaC = 0.0;
	double totalCredits = 0;
	for(int i = 0; i<sem; i++)
	{
		if(crdern[i] > crdtot[i]){
			msg="Credits earned cannot be greater than Total credits";
			x=0;
			break;
		}
		else{
			
		
			
			x=1;
		
		sgpaC= sgpaC+(sgpa[i] * crdtot[i]);
		totalCredits= totalCredits+crdern[i];
		}
	}
	cgpa = sgpaC / totalCredits;
	percent = (cgpa-0.75) * 10;
}


%>

<%
HttpSession obj=request.getSession(false);
sem=Integer.parseInt(obj.getAttribute("session_sem").toString());

if (request.getParameter("btnsubmit") != null) {
    input(request);
    calc();
}
%>


<html>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css" />
<link href="Template/style.css" rel="stylesheet" type="text/css" media="screen" />

<link href="source/style.css" rel="stylesheet" type="text/css" media="screen" />

<link rel="stylesheet" href="Template/jquery-ui.css">
 <script src="Template/jquery-1.9.1.js"></script>
 <script src="Template/jquery-ui.js"></script>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
 
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <script>
  $(function() {
    $( "#dialog" ).dialog();
  });
  </script>
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
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 46 || charCode > 57 || charCode == 47 )) {
        return false;
    }
    return true;
}
</script>
<script>
function myFunction()
{
	window.open("instructions.jsp","_blank","toolbar=yes, scrollbars=yes, resizable=yes, top=0, left=200, width=1060, height=1000");
}
</script>
<body style="margin: 0px; padding: 0px; font-family: 'Trebuchet MS',verdana;">
<font color="#33339F">
<table width="100%" style="height: 100%;" cellpadding="10" cellspacing="0" border="0">
<tr>



<!-- ============ NAVIGATION BAR SECTION ============== -->
<tr><td colspan="2" valign="middle" height="30" bgcolor="#BFC9ED"><a href="cgpacalculator.jsp"><h3>Home</h3></a></td></tr>

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
<h3 align="center">Enter Details</h3>
<br>
<form name="frm" method="post" action="cgpacalculator2.jsp" >
            <table id="rounded-corner" style="margin: auto;">    
    <thead>
    	<tr>
    		<th scope="col"></th>
        	<th scope="col">SGPA</th>
            <th scope="col">Total credits</th>
            <th scope="col">Credits Earned</th>
            
        </tr>
    </thead>
    <tfoot>
    	<tr>
        	<td colspan="4">Note: Calculated CGPA depends only on the data entered by the user</td>
        </tr>
    </tfoot>
    <tbody>
                <tr>
                    <td>semester 1 </td>
					<td><input type="text" name="sgpa1" pattern= "[0-9]{1}[0]?(\.[0-9][0-9]?)?" title="SGPA format X.XX" value=0.00 readonly="readonly" onkeypress="return isNumber(event)" required></td>
					<td><input type="text" pattern= "^[+]?([0-9]+(?:[\.][0-9]*)?|\.[0-9]+)$" name="totcrd1" value=0 readonly="readonly"  title="Enter valid data" onkeypress="return isNumber(event)" required></td>
					<td><input type="text" pattern= "^[+]?([0-9]+(?:[\.][0-9]*)?|\.[0-9]+)$" name="crdern1" value=0 readonly="readonly" title="Enter valid data" onkeypress="return isNumber(event)" required></td>
</tr>
<tr>
                    <td>semester 2 </td>
					<td><input type="text" name="sgpa2" pattern= "[0-9]{1}[0]?(\.[0-9][0-9]?)?" title="SGPA format X.XX" value=0.00 readonly="readonly" onkeypress="return isNumber(event)" required></td>
					<td><input type="text" pattern= "^[+]?([0-9]+(?:[\.][0-9]*)?|\.[0-9]+)$" name="totcrd2" value=0 readonly="readonly"  title="Enter valid data" onkeypress="return isNumber(event)" required></td>
					<td><input type="text" pattern= "^[+]?([0-9]+(?:[\.][0-9]*)?|\.[0-9]+)$" name="crdern2" value=0 readonly="readonly" title="Enter valid data" onkeypress="return isNumber(event)" required></td>
</tr>
  <%
                            for(int i=3;i<=sem;i++)
                            {
                        %> 
                         <tr>
                    <td>semester <%=i%></td>
					<td><input type="text" name="sgpa<%=i%>" pattern= "[0-9]{1}[0]?(\.[0-9][0-9]?)?" title="SGPA format X.XX" onkeypress="return isNumber(event)" required></td>
					<td><input type="text" pattern= "^[+]?([0-9]+(?:[\.][0-9]*)?|\.[0-9]+)$" name="totcrd<%=i%>" title="Enter valid data" onkeypress="return isNumber(event)" required></td>
					<td><input type="text" pattern= "^[+]?([0-9]+(?:[\.][0-9]*)?|\.[0-9]+)$" name="crdern<%=i%>" title="Enter valid data" onkeypress="return isNumber(event)" required></td>
</tr>

 <%
                            }
 
          %>
          <%
          if(sem<=2)
          {
        	  
          %>
          <tr>
       <td colspan="4" align="center"><input type="submit" value="Calculate" name="btnsubmit" disabled="disabled" /></td>
    </tr>
    	<% 
          }
    	%>
    	<%
    	if(sem >2)
          {
        	  
          %>
          <tr>
       <td colspan="4" align="center"><input type="submit" value="Calculate" name="btnsubmit" /></td>
    </tr>
    	<% 
          }
    	%>
    	 </tbody>
    </table>
    
    </form>

     
    <script>
   <%        
       if(sem<=2)
                     {
             %>
         alert("CGPA can be calculated from semester 3 onwards");    
         
         
         <%
        
         response.sendRedirect("cgpacalculator.jsp");
                 }
 %>
 </script>
    <script>
   <%        
       if(request.getParameter("btnsubmit")!=null && x==0)
                     {
             %>
         alert("<%=msg%>");    
         
         
         <%
                 }
 %>
 </script>

   <%        
       if(request.getParameter("btnsubmit")!=null && x==1)
                     {
             %>    
             <div id="dialog" title="Result">
             <b>CGPA=<%=cgpa%></b><br>
             
             <b>Equivalent Percentage=<%=percent%>%</b>
           </div>
         
         <%
                 }
 %>

 <tr><td colspan="2" align="center" height="20" bgcolor="#AFBCE8"></td></tr>
</table>
</body>
</html>