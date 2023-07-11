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
    
    public partial class WebForm1 : System.Web.UI.Page
    {
        

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label4.Text = "";
            Label3.Text = "";
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {


                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
                SqlCommand cmd2 = new SqlCommand("select * from users where Email=@username and Password=@word", con);
                cmd2.Parameters.AddWithValue("@username", TextBox1.Text);
                cmd2.Parameters.AddWithValue("@word", TextBox2.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd2);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Open();
                int i = cmd2.ExecuteNonQuery();
                con.Close();
                Session["email"] = TextBox1.Text;

                if (dt.Rows.Count > 0)
                {
                    Label2.Text = "account already registered";
                }
                else
                {











                    String sql1 = "Insert into users Values(" + "'" + TextBox1.Text + "'" + "," + "'" + TextBox2.Text + "'" + "," + 0 + "," + 0 + "," + 0 + ")";

                    SqlCommand cmd = new SqlCommand(sql1, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label2.Text = "account registered Succesfully.";
                    Label2.ForeColor = System.Drawing.Color.Green;
                }
            }

            else
            {
                if(TextBox1.Text.Equals(""))
                Label4.Text = "Field Required";
                if(TextBox2.Text.Equals(""))
                Label3.Text = "Field Required";
            }

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from users where Email=@username and Password=@word", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@word", TextBox2.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            Session["email"] = TextBox1.Text;

            if (dt.Rows.Count > 0)
            {
                Label2.Text = "Your username and password is CORRECT";
                Label2.ForeColor = System.Drawing.Color.Green;
                foreach(DataRow row in dt.Rows)
                {
                    
                    if (row["admin"].ToString() == "True")
                    {
                        Response.Redirect("webForm5.aspx");
                    }

                    if (row["applied"].ToString() == "False" )
                    {
                       
                        
                        Response.Redirect("webForm2.aspx");
                    }
                    else
                    {
                        if (row["accepted"].ToString() == "False")
                        { 
                            Response.Redirect("webForm3.aspx");
                        }
                        else
                        { 
                            Response.Redirect("webForm4.aspx");
                        }
                    }
                }


            }
            else
            {
                Label2.Text = "no such users with credentials you entered!";
                Label2.ForeColor = System.Drawing.Color.Red;

            }

           

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}