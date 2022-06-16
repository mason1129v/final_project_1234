<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<%  
 try {

            Class.forName("com.mysql.jdbc.Driver");	  
            try {

                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
	        if(con.isClosed())
                    out.println("連線建立失敗");
                else
                {	String Shortname=request.getParameter("Shortname");
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
     
                    String sql ="INSERT `jp_products` (Shortname,Fullname,Jpname,Price,Brand,BrandWebsite,PlaceOfOrigin,ShelfLife,Weight,Img,Img1,Img2,Img3,Type,Inventory,sold,comment)" +
					" VALUES ('"+ Shortname + "','"+Fullname+"','"+Jpname+"','"+Price+"','"+Brand+"','"+BrandWebsite+"','"+PlaceOfOrigin+"','"+ShelfLife+"','"+Weight+"','"+Img+"','"+Img1+"','"+Img2+"','"+Img3+"','"+Type+"','"+Inventory+"','0','0')";
                         int no=con.createStatement().executeUpdate(sql);
                    if (no>0)
						{
						%>
						<script language="javascript">
                        var msg;
                        msg = "新增成功";
                        alert(msg);
                        focus();
                    </script>
                    <meta http-equiv="refresh" content="0; url=b_index.jsp">
					 
					 <%}
					else
					{%>
						<script language="javascript">
                        var msg;
                        msg = "新增失敗";
                        alert(msg);
                        focus();
                    </script>
                    <meta http-equiv="refresh" content="0; url=b_index.jsp">
					<%
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

