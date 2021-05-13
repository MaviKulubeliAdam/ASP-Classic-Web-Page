<%
    dim name, pass, yetki
    name=Request.form("form_cagri_isareti")
    pass=Request.form("form_sifre")
    yetki="0"

    set conn=server.CreateObject("ADODB.connection")
    conn.Provider="Microsoft.Jet.OLEDB.4.0"
    conn.Open Server.MapPath("proje_database.mdb")
    set rs=Server.CreateObject("ADODB.recordset")

    query="select * from uyeler where cagri_isareti='" & name & "'and Sifre='" & pass & "' and Yetki='" & yetki & "'"
    rs.Open query,conn

    if not rs.EOF  then 
        Response.Write " <h4> Giris Basarili <br> Yonlendiriliyorsunuz... </h4>" %>
        <meta http-equiv="refresh" content="4; URL=./uye_anasayfa.asp" />
    <%
    else
        response.Write "<h4> Kullanici Adi veya Sifre Hatali </h4>" %>
        <meta http-equiv="refresh" content="4; URL=./giris.asp" />
        <%
    end if

%>