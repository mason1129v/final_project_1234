<%@ page import = "java.sql.*, java.util.*"%>
<%
try { 
    Class.forName("com.mysql.jdbc.Driver"); 
    try {	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql=""; 
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("警告：連線建立失敗！"); 
        else {
				sql="USE `jp_snake` "; 
				con.createStatement().execute(sql);
				sql="SELECT * FROM `jp_counter`"; 
				ResultSet rs=con.createStatement().executeQuery(sql); 
			while(rs.next()) 
            {
				String strC= rs.getString(1); 
				int c=Integer.parseInt(strC); 
				if (session.isNew()) { 
					c++;
				out.print(c); 
			}
			else  
			{
				out.print(c); 
			} 
			sql="UPDATE `jp_counter` set counter=\'" + c + "\'";
			}
			con.createStatement().execute(sql); 
			con.close(); 
			}
		}
    catch (SQLException sExec) {
           out.println("警告：MySQL 錯誤！"+sExec.toString()); 
    }
}
catch (ClassNotFoundException err) {
   out.println("警告：class 錯誤！"+err.toString()); 
}
%>

