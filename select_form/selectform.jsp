<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr");%>

<html><body>
당신의 학력,소속국가 및 관심분야는 다음과 같습니다.<br><br>
<%
  String edu=request.getParameter("edu");
  String na=request.getParameter("na");
  String[] like=request.getParameterValues("like");
%>

<b><%=edu %></b>과<b><%=na %></b><br><br>
<%
    for(int i=0;i<like.length;i++){ %>
      <b><% out.println(like[i]); %> </b><br> 
<%    } %>

</body> </html>
