<!DOCTYPE html>
<html lang="TR">
<head>
    <meta charset="UTF-8">
    <title>Anasayfa - Türkiye Amatör Telsiz Opearatörleri Rehberi</title>
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
<li><a href="./anasayfa.asp"><b>Çıkış Yap</b></a></li>
</ul>
</div>
<div class="anasayfa-icerik">
<br>
<center><h2>Röle Bilgisi Güncelleme</h2></center>
<br>
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("proje_database.mdb")

kod=Request.Form("form_role_kodu")

if Request.form("Il")="" then
  set rs=Server.CreateObject("ADODB.Recordset")
  rs.open "SELECT * FROM role_listesi WHERE id='" & kod & "'",conn
  %>
  <form method="post" action="guncelle2.asp">
  <table>
  <%for each x in rs.Fields%>
  <tr>
  <td><%=x.name%></td>
  <td><input name="<%=x.name%>" value="<%=x.value%>"></td>
  <%next%>
  </tr>
  </table>
  <br><br>
  <input type="submit" value="Kaydi Guncelle">
  </form>

  <form method="post" action="sil2.asp">
    <table>
    <%for each x in rs.Fields%>
    <tr>
    <td><%=x.name%></td>
    <td><input name="<%=x.name%>" value="<%=x.value%>"></td>
    <%next%>
    </tr>
    </table>
    <br><br>
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
