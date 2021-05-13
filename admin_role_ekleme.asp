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
<center><h2>Türkiye Amatör Röle Listesi</h2></center>
<br>

<form method="post" action="role_kaydet.asp">
  <table>
  <tr>

  <td>Röle Kodu:</td>
  <td><input name="form_role_kodu"></td>
  </tr><tr>
  <td>İl:</td>
  <td><input name="form_il"></td>
  </tr><tr>
  <td>Güç:</td>
  <td><input name="form_guc"></td>
  </tr><tr>
  <td>Yer:</td>
  <td><input name="form_yer"></td>
  </tr><tr>
  <td>Yükseklik:</td>
  <td><input name="form_yukseklik"></td>
  </tr><tr>
  <td>Band:</td>
  <td><input name="form_band"></td>
  </tr><tr><td>Frekans:</td>
  <td><input name="form_frekans"></td>
  </tr><tr>
  <td>Ton:</td>
  <td><input name="form_ton"></td>
  </tr><tr>
  <td>Squelch:</td>
  <td><input name="form_squelch"></td>
  
  </tr>
  </table>
  <br><br>
  <input type="submit" value="Yeni Ekle">
  <input type="reset" value="İptal">
  </form>

</div>
</header>

</body>
</html>
