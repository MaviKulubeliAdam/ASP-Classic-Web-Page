<html>
<body>

<h2>Update Record</h2>
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("proje_database.mdb")

kod = Request.Form("id")

  sql="UPDATE role_listesi SET "
  sql=sql & "Il='" & Request.Form("Il") & "',"
  sql=sql & "Guc='" & Request.Form("Guc") & "',"
  sql=sql & "Yer='" & Request.Form("Yer") & "' ,"
  sql=sql & "Yukseklik='" & Request.Form("Yukseklik") & "' ,"
  sql=sql & "Turu='" & Request.Form("Turu") & "' ,"
  sql=sql & "Frekans='" & Request.Form("Frekans") & "' ,"
  sql=sql & "Ton='" & Request.Form("Ton") & "' ,"
  sql=sql & "Squelch='" & Request.Form("Squelch") & "' "


  sql=sql & " WHERE id='" & kod & "'"

  on error resume next
  conn.Execute sql
  if err<>0 then
  response.write(sql)
    response.write("Guncelleme yapilamadi!")
  else
    response.write("Kayit No = " & Request.Form("id") & " guncellendi!")
  end if

conn.close
%>

</body>
</html>