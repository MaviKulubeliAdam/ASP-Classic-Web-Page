<!DOCTYPE html>
<html lang="TR">
<head>
    <meta charset="UTF-8">
    <title>Kullanıcı Listesi - Türkiye Amatör Telsiz Opearatörleri Rehberi</title>
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
<center><h2>Kayit Guncelleme</h2></center>
<br>
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("proje_database.mdb")

kod=Request.Form("form_cagri_isareti")

if Request.form("cagri_isareti")="" then
  set rs=Server.CreateObject("ADODB.Recordset")
  rs.open "SELECT * FROM uyeler WHERE cagri_isareti='" & kod & "'",conn
  %>

  <form method="post" action="kullanici_guncelle.asp">
  <table>
  <%for each x in rs.Fields%>
  <tr>
  <td><%=x.name%></td>
  <td><input name="<%=x.name%>" value="<%=x.value%>"></td>
  <%next%>
  </tr>
  </table>
<br>
  <input type="submit" value="Kaydi Guncelle">
  </form>

<br>
  <form method="post" action="kullanici_sil.asp">
    <table>
    <%for each x in rs.Fields%>
    <tr>
    <td><%=x.name%></td>
    <td><input name="<%=x.name%>" value="<%=x.value%>"></td>
    <%next%>
    </tr>
    </table>
    <br>
    <input type="submit" value="Kaydi Sil">
    </form>

<%
else

end if
conn.close
%>

</div>
</header>

</body>
</html>
