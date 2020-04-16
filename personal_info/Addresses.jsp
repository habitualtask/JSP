<%@ page contentType="text/html; charset=euc-kr" %>
<%
    request.setCharacterEncoding("euc-kr");
    String id=request.getParameter("ID");
    String password =request.getParameter("PASSWORD");
    String name=request.getParameter("NAME");
    session.setAttribute("ID",id);
    session.setAttribute("PASSWORD",password);
    session.setAttribute("NAME",name);
%>
<html>
  <head><title>연락처를 입력</title></head>
</head>
<body>
	연락처를 입력하세요.
  <form action=Agreement.jsp method=post>
  주소:<INPUT TYPE=TEXT NAME=ADRESS><BR>
  전화번호:<INPUT TYPE=TEXT NAME=PHONE><BR>
  이메일:<INPUT TYPE=TEXT NAME=EMAIL><BR>
  <INPUT TYPE=SUBMIT VALUE='확인'>
  </form>
  </body>
</html>
