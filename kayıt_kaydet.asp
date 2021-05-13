<html>
<body>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("proje_database.mdb")



sql="INSERT INTO uyeler (Ad_Soyad,cagri_isareti,email,Sifre,Adres)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("form_ad_soyad") & "',"
sql=sql & "'" & Request.Form("form_cagri_isareti") & "',"
sql=sql & "'" & Request.Form("form_email") & "',"
sql=sql & "'" & Request.Form("form_sifre") & "',"
sql=sql & "'" & Request.Form("form_adres") & "')"

on error resume next
conn.Execute sql,recaffected

if err<>0 then
  Response.Write("Kayit yapilamadi!")
else
  Response.Write("<h3>Uye Kaydi Basarili <br> Yonlendiriliyorsunuz...</h3>") %>
  <meta http-equiv="refresh" content="4; URL=./anasayfa.asp" />
 <% 
end if
conn.close
%>

</body>
</html>