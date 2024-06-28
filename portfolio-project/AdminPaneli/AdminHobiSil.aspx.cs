using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminHobiSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            DataSet1TableAdapters.TBLHOBILERTableAdapter dt = new DataSet1TableAdapters.TBLHOBILERTableAdapter();
            dt.HobiSil(Convert.ToInt16(id));
            // Response.Redirect("AdminHobiler.Aspx");

            string targetPage = "AdminPaneli/AdminHobiler.aspx";

            // QueryString parametrelerini kullanarak verileri gönder
            Response.Redirect($"../LoadingScreen.aspx?targetPage={targetPage}");
        }
    }
}