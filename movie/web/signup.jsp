<%@include file="connect.jsp"%>
<%@page import="java.sql.*,java.util.*"%>
<%

    String myusername = request.getParameter("myusername");    
    String mypassword = request.getParameter("mypassword");
    String pwd2 = request.getParameter("mypassword2");
    String myemail = request.getParameter("myemail");
    int crid=1;
    
    //ResultSet rs;
    int i = st.executeUpdate("insert into users_tbl(username,password,email,userlevel) values ('" + myusername + "','" + mypassword + "','" + myemail + "',"+crid+")");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("main.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("main.jsp");
    }
%>




