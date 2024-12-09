using System;
using System.Data.SqlClient;
using System.Configuration;

namespace Custome_Projects
{
    public partial class update : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int userId = GetUserId(); // Implement this method to get the user ID from session or query string
                LoadUserData(userId);
            }
        }

        private void LoadUserData(int userId)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT Username, Email, Mobile, Gender FROM Users WHERE UserId = @UserId";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@UserId", userId);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    txtUsername.Text = reader["Username"].ToString();
                    txtEmail.Text = reader["Email"].ToString();
                    txtMobile.Text = reader["Mobile"].ToString();
                    ddlGender.SelectedValue = reader["Gender"].ToString();
                }
            }
        }

        

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int userId = GetUserId(); // Same as before
            if (UpdateUserData(userId))
            {
                // Show a success message and redirect to login page
                string script = "alert('User details updated successfully.'); window.location.href='Login.aspx';";
                ClientScript.RegisterStartupScript(this.GetType(), "Success", script, true);
            }
            else
            {
                lblError.Text = "Error updating user details.";
            }
        }

        private bool UpdateUserData(int userId)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "UPDATE Users SET Username = @Username, Email = @Email, Mobile = @Mobile, Gender = @Gender, Password = @Password WHERE UserId = @UserId";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                cmd.Parameters.AddWithValue("@Password", HashPassword(txtPassword.Text)); // Ensure to hash the password
                cmd.Parameters.AddWithValue("@UserId", userId);

                conn.Open();
                int rowsAffected = cmd.ExecuteNonQuery();
                return rowsAffected > 0;
            }
        }


        private string HashPassword(string password)
        {
            // Implement your hashing logic here (e.g., using SHA256 or bcrypt)
            return password; // Replace with actual hashed password
        }

        private int GetUserId()
        {
            // Implement your logic to get the current user's ID (e.g., from session or query string)
            return 1; // Placeholder
        }
    }
}
