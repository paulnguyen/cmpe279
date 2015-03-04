package mypkg;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.sql.DataSource;
import javax.naming.*;

 
public class MySQLDbcpServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
	
   DataSource pool;  // Database connection pool
 
   @Override
   public void init( ) throws ServletException {
      try {
         // Create a JNDI Initial context to be able to lookup the DataSource
         InitialContext ctx = new InitialContext();
         // Lookup the DataSource, which will be backed by a pool
         //   that the application server provides.
         pool = (DataSource)ctx.lookup("java:comp/env/jdbc/TestDB");
         if (pool == null)
            throw new ServletException("Unknown DataSource 'jdbc/TestDB'");
      } catch (NamingException ex) {
         ex.printStackTrace();
      }
   }
 
   @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response)
               throws IOException, ServletException {
      // Set the response message's MIME type
      response.setContentType("text/html;charset=UTF-8");
      // Allocate a output writer to write the response message into the network socket
      PrintWriter out = response.getWriter();
 
      Connection conn = null;
      Statement  stmt = null;
      try {
         out.println("<!DOCTYPE html>");
         out.println("<html>");
         out.println("<head><title>Query Servlet</title></head>");
         out.println("<body>");
 
         // Get a connection from the pool
         conn = pool.getConnection();
 
         // Normal JBDC programming hereafter. Close the Connection to return it to the pool
         stmt = conn.createStatement();
         ResultSet rset = stmt.executeQuery("SELECT title, author FROM books");
         int count=0;
         while(rset.next()) {
            out.println("<p>" + rset.getString("title") + ", "
                  + rset.getString("author") + "</p>");
            ++count;
         }
         out.println("<p>==== " + count + " rows found =====</p>");
         out.println("</body></html>");
      } catch (SQLException ex) {
         ex.printStackTrace();
      } finally {
         out.close();
         try {
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();  // return to pool
         } catch (SQLException ex) {
             ex.printStackTrace();
         }
      }
   }
}