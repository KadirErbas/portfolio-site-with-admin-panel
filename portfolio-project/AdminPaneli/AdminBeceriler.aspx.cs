using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminBeceriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLBECERILERTableAdapter dt = new DataSet1TableAdapters.TBLBECERILERTableAdapter();
            Repeater1.DataSource = dt.GetBeceriler();
            Repeater1.DataBind();

        }
    }
}