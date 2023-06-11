<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dersSecim.aspx.cs" Inherits="OgrenciBilgiSistemi.pages.dersSecim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/background.css" rel="stylesheet" />
    <link href="../css/derslerim.css" rel="stylesheet" />
    <title>Ders Seçim Ekranı</title>
    <style>
        .inputs{
            height:30%;
            display:flex;
            justify-content:center;
            align-content:center;
            align-items:center;
            flex-direction:column;
        }

        .inputs .btKaydet{
            height:40px;
            line-height:30px;
            padding:5px;
            margin:5%;
            background-color:transparent;
            border:2px solid #507cd1;
            border-radius:20px;
            color:white;
            font-size:16px;
            display:block;
        }
       .inputs .btKaydet:hover{
            background-color:#507cd1;
            font-weight:bold;
        }
       .inputs #msg{
            color: #22baec;
            display:block;
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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="dersKodu" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="dersKodu" HeaderText="dersKodu" ReadOnly="True" SortExpression="dersKodu" />
                            <asp:BoundField DataField="dersAdi" HeaderText="dersAdi" SortExpression="dersAdi" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OgrenciBilgiSistemiConnectionString %>" SelectCommand="dersListele" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    
                    <div class="inputs">
                        <asp:Button Text="Dersi Kaydet" runat="server" CssClass="btKaydet" ID="btKaydet" OnClick="btKaydet_Click" />
                        <a href="kategoriler.aspx" class="textbox bt">
                            <asp:Label Text="Geri Dön" ForeColor="White" Font-Bold="true" Font-Size="16px" runat="server" /></a>
                        <asp:Label Text="" ForeColor="White" Font-Size="large" ID="msg" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
