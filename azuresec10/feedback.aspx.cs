using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace azuresec10
{
    public partial class feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblMsg.Visible = false;
        }
        protected void Btnsubmit_Click(object sender, EventArgs e)
        {

            LblMsg.Visible = true;
            SqlConnection con = new SqlConnection("Server=Server=tcp:azureservers123.database.windows.net,1433;Initial Catalog=azureDb;Persist Security Info=False;User ID=Admins;Password={your_password};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            try
            {

                SqlCommand cmd = new SqlCommand("insert into FeedBackForm(EmployeeId,Name,Email,Rating) values(@EmployeeId,@Name,@mail,@rating) ", con);
                cmd.Parameters.AddWithValue("@EmployeeId", int.Parse(Txtid.Text));
                cmd.Parameters.AddWithValue("@Name", Txtname.Text);
                cmd.Parameters.AddWithValue("@mail", Txtmail.Text);
                cmd.Parameters.AddWithValue("@rating", int.Parse(Txtrating.Text));
                con.Open();
                cmd.ExecuteNonQuery();
                LblMsg.Text = "Feedback Submitted!!!";


            }
            catch (Exception ex)
            {
                LblMsg.Text += "Error!!!" + ex.Message;
            }
            finally { con.Close(); }
        }
    }
}