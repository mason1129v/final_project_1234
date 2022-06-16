<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%
    //需登入會員才能留言！
    if(session.getAttribute("email") == null)
	{
		out.print("<script>alert('請先登入！'); window.location='index.jsp'</script>");

    }
    else
    {
            //載入資料庫驅動程式、建立連線
				Class.forName("com.mysql.jdbc.Driver");
				String url="jdbc:mysql://localhost/";
				Connection con=DriverManager.getConnection(url,"root","1234");
			//選擇資料庫
                String sql="USE `jp_snake`";
				con.createStatement().execute(sql);
                request.setCharacterEncoding("utf-8");
				String ID = request.getParameter("id");
				String comment = request.getParameter("comment");
		 		java.sql.Date new_date = new java.sql.Date(System.currentTimeMillis());
				String name = request.getParameter("name");
			
			int c = 0;
		   while((c=comment.indexOf("\n"))!=-1)
			   comment = comment.substring(0,c) + "<br>"+comment.substring(c+1);

	sql="INSERT INTO `jp_board`(ID, name, putdate, comment)";
	sql+="VALUES ('" + ID + "', ";
    sql+="'"+name+"', ";
    sql+="'"+new_date+"', ";
    sql+="'"+comment+"') ";
    
    con.createStatement().execute(sql);

	while (true)
	{
	   request.setAttribute("product_ID",ID);
	   sql="UPDATE jp_products SET comment=comment+1 WHERE ID='"+ID+"'";
	   con.createStatement().execute(sql);
	   out.print("<script>alert('留言新增成功！'); </script>");
	   %> <jsp:forward page="detail.jsp"/><%  
	}
	}
%>