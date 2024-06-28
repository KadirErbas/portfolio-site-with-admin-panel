using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace portfolio_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLHAKKIMDATableAdapter dt = new DataSet1TableAdapters.TBLHAKKIMDATableAdapter();
            Repeater1.DataSource = dt.GetHakkimda();
            Repeater1.DataBind();
            Repeater8.DataSource = dt.GetHakkimda();
            Repeater8.DataBind();

            DataSet1TableAdapters.TBLDENEYIMTableAdapter dt2 = new DataSet1TableAdapters.TBLDENEYIMTableAdapter();
            Repeater2.DataSource = dt2.GetDeneyimler();
            Repeater2.DataBind();


            DataSet1TableAdapters.TBLEGITIMTableAdapter dt3 = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            Repeater3.DataSource = dt3.GetEgitimler();
            Repeater3.DataBind();

            DataSet1TableAdapters.TBLBECERILERTableAdapter dt4 = new DataSet1TableAdapters.TBLBECERILERTableAdapter();
            Repeater4.DataSource = dt4.GetBeceriler();
            Repeater4.DataBind();

            DataSet1TableAdapters.TBLKAZANIMLARTableAdapter dt5 = new DataSet1TableAdapters.TBLKAZANIMLARTableAdapter();
            Repeater5.DataSource = dt5.GetKazanimlar();
            Repeater5.DataBind();

            DataSet1TableAdapters.TBLHOBILERTableAdapter dt6 = new DataSet1TableAdapters.TBLHOBILERTableAdapter();
            Repeater6.DataSource = dt6.GetHobiler();
            Repeater6.DataBind();

            DataSet1TableAdapters.TBLREFERANSLARTableAdapter dt7 = new DataSet1TableAdapters.TBLREFERANSLARTableAdapter();
            Repeater7.DataSource = dt7.GetReferanslar();
            Repeater7.DataBind();




        }
        protected string GetProgressBarStyle(Object seviye)
        {
            Console.WriteLine(seviye);


            if (seviye != null)
            {
                string uzmanlik = seviye.ToString().Trim().ToUpper();
                
                // int level = Convert.ToInt32(seviye);
                Console.WriteLine(uzmanlik);
                // Seviyeye göre ilerleme çubuğu genişliğini belirle
                switch (uzmanlik)
                {
                    case "BAŞLANGIÇ":                      
                        return "12.5%";                   
                    case "TEMEL":
                        return "25%";
                    case "ORTA":
                        return "50%";
                    case "İYİ":
                        return "75%";
                    case "UZMAN":
                        return "100%";
                    default:
                        return "50%";
                }
            }
            else
            {
                return "50%";
            }
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            string ipAddress = Request.UserHostAddress;
            DateTime currentTime = DateTime.Now;

            // Veritabanı adaptörü oluştur
            DataSet1TableAdapters.TBLMESAJLARTableAdapter dt = new DataSet1TableAdapters.TBLMESAJLARTableAdapter();

            // Aynı IP adresinden en son mesajın zamanını kontrol et
            var lastMessage = dt.GetMesajByID(ipAddress);
            if (lastMessage != null && lastMessage.Rows.Count > 0)
            {
                DateTime lastSentTime = Convert.ToDateTime(lastMessage[0]["MESAJTARIHI"]);
                TimeSpan timeSinceLastMessage = currentTime - lastSentTime;

                if (timeSinceLastMessage.TotalMinutes < 60) // 60 dakikadan daha kısa süre önce mesaj gönderilmişse
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Aynı IP adresinden 1 saat içinde yalnızca bir mesaj gönderebilirsiniz.');", true);
                    return;
                }
            }

            try
            {
                // Mesajı ekle
                dt.MesajEkle(TxtKullaniciAdi.Text, TxtKullaniciMail.Text, TxtKullaniciMesaji.Text, currentTime, ipAddress);

                // Başarılı gönderim mesajı
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mesajınız başarıyla gönderildi.');", true);

                // Formu temizleme
                TxtKullaniciAdi.Text = string.Empty;
                TxtKullaniciMail.Text = string.Empty;
                TxtKullaniciMesaji.Text = string.Empty;
            }
            catch (Exception ex)
            {
                // Hata mesajı
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Mesaj gönderilirken bir hata oluştu: {ex.Message}');", true);
            }
        }
    }


}

