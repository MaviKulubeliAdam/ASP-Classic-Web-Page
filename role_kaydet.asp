<html>
<body>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("proje_database.mdb")



sql="INSERT INTO role_listesi (id,Il,Guc,Yer,Yukseklik,Turu,Frekans,Ton,Squelch)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("form_role_kodu") & "',"
sql=sql & "'" & Request.Form("form_il") & "',"
sql=sql & "'" & Request.Form("form_guc") & "',"
sql=sql & "'" & Request.Form("form_yer") & "',"
sql=sql & "'" & Request.Form("form_yukseklik") & "',"
sql=sql & "'" & Request.Form("form_band") & "',"
sql=sql & "'" & Request.Form("form_frekans") & "',"
sql=sql & "'" & Request.Form("form_ton") & "',"
sql=sql & "'" & Request.Form("form_squelch") & "')"

on error resume next
conn.Execute sql,recaffected

if err<>0 then
Response.Write(sql)
  Response.Write("Kayit yapilamadi! Hatalı Bilgi Veya Tekrarlanan ID")
else
Response.Write("<h3>Role Kaydi Basarili <br> Yonlendiriliyorsunuz...</h3>")%>
<meta http-equiv="refresh" content="4; URL=./admin_role_listesi.asp">
<%
end if
conn.close
%>
<meta http-equiv="refresh" content="4; URL=./admin_role_listesi.asp">

</body>
</html>