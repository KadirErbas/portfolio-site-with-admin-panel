using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminBeceriGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            TxtID.Text = id;
            
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLBECERILERTableAdapter dt = new DataSet1TableAdapters.TBLBECERILERTableAdapter();

                var beceri = dt.GetBeceri(Convert.ToInt16(id))[0];
                TxtBeceri.Text = beceri.IsBECERINull() ? "" : beceri.BECERI;
                DdlSeviye.Text = beceri.IsSEVIYENull() ? "" : beceri.SEVIYE;

                string seviye = DdlSeviye.SelectedValue;

               


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            string beceri = TxtBeceri.Text;
            string seviye = DdlSeviye.SelectedValue;

            DataSet1TableAdapters.TBLBECERILERTableAdapter dt = new DataSet1TableAdapters.TBLBECERILERTableAdapter();
            dt.BeceriGuncelle(beceri, seviye, Convert.ToInt16(id));

            // Response.Redirect("AdminBeceriler.Aspx");
            // Response.Redirect("AdminBeceriler.Aspx");
            string targetPage = "AdminPaneli/AdminBeceriler.aspx";

            // QueryString parametrelerini kullanarak verileri gönder
            Response.Redirect($"../LoadingScreen.aspx?targetPage={targetPage}");

        }
    }
}