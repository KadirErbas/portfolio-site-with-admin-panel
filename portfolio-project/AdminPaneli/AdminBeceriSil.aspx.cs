using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminBeceriSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            DataSet1TableAdapters.TBLBECERILERTableAdapter dt = new DataSet1TableAdapters.TBLBECERILERTableAdapter();
            dt.YetenekSil(Convert.ToInt16(id));
            Response.Redirect("AdminBeceriler.Aspx");
        }
    }
}