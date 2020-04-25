import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class HelloWorldServlet extends HttpServlet{
  public void init(){
    System.out.println("Init!!!");
    }
  public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException{
    System.out.println("do get!!!");
    response.setContentType("text/html");
    PrintWriter out =response.getWriter();
    out.println("<html><body bgcolor=\"yello\">Hello Servlet!</body></html>");
    }
    public void destroy(){
      System.out.println("destroy!!!");
      }
    }