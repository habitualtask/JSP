<%@ page contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.sql.*" %>
<%@ page import="java.sql.Connection"%>
<%@ page import ="thinkonweb.util.*" %>
<jsp:useBean id="Goods" class="thinkonweb.bean.Goods" scope="request"/>
<html>
<head>
  <style>
  table{
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;}
    th {
    background-color: #bbdefb;
  }

  </style>
  <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
  <title>Product details</title>
  </head>
      <center>
          <br/>
          <h1>상품상세설명</h1>
          <br/>
          <table width="1000px">
            <body>
              <%
                Goods.setNum(Integer.parseInt(request.getParameter("Num")));
                Connection conn=ConnectionContext.getConnection();
                PreparedStatement pstmt=conn.prepareStatement("select * from goods where num=?;");
                
                pstmt.setInt(1, Goods.getNum());
                ResultSet rs=pstmt.executeQuery();
                String rsimg,rstitle,rsdate,rscontents;
              
              while(rs.next()){
                rsimg=rs.getString("image");
	 		          rstitle=rs.getString("title");
	 		          rsdate=rs.getString("writedate");
	 		          rscontents=rs.getString("contents");
                out.println("<tr>");
                out.println("<td>"+"<div style='text-align: left;'>상품명 : "+rstitle+"</div></td>");
                out.println("<td>"+"<div style='text-align: left;'>게시일 : "+rsdate+"</div></td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<th colspan=2>"+rstitle+"</th>");
                out.println("</tr>");
                out.println("<tr onclick='window.location=\"goodslist.jsp\"'>");
                out.println("<td><img src='image/"+rsimg+"' width='200px' heigh='300px'/>"+"</td>");
                out.println("<td>");
                
                out.println("<div style='text-align: left;'>");
                out.println(rscontents);
                out.println("</div>");
                out.println("<div style='text-align: right;'>"+rsdate+"</div>");
                out.println("</td></tr>");
                }
              pstmt.close();
              rs.close();
            %>
          </table>
          <br/>
          <input type="button" value="목록" onclick="window.location='goodslist.jsp'"></input>
        </center>
  </body>
  </html>