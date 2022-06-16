<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	
		try {
				String url="jdbc:mysql://localhost/?serverTimezone=UTC";
				Connection con=DriverManager.getConnection(url,"root","1234");
				
				String sql="USE jp_snake";
				con.createStatement().execute(sql);
				String name=request.getParameter("name");
				String id=request.getParameter("email");
				String psw=request.getParameter("psw");
				
				if(name==""||id==""||psw==""){
					out.print("<script>alert('註冊失敗，各欄位不得為空，返回註冊');window.location='index.jsp'</script>");
				}
				else{	
				try{
				 sql = "INSERT `jp_member`(name , email, psw) VALUES ('"+name+"','"+id+"','"+psw+"')";
				con.createStatement().execute(sql);
					out.print("<script>alert('註冊成功，返回登入');window.location='index.jsp'</script>");
				
				}
				catch(SQLException sExec){
					
					out.print("<script>alert('註冊失敗，該帳號存在或有其他問題，返回註冊');window.location='index.jsp'</script>");
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