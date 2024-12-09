using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Custome_Projects
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Connection string (update with your database details)
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    string query = "SELECT COUNT(*) FROM Users WHERE Username = @Username AND Password = @Password";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Username", username);
                        cmd.Parameters.AddWithValue("@Password", password); 

                        int count = (int)cmd.ExecuteScalar();

                        if (count > 0)
                        {
                            
                            if (username == "admin" && password == "admin123") 
                            {
                                Response.Redirect("AdminPage.aspx");
                            }
                            else
                            {
                                Response.Redirect("default.aspx");
                            }
                        }
                        else
                        {
                            lblMessage.Text = "Invalid username or password.";
                        }
                    }
                }
            }
            catch (SqlException sqlEx)
            {
                
                lblMessage.Text = "Database error: " + sqlEx.Message;
            }
            catch (Exception ex)
            {
                // Log general exceptions (consider using a logging framework)
                lblMessage.Text = "An error occurred: " + ex.Message;
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("update.aspx");
        }
    }
}
