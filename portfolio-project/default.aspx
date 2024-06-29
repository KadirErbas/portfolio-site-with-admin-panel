<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="portfolio_project.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Portfolio</title>
    <link rel="icon" type="image/x-icon" href="Dosyalar/assets/img/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="Dosyalar/css/styles.css" rel="stylesheet" />
        <style>
        .btn-primary {
            color: white;
        }
    </style>
</head>
<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <asp:Repeater ID="Repeater8" runat="server">
                <ItemTemplate>

                    <asp:Label ID="Label25" runat="server" Text='<%# Eval("AD")%>' CssClass="d-block d-lg-none"></asp:Label>

                    <span class="d-none d-lg-block">
                        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="Dosyalar/assets/img/<%# Eval("FOTOGRAF")%>" alt="..." /></span>
                </ItemTemplate>
            </asp:Repeater>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">HAKKIMDA</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">DENEYİM</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">EĞİTİM</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">BECERİLER</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#hobiler">HOBİLER</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#referanslar">REFERANSLAR</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#iletisim">İLETİŞİM</a></li>

            </ul>
        </div>
    </nav>
    <!-- Page Content-->
    <div class="container-fluid p-0">
        <!-- Hakkımda-->
        <section class="resume-section" id="about">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="resume-section-content">
                        <h1 class="mb-0">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("AD")%>'></asp:Label>
                            <span class="text-primary">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("SOYAD")%>'></asp:Label>
                            </span>
                        </h1>
                        <div class="subheading mb-5">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("ADRES")%>'></asp:Label>
                            · 
                            
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("TELEFON")%>'></asp:Label>
                            ·
                       
                            <a href="mailto:name@email.com">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("MAIL")%>'></asp:Label>
                            </a>
                        </div>
                        <p class="lead mb-5">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("KISANOT")%>'></asp:Label>

                        </p>
                        <div class="social-icons">
                            <a class="social-icon" href="https://www.linkedin.com/in/abdulkadir-erbas/"><i class="fab fa-linkedin-in"></i></a>
                            <a class="social-icon" href="https://github.com/KadirErbas"><i class="fab fa-github"></i></a>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
        </section>
        <hr class="m-0" />
        <!-- Deneyim-->
        <section class="resume-section" id="experience">
           
                    <div class="resume-section-content">
                        <h2 class="mb-5">DENEYİM</h2>
                         <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                        <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                            <div class="flex-grow-1">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("BASLIK")%>'></asp:Label>

                                </h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("ALTBASLIK")%>'></asp:Label>

                                </div>
                                <p>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("ACIKLAMA")%>'></asp:Label>
                                </p>
                            </div>
                            <div class="flex-shrink-0">
                                <span class="text-primary">
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("TARIH")%>'></asp:Label>
                                </span>
                            </div>
                        </div>
                         </ItemTemplate>
                        </asp:Repeater>
                    </div>

        </section>
        <hr class="m-0" />
        <!-- Eğitim-->
        <section class="resume-section" id="education">

            <div class="resume-section-content">
                <h2 class="mb-5">EĞİTİM</h2>
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                            <div class="flex-grow-1">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("BASLIK")%>'></asp:Label>
                                </h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("ALTBASLIK")%>'></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("ACIKLAMA")%>'></asp:Label>
                                </div>
                                <p>
                                    GPA: 
                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("GNOT")%>'></asp:Label>
                                </p>
                            </div>
                            <div class="flex-shrink-0">
                                <span class="text-primary">
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("TARIH")%>'></asp:Label>
                                </span>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>

        </section>
        <hr class="m-0" />
        <!-- Beceriler-->
        <section class="resume-section" id="skills">

            <div class="resume-section-content">
                <h2 class="mb-5">BECERİLER</h2>
                <div class="subheading mb-3">Programlama Dilleri & Araçlar</div>
                <asp:Repeater ID="Repeater4" runat="server">
                    <ItemTemplate>
                        <span>
                            
                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("BECERI")%>' CssClass=" mb-0 fw-bold">()</asp:Label>
                       </span>
                        <span>(</span>
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("SEVIYE")%>'></asp:Label>
                        <span>)</span>

                        <div class="progress mb-3" role="progressbar" aria-label="Animated striped example" aria-valuemin="0" aria-valuemax="100">
                            <div class="progress-bar progress-bar-striped progress-bar-animated"
                                style="width: <%# GetProgressBarStyle(Eval("SEVIYE")) %>">
                                <%# GetProgressBarStyle(Eval("SEVIYE"))%>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

                <div class="subheading mb-3 mt-5">İşlevel Beceriler</div>


                <ul class="fa-ul mb-0">
                    <asp:Repeater ID="Repeater5" runat="server">
                        <ItemTemplate>
                            <li>
                                <span class="fa-li"><i class="fas fa-check"></i></span>
                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("ACIKLAMA")%>'></asp:Label>
                            </li>

                        </ItemTemplate>
                    </asp:Repeater>

                </ul>

            </div>
        </section>
        <hr class="m-0" />
        <!-- Hobiler-->
        <section class="resume-section" id="hobiler">
            <div class="resume-section-content">
                <h2 class="mb-5">HOBİLER</h2>
                <asp:Repeater ID="Repeater6" runat="server">
                    <ItemTemplate>
                        <p>
                            •
                            <asp:Label ID="Label19" runat="server" Text='<%# Eval("HOBI")%>'></asp:Label>
                        </p>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>
        <!-- Hobiler-->

        <hr class="m-0" />
        <!-- Referanslar-->
        <section class="resume-section" id="referanslar">
            <div class="resume-section-content">
                <h2 class="mb-5">Referanslar</h2>
                <asp:Repeater ID="Repeater7" runat="server">
                    <ItemTemplate>
                        <div class="container mb-4">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4>
                                        <asp:Label ID="Label20" runat="server" Text='<%# Eval("ADI")%>'></asp:Label>
                                        <span class="text-primary">
                                            <asp:Label ID="Label21" runat="server" Text='<%# Eval("SOYADI")%>'></asp:Label></span>

                                    </h4>
                                    <p class="mb-2"><strong>E-Posta: </strong>
                                        <asp:Label ID="Label22" runat="server" Text='<%# Eval("MAILI")%>'></asp:Label>
                                    </p>
                                    <p class="mb-2"><strong>Kurum:</strong>
                                        <asp:Label ID="Label23" runat="server" Text='<%# Eval("KURUMU")%>'></asp:Label></p>
                                    <p class="mb-2"><strong>Ünvan:</strong>
                                        <asp:Label ID="Label24" runat="server" Text='<%# Eval("UNVANI")%>'></asp:Label></p>
                                </div>

                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </section>
        <!-- Referanslar-->

        <hr class="m-0" />

        <!-- İletişim -->
        <form id="Form1" runat="server">
            <section class="resume-section" id="iletisim">
                <div class="resume-section-content">
                    <div class="row gx-4 gx-lg-5">
                        <div class="col-lg-8 col-xl-6">
                            <h2 class="mt-0">Benİmle İletİşİme Geç!</h2>
                            <hr class="divider">
                            <p class="text-muted mb-5">Sonraki projelerinde benimle çalışmaya hazır mısın? Bana bir mesaj gönder ve sana en yakın zamanda dönüş yapacağım!</p>
                        </div>
                    </div>
                    <div class="row gx-4 gx-lg-5 mb-5">
                        <div class="col-lg-6">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
                            <div class="form-floating mb-3">
                                <asp:TextBox ID="TxtKullaniciAdi" runat="server" CssClass="form-control" placeholder="Enter your name..."></asp:TextBox>
                                <label for="TxtKullaniciAdi">İsim</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtKullaniciAdi" ErrorMessage="İsim gereklidir." CssClass="invalid-feedback"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:TextBox ID="TxtKullaniciMail" runat="server" CssClass="form-control" TextMode="Email" placeholder="name@example.com"></asp:TextBox>
                                <label for="TxtKullaniciMail">Email adres</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtKullaniciMail" ErrorMessage="Email gereklidir." CssClass="invalid-feedback"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtKullaniciMail" ErrorMessage="Geçersiz email formatı." CssClass="invalid-feedback" ValidationExpression="\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:TextBox ID="TxtKullaniciMesaji" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Enter your message here..."></asp:TextBox>
                                <label for="TxtKullaniciMesaji">Mesaj</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtKullaniciMesaji" ErrorMessage="Mesaj gereklidir." CssClass="invalid-feedback"></asp:RequiredFieldValidator>
                            </div>
                            <div class="d-grid">
                                <asp:Button ID="submitButton" runat="server" CssClass="btn btn-primary btn-xl" Text="Gönder" OnClick="submitButton_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
        <a
        <!-- İletişim -->
        <hr class="m-0" />

        <!-- Footer  -->

        <footer class="bg-light py-5">
            <div class="container px-4 px-lg-5">
                <div class="small text-center text-muted">Copyright © 2024 - <span class="text-primary">Abdulkadir ERBAŞ</span></div>
            </div>

            <div class="container px-4 px-lg-5 pt-2">
                <div class="small text-center text-muted">Bu proje <span class="text-primary">Web Tasarım ve Programlama </span>Kapsamında Yapıldı</div>
            </div>
        </footer>
        <!-- Footer  -->

    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="Dosyalar/js/scripts.js"></script>
</body>
</html>

