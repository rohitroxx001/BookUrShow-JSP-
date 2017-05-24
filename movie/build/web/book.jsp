<%@include file="connect.jsp"%>
<% String username = request.getParameter("username");    %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
<%      
           String movieid = request.getParameter("movieid");   
          
	  String movie = request.getParameter("movie");    
           String date = request.getParameter("date");
            String city = request.getParameter("city");    
           String tname = request.getParameter("tname");
           String stime = request.getParameter("stime");
          // out.println(movie);
           ResultSet rs = null;
          
%>
       
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
    <div id="page-background"><img src="images/main%20baclground.jpg" width="100%" height="100%" ></div>
<center>
<div class="container" style="width:800px" id="content">
  <div class="header"><img src="images/logo.png" width="177" height="61" longdesc="main.php" />                              	<!-- end .header --></div>
<center>
  <div class="content" style="background-image:url(); height:427px; color: #FFF;vertical-align:middle">
  <p align="right"><%out.print(username);%> [<a href="logout.jsp">Logout</a>]</p><p align="left"></p>
	
   

  <form name="form2" method="post" action="booked.jsp">
  <table width="200" border="0">
  <tr>
    <td>City</td>
    <td><input name="city" type="text" id="city" readonly="true" style="background-color:#000; color:#FFF" value="
             <% out.print(city);%>
         " /></td>
  </tr>
         <tr>
             
           <td><input name="movieid" type="hidden" id="movieid" readonly="true" style="background-color:#000; color:#FFF" value="<%=movieid%>"/></td>
                
         </tr>
  <tr>
    <td>Movie</td>
    <td><input name="movie" type="text" id="movie" readonly="true" style="background-color:#000; color:#FFF" value="
        <% out.print(movie);%>
         " /></td>
   
  
  </tr>
  <tr>
    <td>Theatre</td>
    <td><input name="theatre" type="text" id="theatre" readonly="true" style="background-color:#000; color:#FFF"  value="
             <% out.print(tname);%>
         " /></td>
  </tr>
  <tr>
    <td>Date</td>
    <td><input name="date" type="text" id="date" readonly="true" style="background-color:#000; color:#FFF"  value="
             <% out.print(date);%>
         " /></td>
  </tr>
    <td>Show Time</td>
    <td><input name="stime" type="text" id="stime" readonly="true"style="background-color:#000; color:#FFF"  value="
             <% out.print(stime);%>
         " /></td>
  </tr>
  <tr>
      <td><input name="username" type="hidden" id="username" value="<%out.print(username);%>"></td>
  </tr>
  
  

</table>
 
  <p>&nbsp;</p>
  <table width="300" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="">
    <tr>
<td><%  
    
    %>
    
    
<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="">
<tr>
<td width="108">Select Seat</td>
<td width="6">:</td>
<td width="294">
<select name ='seat' id = 'seat'>
<option value=""> Select Seat No.</opti

<%      
                
                      
                     // out.print(qarca)' status='not booked' and time='"+stime+"'and
          ResultSet ps = null;
              Statement kt;
              kt = con.createStatement();
              String marca =null ;
             
        

                
            
             ps = kt.executeQuery("select distinct theatre_id from theatre where theatre_name='"+tname+"'  "); 
        while(ps.next()){ 
                marca = ps.getString(1);
        }
        
            
    
        rs = st.executeQuery("select seat from seats where theatre_id='"+marca+"' and movie_id='"+movieid+"' and status='not booked' and time='"+stime+"'  " ); 
        
while(rs.next()){ 
%>

    <option value="<%=rs.getString(1)  %>"> 
          <%=rs.getString(1) %>
    </option> 
<%  
   } 
%>
</select>
</td>
</tr>
<tr>
<td></td>
<td></td>
<td><input name="submit" type="Submit" value="Book Ticket" />
</tr>
</table>
</td>

</tr>
</table> 
</form>
    <p align="center"><br />
<b>Seating Plan:</b>
  <table border="1">
  <tr>
    <td width="20px" style="text-align: center">1</td>
    <td width="20px" style="text-align: center">2</td>
    <td width="20px" style="text-align: center">3</td>
    <td width="20px" style="text-align: center">4</td>
  </tr>
  <tr>
    <td width="20px" style="text-align: center">5</td>
    <td style="text-align: center">6</td>
    <td style="text-align: center">7</td>
    <td style="text-align: center">8</td>
  </tr>
  <tr>  
    <td width="20px" style="text-align: center">9</td>
    <td style="text-align: center">10</td>
    <td style="text-align: center">11</td>
    <td style="text-align: center">12</td>
  </tr>
</table>

  </p>
  </div>
    </center>
  </center>
</body>
</html>