<!DOCTYPE html>
<html lang="TR">
<head>
    <meta charset="UTF-8">
    <title>Kullanıcı Listesi - Türkiye Amatör Telsiz Opearatörleri Rehberi</title>
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
<li><a href="./admin_anasayfa.asp"><b>Anasayfa</b></a></li>
<li><a href="./admin_bilgi.asp"><b>Amatör Telsizcilik Nedir?</b></a></li>
<li><a href="./admin_cagriisareti_sorgu.asp"><b>Çağrı İşareti Sorgulama</b></a></li>
<li><a href="./admin_role_listesi.asp"><b>Röle Listesi</b></a></li>
<li><a href="./admin_uye_listesi.asp"><b>Üye Listesi</b></a></li>
<li><a href="./anasayfa.asp"><b>Çıkış Yap</b></a></li>
</ul>
</div>
<div class="anasayfa-icerik">
<br>
<center><h2>Kullanıcı Listesi</h2></center>
<br>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("proje_database.mdb")

set rs=Server.CreateObject("ADODB.recordset")
rs.Open "Select * from uyeler", conn
%>

<table border="1" width="100%">
<tr>
<%
for each x in rs.Fields
  response.write("<th>" & ucase(x.name) & "</th>")
next
%>
</tr>
<% do until rs.EOF %>
<tr>
<form method="post" action="guncelle_sil_ekranı.asp">
<%
for each x in rs.Fields
  if lcase(x.name)="cagri_isareti" then%>
    <td>
    <input type="submit" name="form_cagri_isareti" value="<%=x.value%>">
    </td>
  <%else%>
    <td><%Response.Write(x.value)%></td>
  <%end if
next
%>
</form>
<%rs.MoveNext%>
</tr>
<%
loop
conn.close
%>
</table>

</div>
</header>

</body>
</html>
