using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace the_liberary
{
    public partial class login : System.Web.UI.Page
    {

        SqlConnection con=new SqlConnection("server=AHMED-ELBARBARY\\SQLEXPRESS;DataBase=myProject;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<script>alert('welcome');</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter( "select * from users where email='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'", con);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid email or password');</script>");
            }
        }
    }
}