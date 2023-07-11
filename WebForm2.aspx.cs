using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;
using System.Configuration;

namespace HCIproject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text !="" && TextBox4.Text !="" && TextBox5.Text !="")
            {
                String sql1 = "Insert into volunteer Values("  + TextBox2.Text + "," + "'" + TextBox1.Text + "'"+"," + "'" + DropDownList1.SelectedValue + "'" + "," + "'" + TextBox3.Text + "'" + "," + "'" + TextBox4.Text + "'" + "," + "'" + TextBox5.Text + "'" + ")";
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand(sql1, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                string str1 = Session["email"].ToString();

                String sql2 = "update users set applied=1 where email=" + "'" +str1 +"'";
                SqlCommand cmd2 = new SqlCommand(sql2, con);
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();
                Response.Redirect("webForm3.aspx");
            }
            else
            {
                Label4.Text = " Invalid field(s)";
               
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["email"] = "";
            Response.Redirect("webForm1.aspx");
        }
    }
    }

