<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.text.*" %>
<%
  request.setCharacterEncoding("euc-kr");
%>
<% DecimalFormat format=new DecimalFormat("0"); %>
<html>
<head><title>복리계산프로그램</title></head>
<body>
당신이 입력한 정보입니다.</br>
<b>연 이율</b> : <%= request.getParameter("year") %><br/>
<b>월 저축액</b> : <%= request.getParameter("month") %><br/>
<% 
  String f=request.getParameter("year");
  String s=request.getParameter("month");
  int firstnumber=Integer.parseInt(f);
  int secondnumber=Integer.parseInt(s);
  double price = (double)firstnumber/100/12;
  double pric = 1+price;
  double result = (double)secondnumber*pric;
  for(int i=0;i<5;i++){
    result=(result+secondnumber)*pric;
    }
  
%>
<h1>6개월 후 계좌 잔고<h2>
<%=format.format(result)%>
</body>
</html>