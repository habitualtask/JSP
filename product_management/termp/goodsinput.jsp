<%@ page import = "java.sql.*" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import ="thinkonweb.util.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,
com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.io.File" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="euc-kr"%>
<jsp:useBean id="Goods" class="thinkonweb.bean.Goods" scope="request"/>
<jsp:setProperty name="Goods" property="*"/>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy³â MM¿ù ddÀÏ a hh:mm:ss");
	String date =sf.format(nowTime);
%>
<%
  String savePath=application.getRealPath("/termp/image");
  int sizeLimit=5*1024*1024;
  MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit,"utf-8",new DefaultFileRenamePolicy());
  File file = multi.getFile("Image");
  String fileName=file.getName();
  long fileSize=file.length();
  Goods.setTitle(multi.getParameter("Title"));
  Goods.setPrice(Integer.parseInt(multi.getParameter("Price")));
  Goods.setCode(multi.getParameter("Code"));
  Goods.setContents(multi.getParameter("Contents"));
  
  request.setCharacterEncoding("euc-kr");
  Connection conn=ConnectionContext.getConnection();
  PreparedStatement pstmt=conn.prepareStatement("INSERT INTO goods (title, price, code, image, contents,writedate) VALUES (?, ?, ?, ?, ?, ?);");
    pstmt.setString(1,Goods.getTitle());
    pstmt.setInt(2,Goods.getPrice());
    pstmt.setString(3,Goods.getCode());
    pstmt.setString(4, fileName);
    pstmt.setString(5,Goods.getContents());
    pstmt.setString(6,date);
    pstmt.executeUpdate();
    pstmt.close();
    response.sendRedirect("goodslist.jsp");
  %>