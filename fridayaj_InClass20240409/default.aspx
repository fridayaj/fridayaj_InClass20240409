<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="fridayaj_InClass20240409._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .ListBoxCssClass
        {
        color:GhostWhite;
        background-color:DarkOliveGreen;
        font-family:Courier New;
        font-size:large;
        font-style:italic;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="lbFruits" runat="server" CssClass="ListBoxCssClass" AutoPostBack="True" Height="135px" Width="144px" OnSelectedIndexChanged="Select_Fruit" DataSourceID="SqlDataSourceInClass20240409" DataTextField="LastName" DataValueField="NameID">
                <asp:ListItem>Peach</asp:ListItem>
                <asp:ListItem>Plum</asp:ListItem>
                <asp:ListItem>Apple</asp:ListItem>
                <asp:ListItem>Guava</asp:ListItem>
            </asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSourceInClass20240409" runat="server" ConnectionString="Data Source=lcb-sql.uccob.uc.edu\nicholdw;Persist Security Info=True;User ID=IS3050Login;Password=Akash42!;" ProviderName="<%$ ConnectionStrings:ConnectionStringInClass20240409.ProviderName %>" SelectCommand="SELECT [NameID], [UserName], [FirstName], [LastName] FROM [tName]"></asp:SqlDataSource>
        </div>
        <asp:Label ID="lblChosenFruit" runat="server" Text="Select a Fruit"></asp:Label>
    </form>
</body>
</html>
