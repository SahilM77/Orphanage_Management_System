using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Custome_Projects
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initial setup, if any
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            // Handle the sign-up button click event.
            string email = EmailTxt.Text.Trim();

            if (!string.IsNullOrEmpty(email))
            {
                try
                {
                    // Get the connection string from Web.config
                    string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;

                    // Establish a connection to the database
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();

                        // Create a SQL command to insert the email into a table (e.g., NewsletterSubscribers)
                        string query = "INSERT INTO [dbo].[NewsletterSubscribers] (Email) VALUES (@Email)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            // Add the email parameter to the command
                            cmd.Parameters.AddWithValue("@Email", email);

                            // Execute the command
                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Provide feedback to the user
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thank you for signing up');", true);

                }
                catch (Exception ex)
                {
                    // Handle any errors that occur during the database operation
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('An error occurred. Please try again later.');", true);
                }
            }
            else
            {
                // Handle case where the email input is empty.
                Response.Write("Please enter a valid email address.");
            }
        }
    }
}
