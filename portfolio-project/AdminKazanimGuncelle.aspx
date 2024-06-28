<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKazanimGuncelle.aspx.cs" Inherits="portfolio_project.AdminKazanimGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label2" runat="server" Text="ID: "></asp:Label>
                <asp:TextBox ID="TxtID" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label1" runat="server" Text="Açıklama: "></asp:Label>
                <asp:TextBox ID="TxtAciklama" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" />
        </div>

</asp:Content>
