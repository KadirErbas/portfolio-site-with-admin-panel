<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="AdminIletisim.aspx.cs" Inherits="portfolio_project.AdminIletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


 <table class="table table-bordered">
     <thead>
         <tr>
             <th>ID</th>
             <th>ISIM</th>
             <th>MAIL</th>
             <th>MESAJ</th>
             <th>TARİH</th>
             <th>İŞLEMLER</th>

         </tr>
     </thead>
     <tbody>
         <asp:Repeater ID="Repeater1" runat="server">
             <ItemTemplate>
     
                 <tr>
                   <th><%# Eval("ID") %></th>
                   <td><%# Eval("KULLANICIADI") %></td>
                   <td><%# Eval("KULLANICIMAILI") %></td>
                   <td><%# Eval("KULLANICIMESAJI") %></td>
                   <td><%# Eval("MESAJTARIHI") %></td>
                   <td>
                    <asp:Label ID="TxtID" runat="server" Text='<%# Eval("ID") %>' Visible="false"></asp:Label>
                    <asp:Button ID="BtnSil" runat="server" Text="Sil" CssClass="btn btn-danger" OnClick="BtnSil_Click" OnClientClick="return confirm('Silmek istediğinize emin misiniz?');" />
                   </td>
                 </tr>
             </ItemTemplate>
         </asp:Repeater>
     </tbody>
 </table>
</asp:Content>
