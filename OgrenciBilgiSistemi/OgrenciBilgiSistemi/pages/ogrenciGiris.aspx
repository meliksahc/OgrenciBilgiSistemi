<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ogrenciGiris.aspx.cs" Inherits="OgrenciBilgiSistemi.pages.ogrenciGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Öğrenci Giriş Ekranı</title>
    <link href="../css/ogrenciGiris.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="filigran"></div>
        <div class="background bg-darkBlue">
            
            <div class="main">
                <div class="logo">
                    <asp:Image ImageUrl="../images/logo.png" runat="server" id="imgLogo"/>
                </div>
                <div class="sign">
                    <div class="baslik">Öğrenci Girişi</div>
                    <div class="sign-items">
                        <asp:TextBox runat="server" class="textbox" placeholder="Öğrenci Numaranız" ID="txtOgrNo" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);" />
                        <asp:Image ImageUrl="../images/user.png" runat="server" class="imgTxt"/>
                    </div>
                    <div class="sign-items">
                        <asp:TextBox runat="server" class="textbox" placeholder="Şifreniz" TextMode="Password" ID="txtOgrPsw"/>
                        <asp:Image ImageUrl="../images/password.png" runat="server" class="imgTxt"/>
                    </div>
                    <asp:Button Text="Giriş Yap" runat="server" class="btGiris" ID="btGiris" OnClick="btGiris_Click"/>
                    <div class="msg">
                        <asp:Label Text="" runat="server" ID="msg"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
