<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="OgrenciBilgiSistemi.pages.profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/derslerim.css" rel="stylesheet" />
    <link href="../css/background.css" rel="stylesheet" />
    <title>Profil Ekranı</title>
    <style>
        .inputs{
            width:100%;
            height:100%;
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
            align-content:center;
        }
        
        .ct{
            padding:15%;
        }

        .bt{
            background-color:transparent;
            border:2px solid #507cd1;
            border-radius:20px;
            color:white;
            font-size:15px;
            width:40%;
            height:50px;
            line-height:50px;
            text-decoration:none;
        }
        .bt:hover{
            background-color:#507cd1;
            font-weight:bold;
            cursor:pointer;
        }

        .row{
            width:90%;
        }

        .lbl{
            width:35%;
            height:30px;
            line-height:30px;
            display:block;
            float:left;
            text-align:right;
            font-weight:900;
            font-size:17px;
            color:#2a4b92;
            margin:5px;
            border-bottom:2px solid #2a4b92;
        }

        .textbox{
            display:block;
            float:left;
            height:30px;
            line-height:30px;
            text-align:center;
            margin:5px;
            font-weight:600;
            background-color:transparent;
            color:#2a4b92;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="filigran"></div>
        <div class="main">
            <div class="content">
                <div class="ct">
                    <div class="inputs">
                        <div class="row">
                            <asp:Label Text="Numarası" CssClass="lbl" runat="server" /> 
                            <asp:Label ID="lblNo" runat="server" CssClass="textbox" />
                        </div>
                        <div class="row">
                            <asp:Label Text="Adı Soyadı" CssClass="lbl" runat="server" />
                            <asp:Label ID="lblAdSoyad" runat="server" CssClass="textbox" />
                        </div>
                        <div class="row">
                            <asp:Label Text="Okuduğu Bölüm" CssClass="lbl" runat="server" />
                            <asp:Label ID="lblBolum" runat="server" CssClass="textbox" />
                        </div>
                        <div class="row">
                          <asp:Label Text="Sınıfı" CssClass="lbl" runat="server" />
                            <asp:Label ID="lblSinif" runat="server" CssClass="textbox" />                                
                        </div>
                        <div class="row">
                          <asp:Label Text="Email Adresi" CssClass="lbl" runat="server" />
                            <asp:Label ID="lblMail" runat="server" CssClass="textbox" />                                
                        </div>
                        <div class="row">
                          <asp:Label Text="Telefon Numarası" CssClass="lbl" runat="server" />
                            <asp:Label ID="lblTel" runat="server" CssClass="textbox" />                                
                        </div>
                        <div class="row">
                            <asp:Label Text="Yeni Email Adresi" CssClass="lbl" runat="server" />
                            <asp:TextBox ID="txtMail" Text="" TextMode="Email" runat="server" CssClass="textbox"/>
                        </div>
                        <div class="row">
                            <asp:Label Text="Yeni Telefon Numarası" CssClass="lbl" runat="server" />
                            <asp:TextBox ID="txtTel" Text="" TextMode="Phone" runat="server" CssClass="textbox"/>
                        </div>
                        <div class="row">
                            <asp:Label Text="Parola" CssClass="lbl" runat="server" />
                            <asp:TextBox ID="txtSifre" Text="" TextMode="Password" runat="server" CssClass="textbox"/>
                        </div>
                        <asp:Button Text="Bilgilerimi Güncelle" ForeColor="White" ID="btGuncelle" runat="server" CssClass="textbox bt" OnClick="btGuncelle_Click"/>
                        <a href="kategoriler.aspx" class="textbox bt">
                            <asp:Label Text="Geri Dön" ForeColor="White" Font-Bold="true" Font-Size="16px" runat="server" /></a>
                        <asp:Label Text="" ID="msg" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
