using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class AdminIletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeater();
            }
            /*
            foreach (RepeaterItem item in Repeater1.Items)
            {
                Button btnSil = (Button)item.FindControl("BtnSil");
                ClientScript.RegisterForEventValidation(btnSil.UniqueID);
            }*/
        }


        protected void BtnSil_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLMESAJLARTableAdapter dt = new DataSet1TableAdapters.TBLMESAJLARTableAdapter();

            Button btn = (Button)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;
            Label lblID = (Label)item.FindControl("TxtID");
            int id = int.Parse(lblID.Text);
            dt.MesajSil(id);

            // Başarılı bir silme mesajı göstermek için ek işlemler yapabilirsiniz
            // Örneğin, başarılı bir silme mesajı göstermek için:
            // ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Referans başarıyla silindi.');", true);

            BindRepeater();
        }

        private void BindRepeater()
        {
            DataSet1TableAdapters.TBLMESAJLARTableAdapter dt = new DataSet1TableAdapters.TBLMESAJLARTableAdapter();
            Repeater1.DataSource = dt.GetMesajlar();
            Repeater1.DataBind();
        }


    }
}