package org.owasp.csrf.util;

import java.security.SecureRandom;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;

/**
 *  Based on OWASP CryptoUtil.java and CSRFGuard.java written by Eric Sheriden for OWASP
 *
 *  This version by Rohit K. Sethi, Security Compass
 *  Created Aug. 9, 2007
 *
 *  This is a very basic tool to add a unique token to form fields for
 *  mitigating against Cross Site Request Forgery (CSRF) attacks. 
 *
 */


public final class CSRFTokenUtil
{
	private final static String DEFAULT_PRNG = "SHA1PRNG"; //algorithm to generate key
	public final static String SESSION_ATTR_KEY = "CSRF_TOKEN"; 
	private final static String NO_SESSION_ERROR = "No valid session found";
  /**
   * Generates a random token to use in CSRF with the default 
   * Crytopgrahically strong Pseudo-Number Random Generator
   * 
   * @return A string with a random token
   * @throws NoSuchAlgorithmException if PRNG algorithm is not valid
   */
	private static String getToken() throws NoSuchAlgorithmException
	{
		return getToken(DEFAULT_PRNG);
	}
	
  /**
   * Generates a random token to use in CSRF with the default 
   * Crytopgrahically strong Pseudo-Number Random Generator
   * 
   * @param prng Random Number generator to use
   * @return A string with a random token
   * @throws NoSuchAlgorithmException if PRNG algorithm is not valid
   */
	private static String getToken(String prng) throws NoSuchAlgorithmException
	{
		SecureRandom sr = SecureRandom.getInstance(prng);
		return "" + sr.nextLong();
	}
	
	
	/**
	 * Retrieves the CSRF token from the current session. Creates a token if one
	 * does not already exist
	 * @param session HTTP Session for user - must be valid
	 * @return token for the session, a new one is created if it doesn't already exist
	 * @throws ServletException if session is null
	 * @throws NoSuchAlgorithmException if random number generator algorithm doesn't exist
	 */
	 public static String getToken (HttpSession session) throws ServletException, NoSuchAlgorithmException {
	    //throw exception if session is null
	    if (session == null) {
	        throw new ServletException(NO_SESSION_ERROR);
	    }
	    
	    //Now attempt to retrieve existing token from session. If it doesn't exist then
	    //add it
	    String token_val = (String)session.getAttribute(SESSION_ATTR_KEY);
	    if (token_val == null){
	    	token_val = getToken();
	    	session.setAttribute(SESSION_ATTR_KEY, token_val);
	    	
	    } 	    	
	    return token_val;
	    
	 }
	 
	/**
	 * Tests whether or not the value of the CSRF_TOKEN parameter in the request 
	 * is equal to the value of the CSRF_TOKEN attribute in the session 
	 * 
	 * @param session Session with existing token (will be created if it doesn't exist)
	 * @param request Inbound HttpRequest that you wish to check if it has a valid
	 * anti-CSRF token
	 * @return true if the parameter value matches the token in the session, false otherwise
	 * @throws ServletException If the session is null
	 * @throws NoSuchAlgorithmException if random number generator algorithm doesn't exist
	 */
	 public static boolean isValid (HttpSession session, HttpServletRequest request) 
	 throws ServletException, NoSuchAlgorithmException {
		    //throw exception if session is null
		    if (session == null) {
		        throw new ServletException(NO_SESSION_ERROR);
		    }
		    return getToken(session).equals(
		    		request.getParameter(SESSION_ATTR_KEY));
	 }

}
