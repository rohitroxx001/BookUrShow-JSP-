<%@include file="connect.jsp"%>
<% String username = request.getParameter("username");    %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
function showmovie(str)
{
if (str=="")
  {
  document.getElementById("movie").innerHTML="";
  return;
  } 
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("movie").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","getmovie.php?q="+str,true);
xmlhttp.send();
}


function showdate(str)
{
if (str=="")
  {
  document.getElementById("date").innerHTML="";
  return;
  } 
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("date").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","getdate.php?q="+str,true);
xmlhttp.send();
}
</script>
<title>Book Ur Show</title>
<style type="text/css">
a:link {
	color:#ffffff;
	text-decoration: underline;
}
a:visited {
	color: #ffffff;
	text-decoration: underline;
}
html, body {height:100%; margin:0; padding:0;}

#page-background {position:fixed; top:0; left:0; width:100%; height:100%;}
#content {position:relative; z-index:1; padding:10px;}
</style>

</head>

<body>
<div id="page-background"><img src="images/main%20baclground.jpg" width="100%" height="100%" alt="Smile"></div>
<center>
<div class="container" style="width:800px" id="content">
  <div class="header"><img src="images/logo.png" width="177" height="61" longdesc="main.php" />                              	<!-- end .header --></div>
<center>
  <div class="content" style="background-image:url(); height:427px; color: #FFF;">
	<p align="right"><%out.print(username);%> [<a href="logout.jsp">Logout</a>]</p><p align="left"></p>
	<table width="300" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="">
<tr>
<form name="form1" method="post" action="schedule.jsp">
<td>
<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="">
<tr>
<td width="78">City</td>
<td width="6">:</td>
<td width="294">
<select name ='city' id = 'city' onchange="showmovie(this.value)">
<option value="">--Select City--</option>
<%
        
    
    ResultSet rs = null;

        st = con.createStatement();
        
        rs = st.executeQuery("select * from city "); 
        
while(rs.next()){ 
%>

    <option value="<%=rs.getString(1)  %>"> 
          <%=rs.getString(2) %>
    </option> 
<%  
   } 
%>
</select>
</td>
</tr>

<tr>
<td width="78">Movie </td>


<td width="294"></td>
    
<td>
<select name ='movie' id = 'movie' onchange="showmovie(this.value)">
<option value="">--Select Movie--</option>
<%
    
  //  ResultSet rs = null;
            
        st = con.createStatement();
        
        rs = st.executeQuery("select distinct movie_id,movie_name from movie"); 
        
while(rs.next()){        
%>
    
    <option value="<%=rs.getString(1)  %>"> 
          <%=rs.getString(2) %>
    </option> 



<%  
   } 
%>
</select>
</td>
</tr>

<tr>


</tr>
<tr>
<td></td>
<td><input name="username" type="hidden" id="username" value="<%out.print(username);%>"></td>
<td><input name="submit" type="Submit" value="See Shows" />
</tr>
</table>
</td>
</form>
</tr>
</table> 

  </div>
    </center>
</body>
</html>
