<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminReferansGuncelle.aspx.cs" Inherits="portfolio_project.AdminReferansGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label6" runat="server" Text="Adı: "></asp:Label>
                <asp:TextBox ID="TxtID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label1" runat="server" Text="Adı: "></asp:Label>
                <asp:TextBox ID="TxtAdı" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Soyadı: "></asp:Label>
                <asp:TextBox ID="TxtSoyadı" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Maili"></asp:Label>
                <asp:TextBox ID="TxtMaili" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
             <div>
                <asp:Label ID="Label4" runat="server" Text="Kurumu"></asp:Label>
                <asp:TextBox ID="TxtKurumu" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label5" runat="server" Text="Ünvanı"></asp:Label>
                <asp:TextBox ID="TxtUnvani" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click" />
        </div>
</asp:Content>
