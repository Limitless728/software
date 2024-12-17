using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace the_liberary
{
    public partial class Novels : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("server=AHMED-ELBARBARY\\SQLEXPRESS;DataBase=myProject;Integrated Security=true");


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("SELECT filelocation FROM novels WHERE id = 1", con);
            DataTable dt = new DataTable();
            ad.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                string pdfPath = dt.Rows[0]["filelocation"].ToString();
                con.Close();

                pdfPath = HttpUtility.UrlEncode(pdfPath);

                ClientScript.RegisterStartupScript(this.GetType(), "OpenPDF", "viewnovel('"+pdfPath+"');", true);
            }
            else
            {
                con.Close();
                Response.Write("File not found.");
            }

        }


    }
}