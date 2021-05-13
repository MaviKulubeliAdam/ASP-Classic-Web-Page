
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("proje_database.mdb")


kod=Request.Form("cagri_isareti")

  sql="DELETE FROM uyeler"
  sql=sql & " WHERE cagri_isareti='" & kod & "'"
  on error resume next
  conn.Execute sql
  if err<>0 then
  response.write(sql)
    response.write("Silme islemi gerceklesmedi")
  else
    response.write("" & kod & " silindi!")
    %>
    <meta http-equiv="refresh" content="4; URL=./admin_uye_listesi.asp" />
    <%
  end if
conn.close
  
 %>