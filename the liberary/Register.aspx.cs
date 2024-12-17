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
    public partial class Register : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("server=AHMED-ELBARBARY\\SQLEXPRESS;DataBase=myProject;Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Please sign up');</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataAdapter ad = new SqlDataAdapter("select * from users where email='"+TextBox3.Text+"'", con);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('This email already exists');</script>");
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into users values('"+TextBox1.Text+"' , '"+TextBox2.Text+"' , '"+TextBox3.Text+"' , '"+TextBox5.Text+"' , '"+TextBox4.Text+"' , '"+RadioButtonList1.Text+"')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('successfully registered');</script>");
            }









            
        }
    }
}