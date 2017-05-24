<%@include file="connect.jsp"%>
<% String username = request.getParameter("username");    %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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

<div id="page-background"><img src="images/main%20baclground.jpg" width="100%" height="100%" alt="Smile"></div>
<center>
<div class="container" style="width:800px" id="content">
  <div class="header"><img src="images/logo.png" width="177" height="61" longdesc="main.php" />                              	<!-- end .header --></div>
<center>
  <div class="content" style="background-image:url(); height:427px; color: #FFF;">
	<p align="right"><%out.print(username);%> [<a href="logout.jsp">Logout</a>]</p><p align="left"></p>
	
  <form name="form1" action="book.jsp" method="post">
  <table width="200" border="0">
  <tr>
    <td>City</td>
     <% String city = request.getParameter("city");  %>  
    <td><input name="city" type="text" id="city" readonly="true" style="background-color:#000; color:#FFF" value="
              <%
    
        ResultSet rs = null;

        st = con.createStatement();
        
        rs = st.executeQuery("select city_name from city where city_id='" + city + "' "); 
        
 while(rs.next()){ 
%><%=rs.getString(1) %>
   
<%  
   } 
%>
               
               " /></td>
  </tr>
  <tr>
    <td>Movie</td>
    <% String movie = request.getParameter("movie");  %>
    <td><input name="movie" type="text" id="movie" readonly="true" style="background-color:#000; color:#FFF" value="
        <%
    
        //ResultSet rs = null;

        st = con.createStatement();
               ResultSet ps = null;
              Statement kt;
              kt = con.createStatement();
        
        rs = st.executeQuery("select distinct movie_name from movie where movie_id='" + movie + "' "); 
        
 while(rs.next()){ 
%><%=rs.getString(1) %>
   
<%  
   } 
%>
               
               " /></td>        
  </tr>
        
       
</table>
  
    <table>
	<tr>
                <td width=\"100px\"></td>
		<td width=\"100px\">Theatre</td>
		<td width=\"100px\">Show Timing</td>
		<td width=\"100px\">Book Ticket</td></b>
        </tr>
   
        
        <%
           
         st = con.createStatement();
       rs = st.executeQuery("select theatre_id,showtiming,date from movie where movie_id='"+movie+"' and city_id='"+city+"' "); 
        
    while(rs.next()){ 
    %>
 
            
      
    <% 
             String marca = rs.getString(1);
            
             ps = kt.executeQuery("select theatre_name from theatre where theatre_id='"+marca+"' "); 
        while(ps.next()){ 
    %> 
        <tr>
               
                <td><input name="movieid" type="hidden" id="movieid" readonly="true" style="background-color:#000; color:#FFF" value="<%=movie%>"/></td>
                <td><input name="tname" type="text" id="tname" readonly="true" style="background-color:#000; color:#FFF" value="<%=ps.getString(1)%>"/></td>
		<td><input name="stime" type="text" id="stime" readonly="true" style="background-color:#000; color:#FFF" value="<%=rs.getString(2)%>"/></td>
                <td><input name="date" type="text" id="date" readonly="true" style="background-color:#000; color:#FFF" value="<%=rs.getString(3)%>"/></td>
		<td align="center"><input name="book" type="submit" value="Book" /></td>
            
        </tr>
                <tr><td><input name="username" type="hidden" id="username" value="<%out.print(username);%>"></td></tr>
       
       
<%  
      
    } 
    %>
    
            
    <%  
      
   } 
    %>        
	</table>
        
  </form>
  </div>
    </center>
 
</body>
</html>