<!doctype html>

<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Team Role Inventory Results</title>
</head>
<body>
<% 

   // Get DataSource
   Context ctx = new InitialContext();
   DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/kicksatgs");
   // Get Connection and Statement
   Connection conn = ds.getConnection();
   Statement s = conn.createStatement();
   String query = "select * from belbinanswers";
   ResultSet rs = s.executeQuery(query);
%>

<p>

<%

Enumeration en = request.getParameterNames ();

%>
<table border=2">
  <tr>
   <th> parameter </th>
   <th> value </th>
  </tr>
<%

while(en.hasMoreElements())
        {
            Object objOri=en.nextElement();
            String param=(String)objOri;
            String value=request.getParameter(param);
            
            if (param.equals("Submit")) {
            } else
            if (param.equals("userhandle")) {
    %>
               <tr>
                  <td>userhandle</td>
                  <td><%= value %></td>
               </tr>
    <%        
            } else
            if (param.equals("lang_code")) {
     %>
               <tr>
                  <td>lang_code</td>
                  <td><%= value %></td>
               </tr>
    <%                   } else {// more robust to do a regex on role+qno
   
               String role_qno[] = param.split ("_");
            
               String role = role_qno[0];
               int qno = Integer.parseInt(role_qno[1];
               float w = Float.parseFloat(value);
    %>
               <tr>
                  <td><%= role %>: <%= qno %></td>
                  <td><%= w %></td>
               </tr>
    <%
            }
        }
   conn.close();
%>        

</table>
</body>
</html>
