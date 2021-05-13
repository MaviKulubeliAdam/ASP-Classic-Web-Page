<html>
<body>

<h2>Update Record</h2>
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("proje_database.mdb")

kod = Request.Form("cagri_isareti")

  sql="UPDATE uyeler SET "
  sql=sql & "Ad_Soyad='" & Request.Form("Ad_Soyad") & "',"
  sql=sql & "email='" & Request.Form("email") & "',"
  sql=sql & "Sifre='" & Request.Form("Sifre") & "' ,"
  sql=sql & "Adres='" & Request.Form("Adres") & "' ,"
  sql=sql & "Yetki='" & Request.Form("Yetki") & "' "

  sql=sql & " WHERE cagri_isareti='" & kod & "'"

  on error resume next
  conn.Execute sql
  if err<>0 then
  response.write(sql)
    response.write("Guncelleme yapilamadi!")
  else
    response.write(" " & Request.Form("cagri_isareti") & " guncellendi!")
    %>
    <meta http-equiv="refresh" content="4; URL=./admin_uye_listesi.asp" />
    <%
  end if

conn.close
%>

</body>
</html>