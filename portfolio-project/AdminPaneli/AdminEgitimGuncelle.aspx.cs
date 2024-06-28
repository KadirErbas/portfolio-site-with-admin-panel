using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminEgitimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string id = Request.QueryString["ID"];
            TxtID.Text = id;
            
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();

                var egitim = dt.GetEgitim(Convert.ToInt16(id))[0];
                TxtBaslik.Text = egitim.IsBASLIKNull() ? "" : egitim.BASLIK;
                TxtAltbaslik.Text = egitim.IsALTBASLIKNull() ? "" : egitim.ALTBASLIK;
                TxtAciklama.Text = egitim.IsACIKLAMANull() ? "" : egitim.ACIKLAMA;
                TxtGNOT.Text = egitim.IsGNOTNull() ? "": egitim.GNOT;
                TxtTarih.Text = egitim.IsTARIHNull() ? "": egitim.TARIH;
               
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            string id = Request.QueryString["ID"];
            dt.EgitimGuncelle(TxtBaslik.Text, TxtAltbaslik.Text, TxtAciklama.Text, TxtGNOT.Text, TxtTarih.Text, Convert.ToInt16(id));
            // Response.Redirect("AdminEgitimler.aspx");

            string targetPage = "AdminPaneli/AdminEgitimler.aspx";

            // QueryString parametrelerini kullanarak verileri gönder
            Response.Redirect($"../LoadingScreen.aspx?targetPage={targetPage}");
        }
    }
}