<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<sql:setDataSource var="ds" dataSource="jdbc/TestDB" />
<sql:query sql="select author, title from books" var="rs" dataSource="${ds}" /> 
 
<html>
<head><title>Test Database Connection Pooling</title></head>
<body>
  <h2>Results</h2>
  <table>
    <c:forEach var="row" items="${rs.rows}">
    <tr>
    <td>${row.author}</td>
    <td>${row.title}</td>
    </tr>
    </c:forEach>
  </table>
</body>
</html>