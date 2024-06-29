using System;
using System.Data.SqlClient;
using System.Net;
using System.Web;
using System.Web.UI;

namespace portfolio_project
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-GVHRPI2\SQLEXPRESS;Initial Catalog=BlogWebDB;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                // Cookie mevcutsa değerlerini oku ve giriş bilgilerini doldur
                if (Request.Cookies["KullaniciBilgi"] != null)
                {
                    username.Text = Server.HtmlEncode(Request.Cookies["KullaniciBilgi"]["KullaniciAdi"]);
                    password.Attributes["value"] = Server.HtmlEncode(Request.Cookies["KullaniciBilgi"]["Sifre"]); // Şifre textBox'ı için Attributes kullanıyoruz.

                    // Son giriş zamanını oku
                    if (Request.Cookies["KullaniciSonGirisBilgi"] != null)
                    {
                        string sonGiris = Server.HtmlEncode(Request.Cookies["KullaniciSonGirisBilgi"]["SonGiris"]);
                        lastLogin.Text = "Son giriş: " + sonGiris;
                    }

                    CheckBox1.Checked = true;
                }
            }
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("SELECT * FROM TBLADMIN WHERE KULLANICIADI=@P1 AND SIFRE=@P2", baglanti);
                komut.Parameters.AddWithValue("@P1", username.Text);
                komut.Parameters.AddWithValue("@P2", password.Text);
                SqlDataReader reader = komut.ExecuteReader();

                if (reader.Read())
                {
                    HttpCookie myCookie = new HttpCookie("KullaniciBilgi");

                    if (CheckBox1.Checked)
                    {
                        // "Beni Hatırla" işaretlenmişse çerez oluştur ve giriş bilgilerini sakla
                        myCookie["KullaniciAdi"] = username.Text;
                        myCookie["Sifre"] = password.Text;
                        myCookie.Expires = DateTime.Now.AddDays(30); // Çerez geçerlilik süresini 30 gün olarak ayarla
                        Response.Cookies.Add(myCookie);
                    }
                    else
                    {
                        // "Beni Hatırla" işaretlenmemişse çerezi sil
                        if (Request.Cookies["KullaniciBilgi"] != null)
                        {
                            myCookie.Expires = DateTime.Now.AddDays(-1); // Çerezi geçersiz kıl
                            Response.Cookies.Add(myCookie);
                        }
                    }

                    // Son giriş zamanını güncelle
                    HttpCookie myCookie2 = new HttpCookie("KullaniciSonGirisBilgi");
                    myCookie2["SonGiris"] = DateTime.Now.ToString();
                    myCookie2.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(myCookie2);

                    // Başarılı giriş, yönlendirme
                    // Response.Redirect("Hakkimda.aspx");
                    string targetPage = "AdminPaneli/Hakkimda.aspx";

                    // QueryString parametrelerini kullanarak verileri gönder
                    Response.Redirect($"LoadingScreen.aspx?targetPage={targetPage}");
                }
                else
                {
                    errorMessage.Text = "Kullanıcı adı veya şifre yanlış.";
                    errorMessage.Visible = true;
                }
            }
            catch (Exception ex)
            {
                errorMessage.Text = "Bağlantı hatası: " + ex.Message;
                errorMessage.Visible = true;
            }
            finally
            {
                baglanti.Close();
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            // Bu kısım boş kalabilir, çünkü CheckBox1_CheckedChanged olayına özel bir işlem yapmıyoruz
        }
    }
}
