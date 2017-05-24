package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Book Ur Show</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("html, body {height:100%; margin:0; padding:0;}\n");
      out.write("\n");
      out.write("#page-background {position:fixed; top:0; left:0; width:100%; height:100%;}\n");
      out.write("#content {position:relative; z-index:1; padding:10px;}\n");
      out.write("\n");
      out.write("#\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<div id=\"page-background\"><img src=\"images/main%20baclground.jpg\" width=\"100%\" height=\"100%\" alt=\"Smile\"></div>\n");
      out.write("<center>\n");
      out.write("<div class=\"container\" style=\"width:800px\" id=\"content\">\n");
      out.write("  <div class=\"header\"><img src=\"images/logo.png\" width=\"177\" height=\"61\" longdesc=\"main.php\" />                              \t<!-- end .header --></div>\n");
      out.write("<center>\n");
      out.write("  <div class=\"content\" style=\"background-image:url(); height:427px; color: #FFF;vertical-align:middle\">\n");
      out.write("<table width=\"300\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"1\" bgcolor=\"\">\n");
      out.write("<tr>\n");
      out.write("<form name=\"form1\" method=\"post\" action=\"first.jsp\">\n");
      out.write("       ");


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
                
      out.write(" \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                   <input name=\"username\" type=\"hidden\" id=\"username\" value=\"");
out.print(username);
      out.write("\">\n");
      out.write("                    <input name=\"submit\" type=\"submit\" id=\"submit\" value=\"BookUrMovie\">\n");
      out.write("                </form>\n");
      out.write("                    \n");
      out.write("                ");

                
        }
        else
        {
                 response.sendRedirect("main.jsp");
        }

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("    <td>\n");
      out.write("<div style=\"padding-right:5%\"><iframe src=\"https://www.youtube.com/embed/qD-6d8Wo3do?ecver=2\" style=\"left:0\" width=\"300\" height=\"200\" frameborder=\"0\" allowfullscreen></iframe></div>\n");
      out.write("    </td>\n");
      out.write("    <td><div style=\"padding-right:5%\"><iframe src=\"https://www.youtube.com/embed/8gTeE6pa4Kg?ecver=2\" style=\"left:0\" width=\"300\" height=\"200\" frameborder=\"0\" allowfullscreen></iframe></div>\n");
      out.write("    </td>\n");
      out.write("    \n");
      out.write("    </tr>\n");
      out.write("<tr>\n");
      out.write("    \n");
      out.write("   <video width=\"400\" controls>\n");
      out.write("  <source src=\"Badrinath Ki Dulhania - Official Trailer _ Karan Johar _ Varun Dhawan _ Alia Bhatt.mp4\" type=\"video/mp4\">\n");
      out.write("  \n");
      out.write("  Your browser does not support HTML5 video.\n");
      out.write("</video>\n");
      out.write("    \n");
      out.write("</tr>\n");
      out.write("</table> \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("    </center>\n");
      out.write("  </center>\n");
      out.write("</body>\n");
      out.write("</html>");
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
