<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<%
				Class.forName("com.mysql.jdbc.Driver");
				String url="jdbc:mysql://localhost/";
				Connection con=DriverManager.getConnection(url,"root","1234");
				String sql="USE `jp_snake`";
				con.createStatement().execute(sql);
				String id = request.getParameter("email");
				String psw = request.getParameter("psw");


		if( id.equals ("admin") &&  psw.equals ("admin")){
				session.setAttribute("email","admin");
				out.print("<script>alert('管理員登入成功！'); window.location='b_index.jsp' </script>");
		}
		else{

	sql = "SELECT * FROM `jp_member` WHERE `email`=? AND `psw`=?";
	PreparedStatement pstmt = null;
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1,request.getParameter("email"));
    pstmt.setString(2,request.getParameter("psw"));

	ResultSet paperrs = pstmt.executeQuery();

	if(paperrs.next()){
		session.setAttribute("email",request.getParameter("email"));
		out.print("<script>alert('登入成功！');window.location='index.jsp'</script>");
	}
	else{
		out.print("<script>alert('登入失敗，請確認帳號密碼！');window.location='index.jsp'</script>");
	}
}
%>