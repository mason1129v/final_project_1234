<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%
        if(session.getAttribute("email")==null){
			out.print("<script>alert('請先登入！'); window.location='index.jsp'</script>");
		}
		else{
                Class.forName("com.mysql.jdbc.Driver");
				String url="jdbc:mysql://localhost/";
				Connection con=DriverManager.getConnection(url,"root","1234");
				String sql="USE `jp_snake`";
				con.createStatement().execute(sql);

                String email_id = (String) session.getAttribute("email");
                
                sql="SELECT * FROM `jp_cart`, `jp_products` WHERE email='" + email_id + "' AND jp_cart.ID = jp_products.ID";
                ResultSet rs=con.createStatement().executeQuery(sql);

                while(rs.next()){
                    int buy=Integer.parseInt(rs.getString("quantity"));
                    int stock=Integer.parseInt(rs.getString("Inventory"));
                    if(buy>stock){
                        out.print("<script>alert('庫存不足！');window.location='product.jsp'</script>");
                        return;
                    }
                }
		
				String order_email=(String)session.getAttribute("email");
                String user_ID=(String)session.getAttribute("email"); 
                String pay = request.getParameter("totalprice");
                String buyername =request.getParameter("buyername");
                String buyerphone = request.getParameter("buyerphone");
                String buyeremail = request.getParameter("buyeremail");
				String buyeraddress =request.getParameter("buyeraddress");
				
				
				if(buyername==""||buyerphone==""||buyeremail==""||buyeraddress==""){
					out.print("<script>alert('訂單建立失敗,各欄位不得為空，返回結帳頁面');window.location='order.jsp'</script>");
				}
				else{
                sql = "INSERT `jp_ordersdetail` (user_ID ,pay , buyername , buyerphone ,  buyeremail , buyeraddress) VALUES ('"+user_ID+"','"+pay+"','"+buyername+"','"+buyerphone+"','"+buyeremail+"','"+buyeraddress+"')";
                con.createStatement().execute(sql);
                out.print("<script>alert('訂單提交！');window.location='member.jsp'</script>");

				sql="SELECT * FROM `jp_cart` WHERE email='" + user_ID + "'" ;
		        ResultSet rs1=con.createStatement().executeQuery(sql);
                while(rs1.next()){
                    sql = "INSERT `jp_orders` (ID,quantity,order_email) VALUES ('"+rs1.getString("ID")+"','"+rs1.getString("quantity")+"','"+order_email+"')";
                    con.createStatement().execute(sql); 
                }

				
                sql="SELECT * FROM `jp_cart`, `jp_products` WHERE email='" + email_id + "' AND jp_cart.ID = jp_products.ID";
                rs=con.createStatement().executeQuery(sql);
               
                 while(rs.next()){
                    String id = rs.getString("ID");
                    int buy=Integer.parseInt(rs.getString("quantity"));
                    int stock=Integer.parseInt(rs.getString("Inventory"));
                    int newstock=(stock-buy);
                    int sold = Integer.parseInt(rs.getString("sold"));
                    sold++;
                    sql = "UPDATE `jp_products` SET Inventory = '"+newstock+"',sold = '"+sold+"' WHERE ID='"+id+"' ";
                    con.createStatement().execute(sql);
                }


                
                sql="DELETE FROM `jp_cart` WHERE email='"+email_id+"'";
				con.createStatement().execute(sql);
				
				
				String sql5="USE `jp_snake`";
				request.setCharacterEncoding("utf-8");
				String totalprice = request.getParameter("totalprice");
				sql5="truncate table `jp_totalprice`";
				con.createStatement().execute(sql5);
				}
        }

%>