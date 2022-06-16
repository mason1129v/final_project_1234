<%@ page pageEncoding="UTF-8" import="java.util.*, java.sql.*" %>

<%try {

            Class.forName("com.mysql.jdbc.Driver");	  
            try {

                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
	        if(con.isClosed())
                    out.println("連線建立失敗");
				else{
            if(session.getAttribute("email")==null){
			out.print("<script>alert('請先登入！'); window.location='index.jsp'</script>");
            }
            else{
            String ID = request.getParameter("cartid");
			String email_id = (String) session.getAttribute("email");
			String delete = request.getParameter("delete");
			String sql="USE `jp_snake`";
			con.createStatement().execute(sql);

            request.getParameter("delete");
            sql="DELETE FROM `jp_cart` WHERE ID = '"+ID+"' AND email='"+email_id+"'";
                con.createStatement().execute(sql);
			    out.print("<script>alert('刪除成功！'); window.location='product.jsp'</script>");
            
			con.close();
            }
				}
			}
			catch (SQLException sExec) {
              out.println("SQL錯誤"+sExec.toString());
          }
      
			}	
    catch (ClassNotFoundException err) {
          out.println("class錯誤"+err.toString());
    }
%>