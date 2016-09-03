<html>
<head>

<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ page import='java.sql.*' %>
<%@ page import='javax.sql.*' %>
<%@ page import='javax.naming.*' %>

</head>


<body>

Hello World

<%
Connection result = null;
try {
    Context initialContext = new InitialContext();
    DataSource datasource = (DataSource)initialContext.lookup("java:jboss/datasources/MySQLDS");
    result = datasource.getConnection();
%>

<%= datasource.getConnection() %>
<%= result.isClosed() %>


<%    
} catch (Exception ex) {
    out.println("Exception: " + ex + ex.getMessage());
}
%>
</body>


</html>