<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr");%>
<html>
<head><title>������û�ý���</title></head>
<body>
<center>
<h2>������û�ý��۸��</h2>
<hr>
<table border=1 cellspacing="1" cellpadding="5">
<tr><td>�а�</td><td><%=request.getParameter("major")%></td></tr>
<tr><td>�г�</td><td><%=request.getParameter("grade")%></td></tr>
<tr><td>����</td><td><%=request.getParameter("choose")%></td></tr>
<tr><td>�������ڵ�</td><td><%=request.getParameter("code")%></td></tr>
<tr><td>�������</td><td><%=request.getParameter("codename")%></td></tr>
<tr><td>����</td><td><%=request.getParameter("num")%></td></tr>

</table>
</center>
</body>
</html>