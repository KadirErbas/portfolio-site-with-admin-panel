using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminKazanimEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string aciklama = TxtAciklama.Text;
            DataSet1TableAdapters.TBLKAZANIMLARTableAdapter dt = new DataSet1TableAdapters.TBLKAZANIMLARTableAdapter();
            dt.KazanimEkle(aciklama);
            // Response.Redirect("AdminKazanimlar.Aspx");

            string targetPage = "AdminKazanimlar.aspx";

            // QueryString parametrelerini kullanarak verileri gönder
            Response.Redirect($"LoadingScreen.aspx?targetPage={targetPage}");
        }
    }
}