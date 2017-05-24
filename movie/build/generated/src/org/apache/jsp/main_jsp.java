package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\t<table width=\"300\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"1\" bgcolor=\"\">\n");
      out.write("<tr>\n");
      out.write("<form name=\"form1\" method=\"post\" action=\"login.jsp\">\n");
      out.write("<td>\n");
      out.write("<table width=\"100%\" border=\"0\" cellpadding=\"3\" cellspacing=\"1\" bgcolor=\"\">\n");
      out.write("<tr>\n");
      out.write("<td colspan=\"3\"><strong>Member Login </strong></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td width=\"78\">Username</td>\n");
      out.write("<td width=\"6\">:</td>\n");
      out.write("<td width=\"294\"><input name=\"myusername\" type=\"text\" id=\"myusername\"></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Password</td>\n");
      out.write("<td>:</td>\n");
      out.write("<td><input name=\"mypassword\" type=\"password\" id=\"mypassword\"></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>&nbsp;</td>\n");
      out.write("<td>&nbsp;</td>\n");
      out.write("<td><input type=\"submit\" name=\"Submit\" value=\"Login\"></td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</td>\n");
      out.write("</form>\n");
      out.write("</tr>\n");
      out.write("</table> \n");
      out.write("\n");
      out.write("<table width=\"300\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"1\" bgcolor=\"\">\n");
      out.write("<tr>\n");
      out.write("<form name=\"form2\" method=\"post\" action=\"signup.jsp\">\n");
      out.write("<td>\n");
      out.write("<table width=\"100%\" border=\"0\" cellpadding=\"3\" cellspacing=\"1\" bgcolor=\"\">\n");
      out.write("<tr>\n");
      out.write("<td colspan=\"3\"><p>&nbsp;</p>\n");
      out.write("  <p><strong> Sign Up Here</strong></p></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td width=\"78\">Username</td>\n");
      out.write("<td width=\"6\">:</td>\n");
      out.write("<td width=\"294\"><input name=\"myusername\" type=\"text\" id=\"myusername\"></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Enter Password</td>\n");
      out.write("<td>:</td>\n");
      out.write("<td><input name=\"mypassword\" type=\"password\" id=\"mypassword\"></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Confirm Password</td>\n");
      out.write("<td>:</td>\n");
      out.write("<td><input name=\"mypassword2\" type=\"password\" id=\"mypassword2\"></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Email id</td>\n");
      out.write("<td>:</td>\n");
      out.write("<td><input name=\"myemail\" type=\"text\" id=\"myemail\"></td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>&nbsp;</td>\n");
      out.write("<td>&nbsp;</td>\n");
      out.write("<td><input type=\"submit\" name=\"Submit\" value=\"Sign Up\"></td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</td>\n");
      out.write("</form>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
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
