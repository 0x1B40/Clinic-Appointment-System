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
    public partial class WebForm5 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            Calendar1.Visible = false;
            Calendar2.Visible = false;
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;


            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
           
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!Calendar1.Visible)
                Calendar1.Visible = true;
            else
                Calendar1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!Calendar2.Visible)
                Calendar2.Visible = true;
            else
                Calendar2.Visible = false;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
           
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");


            
            string sql4 = "select * from activity where task=@taskdone AND location=@loc AND date BETWEEN @before AND @after";
            TextBox2.Text = Calendar2.SelectedDate.ToString("yyyy-M-d");

            TextBox1.Text = Calendar1.SelectedDate.ToString("yyyy-M-d");


          
            SqlCommand cmd = new SqlCommand(sql4, con);
           
            cmd.Parameters.AddWithValue("@taskdone", DropDownList2.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@loc", DropDownList3.SelectedValue.ToString());
         

            cmd.Parameters.AddWithValue("@before", TextBox1.Text);
           
        
            cmd.Parameters.AddWithValue("@after", TextBox2.Text);
           
            
            
  
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["email"] = "";
            Response.Redirect("WebForm1.aspx");
        }
    }
}