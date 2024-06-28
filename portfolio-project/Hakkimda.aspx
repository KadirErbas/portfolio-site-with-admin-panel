<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkimda.aspx.cs" Inherits="portfolio_project.Hakkimda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Adınız: "></asp:Label>
                <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Soyadınız: "></asp:Label>
                <asp:TextBox ID="TxtSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Adres"></asp:Label>
                <asp:TextBox ID="TxtAdres" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label4" runat="server" Text="Telefon"></asp:Label>
                <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label5" runat="server" Text="Mail"></asp:Label>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <br />
            <div>
                <asp:Label ID="Label6" runat="server" Text="Kısanot"></asp:Label>
                <asp:TextBox ID="TxtKısanot" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label7" runat="server" Text="Fotoğraf"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Label ID="UploadStatusLabel" runat="server"></asp:Label>
                
            </div>
            <br />

            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click"/>
        </div>






</asp:Content>


