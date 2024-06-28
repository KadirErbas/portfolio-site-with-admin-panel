using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminReferansGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            TxtID.Text = id;

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLREFERANSLARTableAdapter dt = new DataSet1TableAdapters.TBLREFERANSLARTableAdapter();

                var referans = dt.GetReferans(Convert.ToInt16(id))[0];
                TxtAdı.Text = referans.IsADINull() ? "" : referans.ADI;
                TxtSoyadı.Text = referans.IsSOYADINull() ? "" : referans.SOYADI;
                TxtMaili.Text = referans.IsMAILINull() ? "" : referans.MAILI;
                TxtKurumu.Text = referans.IsKURUMUNull() ? "" : referans.KURUMU;
                TxtUnvani.Text = referans.IsUNVANINull() ? "" : referans.UNVANI;

            }
        }
    

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            DataSet1TableAdapters.TBLREFERANSLARTableAdapter dt = new DataSet1TableAdapters.TBLREFERANSLARTableAdapter();
            dt.ReferansGuncelle(TxtAdı.Text, TxtSoyadı.Text, TxtMaili.Text, TxtKurumu.Text, TxtUnvani.Text, Convert.ToInt16(id));
            // Response.Redirect("AdminReferanslar.Aspx");

            string targetPage = "AdminPaneli/AdminReferanslar.aspx";

            // QueryString parametrelerini kullanarak verileri gönder
            Response.Redirect($"../LoadingScreen.aspx?targetPage={targetPage}");
        }
    }
}