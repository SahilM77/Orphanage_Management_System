using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Custome_Projects
{
    public partial class Volunteering : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Initialize variables
                string username = Request.Form["username"] ?? string.Empty;
                string email = Request.Form["email"] ?? string.Empty;
                int age = 0; // Default to 0 or another value based on your logic
                string profession = Request.Form["profession"] ?? string.Empty;
                string address = Request.Form["address"] ?? string.Empty;
                string experience = Request.Form["experience"] ?? string.Empty;

                // Safely parse age
                if (!int.TryParse(Request.Form["age"], out age))
                {
                    Response.Write("<script>alert('Invalid age input. Please enter a valid number.');</script>");
                    return; // Exit the method
                }

                // Update this connection string with your actual database details
                string connectionString = @"Server=(localdb)\mssqllocaldb;Database=OrphanageDB;Trusted_Connection=True;"; // Adjust as needed

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO VolunteerRegistrations (Username, Email, Age, Profession, Address, Experience) VALUES (@Username, @Email, @Age, @Profession, @Address, @Experience)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Username", username);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Age", age);
                        command.Parameters.AddWithValue("@Profession", profession);
                        command.Parameters.AddWithValue("@Address", address);
                        command.Parameters.AddWithValue("@Experience", experience);

                        connection.Open();
                        command.ExecuteNonQuery();
                        connection.Close();
                    }
                }

                // Show a success message
                Response.Write("<script>alert('Thank you for volunteering! Your information has been submitted.');</script>");
            }
            catch (SqlException sqlEx)
            {
                Response.Write("<script>alert('Database error: " + sqlEx.Message + "');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }




    }
}