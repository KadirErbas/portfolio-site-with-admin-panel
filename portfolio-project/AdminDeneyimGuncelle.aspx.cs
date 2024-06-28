using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminDeneyimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string id = Request.QueryString["ID"];
            TxtID.Text = id;

            if(Page.IsPostBack == false) {
                DataSet1TableAdapters.TBLDENEYIMTableAdapter dt = new DataSet1TableAdapters.TBLDENEYIMTableAdapter();
                
                var deneyim = dt.GetDeneyim(Convert.ToInt16(id))[0];
                TxtBaslik.Text = deneyim.IsBASLIKNull() ? "" : deneyim.BASLIK;
                TxtAltbaslik.Text = deneyim.IsALTBASLIKNull() ? "" : deneyim.ALTBASLIK;
                TxtAciklama.Text = deneyim.IsACIKLAMANull() ? "" : deneyim.ACIKLAMA;
                TxtTarih.Text = deneyim.IsTARIHNull() ? "" : deneyim.TARIH;

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLDENEYIMTableAdapter dt = new DataSet1TableAdapters.TBLDENEYIMTableAdapter();
            string id = Request.QueryString["ID"];
            dt.DeneyimGuncelle(TxtBaslik.Text,TxtAltbaslik.Text,TxtAciklama.Text,TxtTarih.Text, Convert.ToInt16(id));
            // Response.Redirect("AdminDeneyimler.aspx");

            string targetPage = "AdminDeneyimler.aspx";

            // QueryString parametrelerini kullanarak verileri gönder
            Response.Redirect($"LoadingScreen.aspx?targetPage={targetPage}");
        }
    }
}