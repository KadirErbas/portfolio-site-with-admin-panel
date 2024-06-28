<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHobiler.aspx.cs" Inherits="portfolio_project.AdminHobiler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <table class="table table-bordered">
         <thead>
             <tr>
                 <th>ID</th>
                 <th>HOBİ</th>
                 <th>İŞLEMLER</th>

             </tr>
         </thead>
         <tbody>
             <asp:Repeater ID="Repeater1" runat="server">
                 <ItemTemplate>
         
                     <tr>
                       <th><%# Eval("ID") %></th>
                       <td><%# Eval("HOBI") %></td>

                       <td>
                           <asp:HyperLink NavigateUrl='<%# "AdminHobiSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                           <asp:HyperLink NavigateUrl='<%# "AdminHobiGuncelle.Aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                       </td>

                     </tr>
                 </ItemTemplate>
             </asp:Repeater>
         </tbody>
     </table>
    <asp:HyperLink NavigateUrl="~/AdminPaneli/AdminHobiEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-primary">Hobi Ekle</asp:HyperLink>
</asp:Content>
