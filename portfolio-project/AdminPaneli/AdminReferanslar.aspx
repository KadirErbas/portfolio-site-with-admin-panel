<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="AdminReferanslar.aspx.cs" Inherits="portfolio_project.AdminReferanslar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>ADI</th>
                    <th>SOYADI</th>
                    <th>MAILI</th>
                    <th>KURUMU</th>
                    <th>UNVANI</th>

                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>

                        <tr>
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("ADI") %></td>
                            <td><%# Eval("SOYADI") %></td>
                            <td><%# Eval("KURUMU") %></td>
                            <td><%# Eval("UNVANI") %></td>
                            <td>
                                <asp:Label ID="TxtID" runat="server" Text='<%# Eval("ID") %>' Visible="false"></asp:Label>
                                <asp:Button ID="BtnSil" runat="server" Text="Sil" CssClass="btn btn-danger" OnClick="BtnSil_Click" OnClientClick="return confirm('Silmek istediğinize emin misiniz?');" />
                                <asp:HyperLink NavigateUrl='<%# "AdminReferansGuncelle.Aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                            </td>

                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <asp:HyperLink NavigateUrl="~/AdminPaneli/AdminReferansEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-primary">Referans Ekle</asp:HyperLink>
</asp:Content>
