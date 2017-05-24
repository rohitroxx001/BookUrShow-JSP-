
import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
  
public class FirstServlet extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String n=request.getParameter("username");  
    String p=request.getParameter("userpass");  
          
    if(LoginDao.validate(n, p)){  
      //  RequestDispatcher rd=request.getRequestDispatcher("newhtml.html");  
     RequestDispatcher rd=request.getRequestDispatcher("home.html");  
        rd.forward(request,response);  
    }  
 
    
    else
{
   out.println("<script type=\"text/javascript\">");
   out.println("alert('User or password incorrect');");
   out.println("location='index.html';");
   out.println("</script>");
}
    
    
    
          
    out.close();  
    }  
}  