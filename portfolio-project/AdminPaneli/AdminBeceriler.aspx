<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBeceriler.aspx.cs" Inherits="portfolio_project.AdminBeceriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     
      <table class="table table-bordered">
          <thead>
              <tr>
                  <th>ID</th>
                  <th>BECERİ</th>
                  <th>SEVİYE</th>
                  <th>İŞLEMLER</th>
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
                  <ItemTemplate>
      
                      <tr>
                        <th><%# Eval("ID") %></th>
                        <td><%# Eval("BECERI") %></td>
                        <td><%# Eval("SEVIYE") %></td>

                        <td>
                            <asp:HyperLink NavigateUrl='<%# "AdminBeceriSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "AdminBeceriGuncelle.Aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                        </td>

                      </tr>
                  </ItemTemplate>
              </asp:Repeater>
          </tbody>
      </table>
         <asp:HyperLink NavigateUrl="~/AdminPaneli/AdminBeceriEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-primary">Beceri Ekle</asp:HyperLink>


</asp:Content>
