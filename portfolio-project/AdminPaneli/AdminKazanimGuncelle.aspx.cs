using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminKazanimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false) { 
                string id = Request.QueryString["id"];
                DataSet1TableAdapters.TBLKAZANIMLARTableAdapter dt = new DataSet1TableAdapters.TBLKAZANIMLARTableAdapter();
                var kazanim = dt.GetKazanim(Convert.ToInt16(id))[0];
                TxtID.Text = id;
                TxtAciklama.Text = kazanim.IsACIKLAMANull() ? "" : kazanim.ACIKLAMA;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            DataSet1TableAdapters.TBLKAZANIMLARTableAdapter dt = new DataSet1TableAdapters.TBLKAZANIMLARTableAdapter();
            dt.KazanimGuncelle(TxtAciklama.Text, Convert.ToInt16(id));
            // Response.Redirect("AdminKazanimlar.Aspx");

            string targetPage = "AdminPaneli/AdminKazanimlar.aspx";

            // QueryString parametrelerini kullanarak verileri gönder
            Response.Redirect($"../LoadingScreen.aspx?targetPage={targetPage}");
        }
    }
}