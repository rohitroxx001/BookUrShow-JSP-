<%@include file="connect.jsp"%>
<% String username = request.getParameter("username");    %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
<%      
          
           String movieid = request.getParameter("movieid");   
	 String date = request.getParameter("date");
            String city = request.getParameter("city");    
           String tname = request.getParameter("tname");
           String stime = request.getParameter("stime");
           String seat = request.getParameter("seat");
          // out.println(movie);
           ResultSet rs = null;
            ResultSet ps = null;
              Statement kt;
              kt = con.createStatement();
              String marca ="1" ;
              
             String price="100";
      //    ps = kt.executeQuery("select distinct theatre_id from theatre where theatre_name='"+tname+"'  "); 
        //while(ps.next()){ 
          //      marca = ps.getString(1);
        
        int i  = st.executeUpdate("insert into booked(username,seat,movie_id,theatre_id,date,time,price) values ('" + username + "','" + seat + "','" + movieid + "','" + marca + "','" + date + "','" + stime + "','" + price + "')");
        if (i > 0) {
        //session.setAttribute("userid", user);
        //response.sendRedirect("first.jsp");
        out.print("Registration Successfull!");
    } else {
       out.print("Registratinnnnon Successfull!");
    }
      //  }
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
  <p align="right">[<a href="first.jsp">Main Page</a>] [<a href="logout.jsp">Logout</a>]</p><p align="left"></p>
<H1 style="color:white;">Ticket Booked Sucessfully </H1>
<h2 style="margin-top:100px;color:red;">Developed by </h2>
 <H4 style="color:white;">Rohit Shrivastava(141306) </H4>
    <H4 style="color:white;">Rohan Rastogi(141304) </H4>
        <H4 style="color:white;">Rohan Zutshi(141305) </H4>

    
    </center>
  </center>
   
</body>
</html>

