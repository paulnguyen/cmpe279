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
public class ValidationFilterTemplate implements Filter {

	//configuration which we won't use here, but you
	// may require in your code
	private FilterConfig config;
	
	
	//called at end of lifecyle of filter
	public void destroy() {
		this.config = null;

	}
	
	//called whenever filter is invoked
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {		
		chain.doFilter(request, response);
	}

	//initializes filter
	public void init(FilterConfig filterConfig) throws ServletException {
		this.config = filterConfig;
	}

}
