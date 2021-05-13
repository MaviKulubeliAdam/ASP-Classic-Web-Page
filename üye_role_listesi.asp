<!DOCTYPE html>
<html lang="TR">
<head>
    <meta charset="UTF-8">
    <title>Anasayfa - Türkiye Amatör Telsiz Opearatörleri Rehberi</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css_klasörü/üye_role_listesi.css">    
</head>
<body>
    <header>
<body>
      <div class="tema">
        <div class="logo">
            <img src="./gorsel_icerik/logo.png">
          
        </div>
<ul class="menu">
<li><a href="./uye_anasayfa.asp"><b>Anasayfa</b></a></li>
<li><a href="./üye_bilgi.asp"><b>Amatör Telsizcilik Nedir?</b></a></li>
<li><a href="./uye_cagriisareti_sorgu.asp"><b>Çağrı İşareti Sorgulama</b></a></li>
<li><a href="./üye_role_listesi.asp"><b>Röle Listesi</b></a></li>
<li><a href="./anasayfa.asp"><b>Çıkış Yap</b></a></li>
</ul>
</div>
<div class="anasayfa-icerik">
<br>
<center><h2>Türkiye Amatör Röle Listesi</h2></center>
<br>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("proje_database.mdb")

set rs=Server.CreateObject("ADODB.recordset")
rs.Open "Select * from role_listesi", conn
%>


<table border="1" width="100%">
  <tr>
  <%for each x in rs.Fields%>
    <td><%Response.Write(x.name)%></td>
  <%next %>
  </tr>
  
<%do until rs.EOF%>
  <tr>
  <%for each x in rs.Fields%>
    <td><%Response.Write(x.value)%></td>
  <%next
  rs.MoveNext%>
  </tr>
<% loop

rs.close
conn.close
%>
</table>

</div>
</header>

</body>
</html>
