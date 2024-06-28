using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminDeneyimSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            DataSet1TableAdapters.TBLDENEYIMTableAdapter dt = new DataSet1TableAdapters.TBLDENEYIMTableAdapter();
            dt.DeneyimSil(Convert.ToInt16(id));

            // Response.Redirect("AdminDeneyimler.Aspx");

            string targetPage = "AdminPaneli/AdminDeneyimler.aspx";

            // QueryString parametrelerini kullanarak verileri gönder
            Response.Redirect($"../LoadingScreen.aspx?targetPage={targetPage}");

        }
    }
}