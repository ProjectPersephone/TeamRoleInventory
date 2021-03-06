<!doctype html>

<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>

<%
   String lang_code = "id";
   String userhandle = "Yakushima";
   String dbname = "kicksatgs";
   
   String itbl = "intro";
   String qtbl = "belbinq";
   String atbl = "belbina";
   
   // better to read from config record assoc w/DB:
   int nchoices = 8;
   int avg_wt = 50;
   int max = avg_wt * nchoices;   // can put all points on one choice...
   int total = max;
   

   String q_col = "question";
   String a_col = "a";
   String c_col = "role";
   
   int qno;
   int nquestions;

   ResultSet irs;
   ResultSet qrs, ars;  // resultsets for intro, questions and answers

   Context ctx = new InitialContext();
   DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/" + dbname);
   Connection conn = ds.getConnection();
   Statement si = conn.createStatement();
   Statement sq = conn.createStatement();
   Statement sa = conn.createStatement();
   
   irs = si.executeQuery("select * from "+itbl+" where lang_code = '"+ lang_code +"'");
   irs.next();
   
   String title = irs.getString("title");


%>

<html lang="en">
<head>

  <title><%=title%></title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  
  <script>
     ///////////////// sliders ///////////////////////
     
     function set_readout (qno, c, v) {
          	var pref = c + "_" + qno;
            var w   = "#"+pref+"_weight"; // slider
            // w == "#"+$(w)[0].parentNode.id ... should assert this
            var readout = "#"+pref+"_amount";
                            
            $( readout ).val (v);
     };
     
     // only if the slider moves
     function update_from_slider (ui, qno, c) {
     		var pref = c + "_" + qno;
            var w   = "#"+pref+"_weight";     // slider
            var readout = "#"+pref+"_amount";
            var slider_v = ui.value; // $(w).slider ("value");
            var old_wt = $(readout).val();
            var diff = old_wt - slider_v;
            var total = <%=total%>;
            
            console.log ("update_from_slider: qno="+qno+" c=" + c + " slider_v = " + slider_v + "=" + "old_wt=" + old_wt);

            if (diff != 0)
            	{
                console.log ("Diff: old_wt = " + old_wt + " slider_v =" + slider_v + " diff=" + diff);
                
            	var sel = "li[name$='_"+qno+"']";
                
                console.log ("sel = " + sel);
                
            	var others = "";
                var sum_of_others = 0;    // if it's really an invariant, shouldn't need to recompute it
            	$( sel ).each (function (i) {
                    if (this.id != $(w)[0].parentNode.id) {
                         others += (" " + this.id);
                         sum_of_others += parseFloat($("#"+this.id+"_amount").val());
                    }
                 }
                );
                
                console.log("others = " + others + ", sum_of_others = " + sum_of_others);
                
                // sum of all = total
                // sum_of_others + old_wt = total
                // sum_of_others + (slider_v + diff) = total
                
                // a * (sum_of_others) + slider_v = total
                // a * (sum_of_others) = total - slider_v
                var a = (total - slider_v) / sum_of_others;
                
                console.log (" a = " + a);
                             
                $( sel ).each (function (i) {
                         if (this.id != $(w)[0].parentNode.id) {
                             var other_readout = "#" + this.id + "_amount";   // numeric readout
                             var other_slider  = "#" + this.id + "_weight";   // slider ID
                             var cur_wt = parseFloat($(other_slider).slider("value"));
                             
                             var new_other_slider_v = a * cur_wt; // parseFloat($(other_slider).slider("value")) + diff;
                             
                             $(other_readout).val(new_other_slider_v);   // 
                             $(other_slider).slider('value', new_other_slider_v);

                             console.log ("new slider value for " + other_slider + " = " + new_other_slider_v);
                             }
                         }
                     );
            	}
            $( readout ).val (slider_v);
     };
     
     function mk_slider (qno, c) {
     		var pref = c + "_" + qno;
            var w   = "#"+pref+"_weight";
            var max = <%=max%>;
            var v = <%=avg_wt%>;
            
            $(w).slider({
                min:		 0,
                max:		 max,
         		value:       v,
         		orientation: "horizontal",
         		range:       "min",
         		animate:     true,
                step:        1,
                
                slide:       function (event, ui) { update_from_slider (ui, qno, c); }

       		});
            set_readout (qno, c, v);
     };
     

  </script>
  

  <%!
  public int getRowCount(ResultSet resultSet) {
    if (resultSet == null) {
        return 0;
    }
    try {
        resultSet.last();
        return resultSet.getRow();
    } catch (SQLException exp) {
        exp.printStackTrace();
    } finally {
        try {
            resultSet.beforeFirst();
        } catch (SQLException exp) {
            exp.printStackTrace();
        }
    }
    return 0;
  }
  %>
  
  <%

   %> 
      <h2><%=title %></h2>
      <p><%=irs.getString("intro") %></p>
   <%

   qrs = sq.executeQuery("select * from "+qtbl+" where lang_code = '"+ lang_code  +"'");

   nquestions = getRowCount(qrs);
   
   String[][] a = new String[nquestions][nchoices];
   String[][] choiceclass = new String[nquestions][nchoices];
  
   for (qno = 1; qno <= nquestions; ++qno) { 
   
      ars = sa.executeQuery("select * from "+atbl+" where lang_code = '"+lang_code+"' and qno = "+qno);
      
      for (int i = 0; ars.next(); ++i) {
         a[qno-1][i] = ars.getString (a_col);
         choiceclass[qno-1][i] = ars.getString (c_col);
      }
    
      String s = "#sortable"+ qno;  %>
      <script>

      ////// Track card-sorter start/end positions - still some use for this? //////////
    
      $(function() {
        $("<%=s%>").sortable(
           {
		   start: function(event, ui) { ui.item.startPos = ui.item.index() % <%=nchoices%>; }, // modulo: sorter bug workaround
		   stop:  function(event, ui) {
                    console.log ("> " + ui.item[0].id + " started at " + ui.item.startPos +"-- ended up at " + ui.item.index() % <%=nchoices%>);
               	  }
           }
        );
        $("<%=s%>").disableSelection();
      });
     
     <% for (int i = 0; i < nchoices; ++i) { %>
     	$(function() { mk_slider (<%=qno%>, "<%=choiceclass[qno-1][i]%>"); });
    <% } %>
    </script>
    
    <style>
    <%= s + " { list-style-type: none; margin: 0; padding: 0; width: 90%; min-width: 500px; }" %>
    <%= s + " li { margin: 0 3px 3px 3px; padding: 0.4em; padding-left: 1.5em; font-size: 1.0em;  }" %>
    <%= s + " li span { position: absolute; margin-left: -1.3em; }" %>
    </style>
  <% } %>
