/*
 * Copyright 1999,2004 The Apache Software Foundation.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package mypkg;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Simple servlet to validate that the Hello, World example can
 * execute servlets.  In the web application deployment descriptor,
 * this servlet must be mapped to correspond to the link in the
 * "index.html" file.
 *
 * @author Craig R. McClanahan <Craig.McClanahan@eng.sun.com>
 */

public final class HelloWithBlacklist extends HttpServlet {

	private Pattern p;
	private final String BLACKLIST = "[^<>&\\\\']*";
	
	public HelloWithBlacklist (){
		//compile once for the life of the object
		p = Pattern.compile(BLACKLIST); 
	}
	
	
    /**
     * Respond to a GET request for the content produced by
     * this servlet.
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are producing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
      throws IOException, ServletException {

	response.setContentType("text/html;charset=UTF-8");
	PrintWriter writer = response.getWriter();

	writer.println("<html>");
	writer.println("<head>");
	writer.println("<title>Sample Application Servlet Page</title>");
	writer.println("</head>");
	writer.println("<body bgcolor=white>");

	writer.println("<table border=\"0\">");
	writer.println("<tr>");
	writer.println("<td>");
	writer.println("<img src=\"images/tomcat.gif\">");
	writer.println("</td>");
	writer.println("<td>");
	writer.println("<h1>Sample Application Servlet</h1>");
	writer.println("This is the output of a servlet that is part of");
	writer.println("the Hello, World application.  It displays the");
	writer.println("request headers from the request we are currently");
	writer.println("processing.");
	writer.println("</td>");
	writer.println("</tr>");
	writer.println("</table>");

	writer.println("<table border=\"0\" width=\"100%\">");
		
	Matcher m, m2;
	
	Enumeration names = request.getHeaderNames();
	while (names.hasMoreElements()) {
	    String name = (String) names.nextElement();
	    
	    // verify that both the name and value pass blacklist filtering
	    m = p.matcher(name); 
	    m2 = p.matcher(request.getHeader(name));
	    if (m.matches() && m2.matches()) { 
	    	writer.println("<tr>");
			writer.println("  <th align=\"right\">" + name + ":</th>"); 
			writer.println("  <td>" + request.getHeader(name) + "</td>");
			writer.println("</tr>");
	    } else {
	    	//throw an execption
	    	throw new IOException("Invalid name or value in header " + name);
	    }
	}
	writer.println("</table>");

	writer.println("</body>");
	writer.println("</html>");

    }


}
