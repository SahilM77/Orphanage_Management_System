using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Custome_Projects
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any initialization code can go here if needed
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            // Retrieve form data
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string message = txtMessage.Text.Trim();

            if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(message))
            {
                try
                {
                    // Get the connection string from Web.config
                    string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;

                    // Establish a connection to the database
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();

                        // SQL command to insert the data into the ContactFormSubmissions table
                        string query = "INSERT INTO [dbo].[ContactFormSubmissions] (Name, Email, Message) VALUES (@Name, @Email, @Message)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            // Add parameters to the command
                            cmd.Parameters.AddWithValue("@Name", name);
                            cmd.Parameters.AddWithValue("@Email", email);
                            cmd.Parameters.AddWithValue("@Message", message);

                            // Execute the command
                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Clear the form fields after successful submission
                    txtName.Text = string.Empty;
                    txtEmail.Text = string.Empty;
                    txtMessage.Text = string.Empty;

                    // Provide feedback to the user
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thank you for contacting us!');", true);
                }
                catch (Exception ex)
                {
                    // Display an error message
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('An error occurred. Please try again later.');", true);
                }
            }
            else
            {
                // Provide feedback if fields are empty
                lblMessage.Text = "Please fill in all fields.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}