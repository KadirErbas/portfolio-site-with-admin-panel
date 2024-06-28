<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHobiEkle.aspx.cs" Inherits="portfolio_project.AdminHobiEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Hobi: "></asp:Label>
                <asp:TextBox ID="TxtHobi" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click" />
        </div>
</asp:Content>
