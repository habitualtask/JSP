<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<title>include 지시문</title>
</head>
<body>
<%
  String start="[";
  String end="]";
  %>
  현재 날짜와 시각은
  <%@ include file="date.jspf"%>
  입니다.
  <br/>
  <%= jspf_var %>
  <br/>
  <%= jspf_value %>
  </body>
</html>
