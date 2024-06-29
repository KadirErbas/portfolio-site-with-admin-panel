using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminReferansEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLREFERANSLARTableAdapter dt = new DataSet1TableAdapters.TBLREFERANSLARTableAdapter();
            dt.ReferansEkle(TxtAdı.Text, TxtSoyadı.Text, TxtMaili.Text, TxtKurumu.Text, TxtUnvani.Text);
            // Response.Redirect("AdminReferanslar.Aspx");

            string targetPage = "AdminPaneli/AdminReferanslar.aspx";

            // QueryString parametrelerini kullanarak verileri gönder
            Response.Redirect($"../LoadingScreen.aspx?targetPage={targetPage}");
        }
    }
}