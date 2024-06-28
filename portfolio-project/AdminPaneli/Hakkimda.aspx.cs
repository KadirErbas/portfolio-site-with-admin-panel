using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_project
{
    public partial class Hakkimda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false) {
            DataSet1TableAdapters.TBLHAKKIMDATableAdapter dt = new DataSet1TableAdapters.TBLHAKKIMDATableAdapter();

            TxtAd.Text = dt.GetHakkimda()[0].AD;
            TxtSoyad.Text = dt.GetHakkimda()[0].SOYAD;
            TxtAdres.Text = dt.GetHakkimda()[0].ADRES;
            TxtTelefon.Text = dt.GetHakkimda()[0].TELEFON;
            TxtMail.Text = dt.GetHakkimda()[0].MAIL;
            TxtKısanot.Text = dt.GetHakkimda()[0].KISANOT;
            // TxtFotograf.Text = dt.GetHakkimda()[0].FOTOGRAF;
            Console.WriteLine(dt.GetHakkimda()[0].AD);
            }


        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {

            

            // uploading files with names like "Web.config".
            string saveDir = @"\Dosyalar\assets\img\";

            // Get the physical file system path for the currently
            // executing application.
            string appPath = Request.PhysicalApplicationPath;

            String savePath = appPath + saveDir +
                Server.HtmlEncode(FileUpload1.FileName);

            if (FileUpload1.HasFile)
            {

                // Get the name of the file to upload.
                string fileName = Server.HtmlEncode(FileUpload1.FileName);

                // Get the extension of the uploaded file.
                string extension = System.IO.Path.GetExtension(fileName);

                // Get the name of the file to upload.
                String fileName2 = FileUpload1.FileName;



                if(extension == ".jpg") {
                    // Append the name of the file to upload to the path.
                    // savePath += fileName;
                    // Call the SaveAs method to save the 
                    // uploaded file to the specified path.
                    // This example does not perform all
                    // the necessary error checking.               
                    // If a file with the same name
                    // already exists in the specified path,  
                    // the uploaded file overwrites it.
                    FileUpload1.SaveAs(savePath);

                    // Notify the user of the name of the file
                    // was saved under.
                    UploadStatusLabel.Text = "Dosyanız " + fileName + " olarak kaydedildi";

                    DataSet1TableAdapters.TBLHAKKIMDATableAdapter dt1 = new DataSet1TableAdapters.TBLHAKKIMDATableAdapter();
                    dt1.HakkimdaGuncelle(TxtAd.Text, TxtSoyad.Text, TxtAdres.Text, TxtMail.Text, TxtTelefon.Text, TxtKısanot.Text, fileName);
                    Response.Redirect("../default.aspx");
                }
            }
            else
            {
                // Notify the user that a file was not uploaded.
                UploadStatusLabel.Text = "Yüklemek için belirtilen formatta dosyanız yok";
            }


            
        }
        
    }
}