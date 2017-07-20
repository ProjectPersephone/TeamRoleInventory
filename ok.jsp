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

<p>

<%

Enumeration en = request.getParameterNames ();

%>

<!--
<table border=2">
  <tr>
   <th> parameter </th>
   <th> value </th>
  </tr>
-->
  
<%

HashMap<String, Float> hmap = new HashMap<String, Float>();
String lang_code;

while(en.hasMoreElements())
        {
            Object objOri=en.nextElement();
            String param=(String)objOri;
            String value=request.getParameter(param);
            
            if (param.equals("Submit")) {
            } else
            if (param.equals("userhandle")) {
    %>
<!--
               <tr>
                  <td>userhandle</td>
                  <td><%= value %></td>
               </tr>
-->
    <%        
            } else
            if (param.equals("lang_code")) {
               lang_code = value;
     %>
<!--
               <tr>
                  <td>lang_code</td>
                  <td><%= value %></td>
               </tr>
-->
    <%                   } else {// more robust to do a regex on role+qno
   
               String role_qno[] = param.split ("_");
            
               String role = role_qno[0];
               int qno = Integer.parseInt(role_qno[1]);
               float w = Float.parseFloat(value);

               Float x = hmap.get(role);
               if (x == null) {
                   hmap.put(role, w);
               } else {
                   hmap.put (role, x.floatValue() + w);
               }
    %>
<!--
               <tr>
                  <td><%= role %>: <%= qno %></td>
                  <td><%= w %></td>
               </tr>
-->
    <%
            }
        }
        
 %>

<!-- 
</table>
-->

<% 

   // Get DataSource
   Context ctx = new InitialContext();
   DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/kicksatgs");
   // Get Connection and Statement
   Connection conn = ds.getConnection();
   Statement s = conn.createStatement();
   String query = "select * from belbinroles";
   ResultSet rs = s.executeQuery(query);
   
   TreeMap<Float,Set<String>> sm = new TreeMap<Float,Set<String>>(Collections.reverseOrder());
   
   Iterator it = hmap.entrySet().iterator();
     while (it.hasNext()) {
        Map.Entry pair = (Map.Entry)it.next();
        Float weight = (Float) pair.getValue();
        String role = (String) pair.getKey();
        
        Set<String> roles_of_this_weight = sm.get (weight);
        if (roles_of_this_weight == null)
           roles_of_this_weight = new HashSet<String>();
        roles_of_this_weight.add (role);
        sm.put (weight, roles_of_this_weight);
        // it.remove(); // avoids a ConcurrentModificationException
     }
     
   %>

<table border=2">
  <tr>
   <th> Weight </th>
   <th> Role </th>
  </tr>
<%       
   Iterator ot = sm.entrySet().iterator();
     while (ot.hasNext()) {
        Map.Entry pair = (Map.Entry) ot.next();
        Float ww = (Float) pair.getKey();
        Set<String> roles = (Set<String>) pair.getValue();
        for (String rr : roles) { 
%>
            <tr>
              <td><%= ww %></td>
              <td><%= rr %></td>
            </tr>
<%        
        }
        // ot.remove();
      }
%>

</table>

<table border=2">
  <tr>
   <th> Weight </th>
   <th> Role </th>
   <th> Description </th>
  </tr>
  
<%
    while (rs.next()) {
      String rr = rs.getString("role");
      Float ww = hmap.get(rr);
      
      String nn = rs.getString("name");
      String dd = rs.getString("description");
%>
      <tr>
        <td><%= ww %></td>
        <td><%= nn %></td>
        <td><%= dd %></td>
      </tr>
<%
    }
%>

</table>

<%
   conn.close();
%>        

</table>
</body>
</html>