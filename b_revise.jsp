<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

 <%  		
        try {
	        
            Class.forName("com.mysql.jdbc.Driver");	  
            try {
            
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
		        if(con.isClosed())
				{
                    out.println("連線建立失敗");
				}
                else
                    {	
				    String ID=request.getParameter("ID");
					String Shortname=request.getParameter("Shortname");
                    String Fullname=request.getParameter("Fullname"); 
					String Jpname=request.getParameter("Jpname");
					String Price=request.getParameter("Price");
					String Brand=request.getParameter("Brand");
					String BrandWebsite=request.getParameter("BrandWebsite");
                    String PlaceOfOrigin=request.getParameter("PlaceOfOrigin");
                    String ShelfLife=request.getParameter("ShelfLife");
                    String Weight=request.getParameter("Weight");
					String Img=request.getParameter("Img");
					String Img1=request.getParameter("Img1");
					String Img2=request.getParameter("Img2");
					String Img3=request.getParameter("Img3");
                    String Type=request.getParameter("Type");
                    String Inventory=request.getParameter("Inventory");
					
					con.createStatement().execute("USE `jp_snake`");
					request.setCharacterEncoding("utf-8");
                     String sql = "UPDATE `jp_products` SET Shortname = '"+Shortname+"',Fullname = '"+Fullname+"',Jpname = '"+Jpname+"',Price = '"+Price+"',Brand = '"+Brand+"',BrandWebsite = '"+BrandWebsite+"',PlaceOfOrigin = '"+PlaceOfOrigin+"',ShelfLife = '"+ShelfLife+"',Weight = '"+Weight+"' ,Img = '"+Img+"',Img1 = '"+Img1+"',Img2 = '"+Img2+"',Img3 = '"+Img3+"',Type = '"+Type+"',Inventory = '"+Inventory+"' WHERE ID = '"+ID+"' ";
					
                    int no=con.createStatement().executeUpdate(sql); //可回傳異動數
				 if (no > 0)
					{
                    out.print("<script>alert('修改成功!');window.location='b_index.jsp'</script>");
 
                    con.close();
                    }
                      else
					{
						out.print("<script>alert('修改失敗!');window.location='b_index.jsp'</script>");
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