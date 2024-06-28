<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoadingScreen.aspx.cs" Inherits="portfolio_project.LoadingScreen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // targetPage değerini QueryString'den al
            var targetPage = getParameterByName('targetPage');
            if (targetPage) {
                checkIfPageIsReady(targetPage);
            } else {
                window.location.href = 'Error.aspx';
            }
        });

        function getParameterByName(name) {
            var url = window.location.href;
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)');
            var results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }

        function checkIfPageIsReady(targetPage) {
            $.ajax({
                url: targetPage,
                type: 'HEAD',
                success: function () {
                    // Hedef sayfa hazır olduğunda yönlendir
                    window.location.href = targetPage;
                },
                error: function () {
                    // Hedef sayfa hazır değilse tekrar kontrol et
                    setTimeout(function () {
                        checkIfPageIsReady(targetPage);
                    }, 2000); // 2 saniye sonra tekrar kontrol et
                }
            });
        }
    </script>

        <style>
        body, html {
            height: 100%;
            margin: 0;
            background-color: #F8F8F8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;

        }

        .container {

            width: 300px;
            text-align: center;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <img src="Dosyalar/assets/img/loading.gif" style="width:200px;" alt="loading animation"/>
        </div>
    </form>
</body>
</html>
