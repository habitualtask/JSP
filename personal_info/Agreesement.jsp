<%@ page contentType="text/html; charset=euc-kr" %>
<%
    request.setCharacterEncoding("euc-kr");
    String id=(String)session.getAttribute("ID");
    String password=(String)session.getAttribute("PASSWORD");
    String name=(String)session.getAttribute("NAME");
    session.setAttribute("ID",id);
    session.setAttribute("PASSWORD",password);
    session.setAttribute("NAME",name);
    String address=request.getParameter("ADDRESS");
    String phone =request.getParameter("PHONE");
    String email=request.getParameter("EMAIL");
    session.setAttribute("ADDRESS",address);
    session.setAttribute("PHONE",phone);
    session.setAttribute("EMAIL",email);
%>
<html>
  <head><title>회원가입</title></head>
  <body>
      <h3>약관</h3>
      -----------------------------------</br>
      1.회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다.<br>
      2.웹 사이트의 정상운영을 방해하는 회원은 탈퇴 처리합니다.<br>
      -----------------------------------</br>
      <form action=Subscribe.jsp method=post>
        위의 약관에 동의하십니까?
        <INPUT TYPE=RADIO NAME=AGREE VALUE="YES">동의함
        <INPUT TYPE=RADIO NAME=AGREE VALUE="NO">동의하지 않음
    <br><br>
        <INPUT TYPE=SUBMIT VALUE='확인'>
    </form>
  </body>
</html>
