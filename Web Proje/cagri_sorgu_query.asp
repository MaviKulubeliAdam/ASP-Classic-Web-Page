<!DOCTYPE html>
<html lang="TR">
<head>
    <meta charset="utf-8">
    <title>Anasayfa - Türkiye Amatör Telsiz Opearatörleri Rehberi</title>
    <link rel="stylesheet" href="./css_klasörü/bilgi.css">    
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
<center><h2>Çağrı İşareti Sorgulama</h2></center>
<br>
<%   
test= "" & Request.Form("form_cagri_isareti") & ""

set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("proje_database.mdb")
set rs=Server.CreateObject("ADODB.recordset")

SQL = "select * from Rehber where Cagri_Isareti like '%" & test & "%'"
on error resume next


Set RS = conn.Execute(SQL)
if err<>0 then
    response.write("Aranan Çağrı İşareti Veri Tabanımızda Kayıtlı Değil")
  else
    response.write("Arama Sonucu :")
  end if
  %>
  <br>
<%
Response.Write RS.getString()
RS.Close
Conn.Close
Response.End
%>
    </div>
</header>

</body>
</html>
