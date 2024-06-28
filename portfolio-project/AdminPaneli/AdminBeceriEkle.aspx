<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBeceriEkle.aspx.cs" Inherits="portfolio_project.AdminBeceriEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="form-group">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Beceri: "></asp:Label>
            <asp:TextBox ID="TxtBeceri" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Seviye: "></asp:Label>
            <asp:DropDownList ID="DdlSeviye" runat="server" CssClass="form-control">
                <asp:ListItem Text="Başlangıç" Value="Başlangıç"></asp:ListItem>
                <asp:ListItem Text="Temel" Value="Temel"></asp:ListItem>
                <asp:ListItem Text="Orta" Value="Orta"></asp:ListItem>
                <asp:ListItem Text="iyi" Value="iyi"></asp:ListItem>
                <asp:ListItem Text="Uzman" Value="Uzman"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />

        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click"/>
    </div>
</asp:Content>
