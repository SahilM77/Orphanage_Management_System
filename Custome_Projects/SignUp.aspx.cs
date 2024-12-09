using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace Custome_Projects
{
    public partial class SignUp : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string email = txtEmail.Text.Trim();
            string mobile = txtMobile.Text.Trim();
            string gender = ddlGender.SelectedValue;
            string password = txtPassword.Text.Trim();

            // Input validation can be done here (e.g., check if fields are empty, email format, etc.)

            if (IsValidInput(username, email, mobile, password))
            {
                try
                {
                    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString))
                    {
                        conn.Open();
                        string query = "INSERT INTO Users (Username, Email, Mobile, Gender, Password) VALUES (@Username, @Email, @Mobile, @Gender, @Password)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Username", username);
                            cmd.Parameters.AddWithValue("@Email", email);
                            cmd.Parameters.AddWithValue("@Mobile", mobile);
                            cmd.Parameters.AddWithValue("@Gender", gender);
                            cmd.Parameters.AddWithValue("@Password", HashPassword(password)); // Consider hashing the password

                            int result = cmd.ExecuteNonQuery();
                            if (result > 0)
                            {
                                // Redirect or show success message
                                Response.Redirect("Login.aspx");
                            }
                            else
                            {
                                lblError.Text = "An error occurred while creating your account.";
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblError.Text = "An error occurred: " + ex.Message;
                }
            }
            else
            {
                lblError.Text = "Please fill in all required fields correctly.";
            }
        }

        private bool IsValidInput(string username, string email, string mobile, string password)
        {
            return !string.IsNullOrEmpty(username) &&
                   !string.IsNullOrEmpty(email) &&
                   !string.IsNullOrEmpty(mobile) &&
                   !string.IsNullOrEmpty(password) &&
                   email.Contains("@"); // Add more validation as needed
        }

        private string HashPassword(string password)
        {
            // Implement a proper hashing mechanism for the password (e.g., using BCrypt, SHA256, etc.)
            return password; // Placeholder, do not store passwords in plain text
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx"); // Ensure this points to your actual login page
        }

    }
}
