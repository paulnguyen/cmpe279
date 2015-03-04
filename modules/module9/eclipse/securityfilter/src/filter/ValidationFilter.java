package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.util.Enumeration;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 
 * ValidationFilter.java
 * @author Rohit K. Sethi, Security Compass
 *
 * Created soley for illustration of security concepts.
 * 
 * This validation filter will perform blacklist filtering 
 * for all user-supplied input.
 */
public class ValidationFilter implements Filter {

	//configuration which we won't use here, but you
	// may require in your code
	private FilterConfig config;
	
	//Pattern for matching regular expressions
	private Pattern p;
	
	//Blacklist of characters to filter out
	private final String BLACKLIST = "[^<>&\\\\']*";
	
	//called at end of lifecyle of filter
	public void destroy() {
		this.config = null;
		this.p = null;
	}
	
	//called whenever filter is invoked
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		//get list of request parameters
		Enumeration enumer = request.getParameterNames();
		Matcher m, m2;
	    while (enumer.hasMoreElements()) {
	      String name = (String) enumer.nextElement();
	      String value = (String) request.getParameter(name);
	      //filter name and value
		   m = p.matcher(name); 
		   m2 = p.matcher(value);
		   
	      if (!m.matches() || !m2.matches()) { 
	    	  //throw an exception to the end user if validation fails
	    	  throw new ServletException("Invalid request");
	      }
	    }
	    
		chain.doFilter(request, response);
		
		//remeber to specify the character set!
		response.setContentType("text/html;charset=UTF-8");
	}

	//initializes filter
	public void init(FilterConfig filterConfig) throws ServletException {
		this.config = filterConfig;
		this.p = Pattern.compile(BLACKLIST); 
	}

}
