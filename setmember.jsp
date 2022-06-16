<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<%
		if(session.getAttribute("email")==null){
			out.print("<script>alert('請先登入！'); window.location='index.jsp'</script>");
		}
		else{
		 
	            String memberID = (String) session.getAttribute("memberID");
				
	 			Class.forName("com.mysql.jdbc.Driver");

				String url="jdbc:mysql://localhost/?serverTimezone=UTC";
				Connection con=DriverManager.getConnection(url,"root","1234");
				String sql="USE `jp_snake`";
				con.createStatement().execute(sql);  
				
				String name = new String(request.getParameter("name"));
			   
			    String psw = new String(request.getParameter("psw"));

			    String sql1 = "UPDATE `jp_member` SET name = '"+name+"', psw = '"+psw+"' WHERE email='"+session.getAttribute("email")+"'" ;
				int no=con.createStatement().executeUpdate(sql1);
				if (no>0)
				{
         //Step 5: 顯示結果          
         			out.print("<script>alert('更改成功'); window.location='member.jsp' </script>");
         		}
				con.close();
		}		
%>
	