<%@ page contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.sql.*" %>
<%@ page import="java.sql.Connection"%>
<%@ page import ="thinkonweb.util.*" %>
<html>
<head>
  <style>
  table{
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;
    }
    th {
    background-color: #bbdefb; }
  </style>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Product List</title>
</head>
<body>
  <center>
    <br/>
    <h1>상품목록</h1>
    <br/>
    <table width="1000px">
			<tr>
        <th>번호</th>
        <th>사진</th>
				<th>상품명</th>
				<th>가격</th>
				<th>게시일</th>
			</tr>
			<%
      Connection conn=ConnectionContext.getConnection();
      PreparedStatement pstmt=conn.prepareStatement("select * from goods;");
      ResultSet rs=pstmt.executeQuery();
      int rsnum,rsprice;
      String rsimg,rstitle,rsdate;
      
	 		
	 		while(rs.next()){
	 		  rsnum=rs.getInt("num");
	 		  rsimg=rs.getString("image");
	 		  rstitle=rs.getString("title");
	 		  rsprice=rs.getInt("price");
	 		  rsdate=rs.getString("writedate");
	 		    out.println("<tr onclick='window.location=\"goodsoutput.jsp?Num="+rsnum+"\"'>");
				  out.println("<td>"+rsnum+"</td>");
				  out.println("<td><img src='image/"+rsimg+"' width='150px' heigh='250px'/>"+"</td>");
				  out.println("<td>"+rstitle+"</td>");
          out.println("<td>"+rsprice+"</td>");
          out.println("<td>"+rsdate+"</td>");
          out.println("</tr>");
      }
      pstmt.close();
      rs.close();
      %>
    </table>
    <br/>
    <input type="button" value="등록" onclick="window.location='goodswrite.jsp'"></input>
  </center>

</body>
</html>