<%@ page contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%@ page import = "java.io.*"%>

<html>
<head>
  <style>
  table{
    border-top: 1px solid #444444;
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
<title>Product Write</title>
</head>
<body>
  <form action="goodsinput.jsp" method="POST" enctype="multipart/form-data">
    <center>
      <br/>
      <h1>상품등록</h1>
      <br/>
      <table width="700px">
        <tr>
          <th>상품명</th>
          <td><input type="text" name="Title" size="40" style="float:left;" ></td>
        </tr>
        <tr>
          <th>상품가격</th>
          <td><input type="text" name="Price" style="float:left;"><div style="text-align: left;">&nbsp;won</div></td>
        </tr>
        <tr>
          <th>상품코드</th>
          <td><input type="text" name="Code" size="40" style="float:left;"></td>
        </tr>
        <tr>
          <th>상품사진</th>
          <td><input type="file" name="Image" style="float:left;"></td>
        </tr>
        <tr>
          <th>상품상세설명</th>
          <td><textarea name="Contents" cols="70" rows="15" style="float:left;"></textarea></td>
        </tr>
      </table>
      <br/>
      <INPUT TYPE="reset" VALUE="리셋">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <INPUT TYPE="submit" NAME="AGREE" VALUE="등록" >
      <input type="button" value="목록" onclick="window.location='goodslist.jsp'"></input>
    </center>
  </form>
</body>
</html>