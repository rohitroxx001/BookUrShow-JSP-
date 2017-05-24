<%@include file="connect.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Book Ur Show</title>
<style type="text/css">
html, body {height:100%; margin:0; padding:0;}

#page-background {position:fixed; top:0; left:0; width:100%; height:100%;}
#content {position:relative; z-index:1; padding:10px;}

#
</style>

</head>

<body>
<div id="page-background"><img src="images/main%20baclground.jpg" width="100%" height="100%" alt="Smile"></div>
<center>
<div class="container" style="width:800px" id="content">
  <div class="header"><img src="images/logo.png" width="177" height="61" longdesc="main.php" />                              	<!-- end .header --></div>
<center>
  <div class="content" style="background-image:url(); height:427px; color: #FFF;vertical-align:middle">
<table width="900" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="">
<tr>
<form name="form1" method="post" action="first.jsp">
       <%

    String username = request.getParameter("myusername");    
    String password = request.getParameter("mypassword");
    int i=2;

        ResultSet rs = null;
        st = con.createStatement();
        rs = st.executeQuery("select * from users_tbl"); 
        
        while(rs.next()){ 
            
            if(username.equals(rs.getString(1)) && password.equals(rs.getString(2)))
            {
                  i=1;
                   
                  break;
                  
            }
            else
            {
                   i=2;
            }
 
            
        }
        
        if(i==1)
        {
                %> 
                
                
                   <input name="username" type="hidden" id="username" value="<%out.print(username);%>">
                       <h1><input name="submit" type="submit" id="submit" value="BookUrMovie"></h1>
                </form>
                    
                <%
                
        }
        else
        {
                 response.sendRedirect("main.jsp");
        }
%>


</tr>

<h2>Latest Trailers<h2>
<tr>
   
    <td>
        
        <video controls poster="bk.png" width="400" controls>
  <source src="Badrinath Ki Dulhania - Official Trailer _ Karan Johar _ Varun Dhawan _ Alia Bhatt.mp4" type="video/mp4">
  
  Your browser does not support HTML5 video.
        </video>
        </td>
            
        <td>
        <video controls poster="ns.png" width="400" controls>
  <source src="Naam Shabana Official Theatrical Trailer _ Releases 31st March 2017.mp4" type="video/mp4">
  
  Your browser does not support HTML5 video.
        </video>
    </td>
    
   
    
</tr>
      
   
    <td>
        
        <video controls poster="p.png" width="400" controls>
  <source src="Phillauri _ Official Trailer _ Anushka Sharma _ Diljit Dosanjh _ Suraj Sharma _ .mp4" type="video/mp4">
  
  Your browser does not support HTML5 video.
        </video>
        </td>
            
        <td>
        <video controls poster="s.png" width="400" controls>
  <source src="Sathyadev IPS - Official Trailer _ Ajith, Trisha, Anushka _ Harris Jayaraj.mp4" type="video/mp4">
  
  Your browser does not support HTML5 video.
        </video>
    </td>
    
   
    
</tr>
</table> 



  </div>
    </center>
  </center>
</body>
</html>