using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminBeceriEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string beceri = TxtBeceri.Text;
            string seviye = DdlSeviye.SelectedValue;

            DataSet1TableAdapters.TBLBECERILERTableAdapter dt = new DataSet1TableAdapters.TBLBECERILERTableAdapter();   
            dt.BeceriEkle(beceri, seviye);

            // Response.Redirect("AdminBeceriler.Aspx");
            string targetPage = "AdminPaneli/AdminBeceriler.aspx";

            // QueryString parametrelerini kullanarak verileri gönder
            Response.Redirect($"../LoadingScreen.aspx?targetPage={targetPage}");


        }
    }
}