using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminHobiGuncelle : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBLHOBILERTableAdapter dt = new DataSet1TableAdapters.TBLHOBILERTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false) {
                string id = Request.QueryString["id"];
                var hobi = dt.GetHobi(Convert.ToInt16(id))[0];
                TxtID.Text = id;
                TxtHobi.Text = hobi.IsHOBINull() ? "" : hobi.HOBI;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            dt.HobiGuncelle(TxtHobi.Text, Convert.ToInt16(id));
            // Response.Redirect("AdminHobiler.Aspx");
            string targetPage = "AdminHobiler.aspx";

            // QueryString parametrelerini kullanarak verileri gönder
            Response.Redirect($"LoadingScreen.aspx?targetPage={targetPage}");
        }
    }
}