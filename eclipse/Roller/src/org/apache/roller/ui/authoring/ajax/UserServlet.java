/*
* Licensed to the Apache Software Foundation (ASF) under one or more
*  contributor license agreements.  The ASF licenses this file to You
* under the Apache License, Version 2.0 (the "License"); you may not
* use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.  For additional information regarding
* copyright in this work, please see the NOTICE file in the top level
* directory of this distribution.
*/
package org.apache.roller.ui.authoring.ajax;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.roller.RollerException;
import org.apache.roller.model.Roller;
import org.apache.roller.model.RollerFactory;
import org.apache.roller.model.UserManager;
import org.apache.roller.pojos.UserData;

/**
 * Return list of users matching a startsWith strings. <br />
 * Accepts request params (none required):<br />
 *     startsWith: string to be matched against username and email address<br />
 * List format:<br />
 *     username0, emailaddress0 <br/>
 *     username1, emailaddress1 <br/>
 *     username2, emailaddress2 <br/>
 *     usernameN, emailaddressN <br/>
 * 
 * @web.servlet name="UserServlet" 
 * @web.servlet-mapping url-pattern="/roller-ui/authoring/user/*"
 * @deprecated This is an older test class.  UserDataServlet should be used instead.
 */
public class UserServlet extends HttpServlet {
    private final int MAX_LENGTH = 50;   
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {    
        
        String startsWith = request.getParameter("startsWith");
 
        Connection con = null;
    	Statement stmt = null;
    	ResultSet rs = null;
    	try {
            InitialContext ic = new InitialContext();
            DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/rollerdb");
            con = ds.getConnection();
            
            String query = null;
            if (startsWith == null || startsWith.equals(""))
            	query = "SELECT username, emailaddress FROM rolleruser";
            else
            	query = "SELECT username, emailaddress FROM rolleruser WHERE username like '" + startsWith + "%' or emailaddress like '" + startsWith + "%'";
            
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);     
            
            while (rs.next()) {
              response.getWriter().print(rs.getString("username"));   
              response.getWriter().print(",");   
              response.getWriter().println(rs.getString("emailaddress"));            	
            }
          
            response.setContentType("text/html");
            response.flushBuffer();  
        } catch (NamingException e) {
        	e.printStackTrace();
            throw new ServletException(e);
        } catch (SQLException e) {
        	e.printStackTrace();
        	throw new ServletException(e);
        } finally {
        	try {
        		if (rs != null)
        			rs.close();
        	} catch (SQLException e) {
        		e.printStackTrace();
        		throw new ServletException(e);
        	} finally {
        		try {
            		if (stmt != null)
            			stmt.close();
            	} catch (SQLException e) {
            		e.printStackTrace();
            		throw new ServletException(e);
            	} finally {
            		try {
                		if (con != null)
                			con.close();
                	} catch (SQLException e) {
                		e.printStackTrace();
                		throw new ServletException(e);
                	}
            	}
        	}
        }
    }
}
