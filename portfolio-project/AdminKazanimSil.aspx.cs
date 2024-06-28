using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminKazanimSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            DataSet1TableAdapters.TBLKAZANIMLARTableAdapter dt = new DataSet1TableAdapters.TBLKAZANIMLARTableAdapter();
            dt.KazanimSil(Convert.ToInt16(id));
            // Response.Redirect("AdminKazanimlar.Aspx");

            string targetPage = "AdminKazanimlar.aspx";

            // QueryString parametrelerini kullanarak verileri gönder
            Response.Redirect($"LoadingScreen.aspx?targetPage={targetPage}");
        }
    }
}