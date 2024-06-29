<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="portfolio_project.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Login</title>
    <link href="AdminLoginStyles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <script type="text/javascript">
            
    </script>
</head>
<body>
    
   <form id="form1" runat="server">
        <div class="login-container">
            <h2>Admin Login</h2>
            <div class="form-group">
                <div class="input-container">
                    <i class="fa fa-user icon"></i>
                    <asp:TextBox ID="username" runat="server" CssClass="form-control" PlaceHolder="Kullanıcı adı" required></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="input-container">
                    <i class="fa fa-lock icon"></i>
                    <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control" PlaceHolder="Şifre" required></asp:TextBox>
                </div>
            </div>
            <asp:Button ID="loginButton" runat="server" Text="Giriş Yap" CssClass="btn btn-primary mb-3" OnClick="loginButton_Click"  />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Beni Hatırla" OnCheckedChanged="CheckBox1_CheckedChanged" CssClass="text-success"/>
            <br />
            <asp:Label ID="errorMessage" runat="server" CssClass="error-message" Visible="false"></asp:Label>
            <br />

            <asp:Label ID="lastLogin" runat="server" Text="Label">Son Giriş: </asp:Label>
            <br />



        </div>
        
    </form>
 

</body>
</html>
