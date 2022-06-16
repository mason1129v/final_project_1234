<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<%  

          Class.forName("com.mysql.jdbc.Driver");
          String url="jdbc:mysql://localhost/?serverTimezone=UTC";
          Connection con=DriverManager.getConnection(url,"root","1234");
          String sql="USE `jp_snake`";
          request.setCharacterEncoding("utf-8");
          con.createStatement().execute(sql);
         	
         
  
         String Fullname=request.getParameter("Fullname");
        
         
			if(Fullname!=null)
         {
         	 sql ="DELETE FROM `jp_products` WHERE Fullname='"+Fullname+"'";
             int rec=con.createStatement().executeUpdate(sql);
         
         	if(rec>0)
         {   
     %>

        <script language="javascript">
         var msg;
         msg = "下架成功";
         alert(msg);
         focus();
        </script>
        <meta http-equiv="refresh" content="0; url=b_index.jsp">
      
         <% 
         }
         else
         {
         %>
     
	 <script language="javascript">
         var msg;
         msg = "下架失敗";
         alert(msg);
         focus();
      </script>
      <meta http-equiv="refresh" content="0; url=b_index.jsp">
		 <%}
		 }%>