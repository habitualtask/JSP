<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.text.*" %>
<%
  request.setCharacterEncoding("euc-kr");
%>
<% DecimalFormat format=new DecimalFormat("0"); %>
<html>
<head><title>����������α׷�</title></head>
<body>
����� �Է��� �����Դϴ�.</br>
<b>�� ����</b> : <%= request.getParameter("year") %><br/>
<b>�� �����</b> : <%= request.getParameter("month") %><br/>
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
<h1>6���� �� ���� �ܰ�<h2>
<%=format.format(result)%>
</body>
</html>