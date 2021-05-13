
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("proje_database.mdb")


kod=Request.Form("id")

  sql="DELETE FROM role_listesi"
  sql=sql & " WHERE id='" & kod & "'"
  on error resume next
  conn.Execute sql
  if err<>0 then
    response.write("Silme işlemi gerçekleşmedi")
  else
    response.write("Kayıt " & kod & " silindi!")
  end if
conn.close
  
 %>