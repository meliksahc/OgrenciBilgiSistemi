<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dersProgrami.aspx.cs" Inherits="OgrenciBilgiSistemi.pages.dersProgrami" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/background.css" rel="stylesheet" />
    <link href="../css/derslerim.css" rel="stylesheet" />
    <style>
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
    <title>Ders Programı Ekranı</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="filigran"></div>
        <div class="main">
            <div class="content">
                <div class="ct">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="dersAdi" HeaderText="Ders Adı" SortExpression="dersAdi" />
                            <asp:BoundField DataField="gunAd" HeaderText="Ders Günü" SortExpression="gunAd" />
                            <asp:BoundField DataField="dersSaati" HeaderText="Ders Saati" SortExpression="dersSaati" />
                            <asp:BoundField DataField="derslikAdi" HeaderText="Derslik" SortExpression="derslikAdi" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                    <a href="kategoriler.aspx" class="textbox bt">
                            <asp:Label Text="Geri Dön" ForeColor="White" Font-Bold="true" Font-Size="16px" runat="server" /></a>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OgrenciBilgiSistemiConnectionString %>" SelectCommand="dersProgrami" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter Name="no" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
             </div>
        </div>
        
    </form>
</body>
</html>
