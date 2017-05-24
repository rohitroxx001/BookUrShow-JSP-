package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class booked_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/connect.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_booking","root", "root");
    Statement st = con.createStatement();

      out.write('\n');
      out.write('\n');
 String username = request.getParameter("username");    
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("    \n");
      
          
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

      out.write("\n");
      out.write("       \n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("\n");
      out.write("<title>Book Ur Show</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("a:link {\n");
      out.write("\tcolor:#ffffff;\n");
      out.write("\ttext-decoration: underline;\n");
      out.write("}\n");
      out.write("a:visited {\n");
      out.write("\tcolor: #ffffff;\n");
      out.write("\ttext-decoration: underline;\n");
      out.write("}\n");
      out.write("html, body {height:100%; margin:0; padding:0;}\n");
      out.write("\n");
      out.write("#page-background {position:fixed; top:0; left:0; width:100%; height:100%;}\n");
      out.write("#content {position:relative; z-index:1; padding:10px;}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div id=\"page-background\"><img src=\"images/main%20baclground.jpg\" width=\"100%\" height=\"100%\" ></div>\n");
      out.write("<center>\n");
      out.write("<div class=\"container\" style=\"width:800px\" id=\"content\">\n");
      out.write("  <div class=\"header\"><img src=\"images/logo.png\" width=\"177\" height=\"61\" longdesc=\"main.php\" />                              \t<!-- end .header --></div>\n");
      out.write("<center>\n");
      out.write("  <div class=\"content\" style=\"background-image:url(); height:427px; color: #FFF;vertical-align:middle\">\n");
      out.write("  <p align=\"right\">[<a href=\"first.jsp\">Main Page</a>] [<a href=\"logout.jsp\">Logout</a>]</p><p align=\"left\"></p>\n");
      out.write("<H1 style=\"color:white;\">Ticket Booked Sucessfully </H1>\n");
      out.write("  </div>\n");
      out.write("    \n");
      out.write("    </center>\n");
      out.write("  </center>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
