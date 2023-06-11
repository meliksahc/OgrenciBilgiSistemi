<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="OgrenciBilgiSistemi.pages.kategoriler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Öğrenci Bilgi Ekranı</title>
    <link href="../css/kategoriler.css" rel="stylesheet" />
    <link href="../css/background.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="filigran"></div>
        <div class="main">
            <div class="content">
                <a href="derslerim.aspx" class="ct">
                    <div>
                        <asp:Image ImageUrl="../images/derslerim.png" runat="server" class="img"/>
                        <asp:Label Text="Derslerim" runat="server" CssClass="txt"/>
                    </div>
                </a>
                <a href="dersProgrami.aspx" class="ct">
                    <div>
                        <asp:Image ImageUrl="../images/dersProgram.png" runat="server" class="img" />
                        <asp:Label Text="Ders Programı" runat="server" CssClass="txt" />
                    </div>
                </a>
                <a href="dersSecim.aspx" class="ct">
                    <div>
                        <asp:Image ImageUrl="../images/dersSecim.png" runat="server" class="img" />
                        <asp:Label Text="Ders Seçimi" runat="server"  CssClass="txt" />
                    </div>
                </a>
                <a href="profil.aspx" class="ct">
                    <div>
                        <asp:Image ImageUrl="../images/profil.png" runat="server" class="img" />
                        <asp:Label Text="Profilim" runat="server" CssClass="txt" />
                    </div>
                </a>
            </div>
        </div>
    </form>
</body>
</html>
