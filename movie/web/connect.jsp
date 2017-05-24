<%-- 
    Document   : connect
    Created on : 11 May, 2017, 11:35:20 PM
    Author     : rohitroxx001
--%>
<%@page import="java.sql.*" %><%
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_booking","root", "root");
    Statement st = con.createStatement();
%>