</head>
<body>

<form action="ok.jsp" method="get" class="my-form">

<input type="hidden" id="userhandle" name="userhandle" value="<%=userhandle%>" />
<input type="hidden" id="lang_code" name="lang_code" value="<%=lang_code%>" />

<%
   for (qno = 1; qno <= nquestions; ++qno) {
       qrs.next();       // should check that n == qrs.getInt ("qno")
       %>
       <p>
       <b><%= qno + ". " + qrs.getString(q_col) + " . . ." %></b>
       <ul id="<%= "sortable" + qno %>">
       <%
       for (int i = 0; i < nchoices; ++i) {
           String arrow_or_not = "<span class=\"ui-icon ui-icon-arrowthick-2-n-s\"></span>";
           if (i == nchoices-1)
             arrow_or_not = ""; // gets stuck on lowest box, which gets swapped up :-(
           String c = choiceclass[qno-1][i];
           String c_q = c + '_' + qno;
         %> 
           <li class="ui-state-default" id ="<%= c_q %>" name="<%= c_q %>">
               <label for="<%= c_q + "_amount" %>" >Weight</label>
               <input type="text" id="<%= c_q+"_amount" %>" name="<%= c_q+"_amount" %>" readonly size="2" width="40" />
               <div id="<%= c_q + "_weight" %>" style="float:left; width:10%; margin:5px;"></div>               
               <strong><%= choiceclass[qno-1][i] %></strong>: <%= a[qno-1][i] %>.
               <%= arrow_or_not %>
           </li>
       <% } %>
       </ul>
      <%
   }

   conn.close();
%>

<script>
$('.my-form').on('submit', function () {
    // var hash = "";
    // for (i = 1; i < <%= nquestions %>; ++i)
    //    hash = hash + $("#sortable"+i).sortable ("serialize", {attribute: "value"}) + '&';
    // return true;
});
</script>

<input name="Submit" value="Evaluate" type="submit" />
</form> 
</body>
</html>
