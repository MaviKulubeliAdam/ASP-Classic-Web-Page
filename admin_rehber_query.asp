<html>
<body>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("proje_database.mdb")



sql="INSERT INTO Rehber (Ad_Soyad,Cagri_Isareti,email,Adres)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("form_ad_soyad") & "',"
sql=sql & "'" & Request.Form("form_cagri_isareti") & "',"
sql=sql & "'" & Request.Form("form_email") & "',"
sql=sql & "'" & Request.Form("form_adres") & "')"

on error resume next
conn.Execute sql,recaffected

if err<>0 then
  Response.Write("Kayit yapilamadi!")
else
  Response.Write("<h3>Rehber Kaydi Basarili <br> Yonlendiriliyorsunuz...</h3>") %>
  <meta http-equiv="refresh" content="4; URL=./admin_cagriisareti_sorgu.asp" />
 <% 
end if
conn.close
%>

</body>
</html>