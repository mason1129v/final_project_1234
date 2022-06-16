<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>


<%
	if(session.getAttribute("email")==null){
		out.print("<script>alert('請先登入！'); window.location='index.jsp'</script>");
	}

	else{
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			String product_ID = request.getParameter("cartid");
			String email_id = (String) session.getAttribute("email");

			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/";
			Connection con=DriverManager.getConnection(url,"root","1234");
			String sql="USE `jp_snake`";
			con.createStatement().execute(sql);

			sql = "SELECT * FROM `jp_cart` WHERE ID='" + product_ID + "' AND email='"+email_id+"'";
			ResultSet rs=con.createStatement().executeQuery(sql); 
						
			// 檢查商品是否已存在購物車
			
			int q = 0;
			
			
			while (rs.next()) //查到內容就繼續
			{
			//表示已存在
				
				q = Integer.parseInt(rs.getString("quantity")); //取得購物車裡那商品原來的數量

			}
			
			if(q>0){
			q+=quantity; //點了加入購物車就加一
				sql="UPDATE `jp_cart` SET quantity='"+q+"' where ID='" + product_ID+"'";
				con.createStatement().execute(sql);
				
					out.print("<script>alert('加入購物車成功!'); window.location='product.jsp'</script>");
					request.setAttribute("product_ID",product_ID);
				
				out.print("<script>alert('加入購物車成功!'); window.location='product.jsp'</script>");
				}
			else{
				
				q+=quantity;
				sql="INSERT jp_cart(ID,email,quantity) VALUES ('" + product_ID + "' , ";
				sql+="'"+email_id+"',";
				sql+="'"+q+"')";
				con.createStatement().execute(sql);
				
					out.print("<script>alert('加入購物車成功!'); window.location='product.jsp'</script>");
					
			}
		con.close();
	}			
%>



