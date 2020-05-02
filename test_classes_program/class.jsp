<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr");%>
<html>
<head><title>수강신청시스템</title></head>
<body>
<center>
<h2>수강신청시스템목록</h2>
<hr>
<table border=1 cellspacing="1" cellpadding="5">
<tr><td>학과</td><td><%=request.getParameter("major")%></td></tr>
<tr><td>학년</td><td><%=request.getParameter("grade")%></td></tr>
<tr><td>유형</td><td><%=request.getParameter("choose")%></td></tr>
<tr><td>교과목코드</td><td><%=request.getParameter("code")%></td></tr>
<tr><td>교과목명</td><td><%=request.getParameter("codename")%></td></tr>
<tr><td>학점</td><td><%=request.getParameter("num")%></td></tr>

</table>
</center>
</body>
</html>