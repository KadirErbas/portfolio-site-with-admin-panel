using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminReferanslar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeater();
            }
        }

        protected void BtnSil_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLREFERANSLARTableAdapter dt = new DataSet1TableAdapters.TBLREFERANSLARTableAdapter();

            Button btn = (Button)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;
            Label lblID = (Label)item.FindControl("TxtID");
            int id = int.Parse(lblID.Text);
            dt.ReferansSil(Convert.ToInt16(id));

            // Başarılı bir silme mesajı göstermek için ek işlemler yapabilirsiniz
            // Örneğin, başarılı bir silme mesajı göstermek için:
            // ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Referans başarıyla silindi.');", true);

            BindRepeater();



        }

        private void BindRepeater()
        {
            DataSet1TableAdapters.TBLREFERANSLARTableAdapter dt = new DataSet1TableAdapters.TBLREFERANSLARTableAdapter();
            Repeater1.DataSource = dt.GetReferanslar();
            Repeater1.DataBind();
        }
    }
}