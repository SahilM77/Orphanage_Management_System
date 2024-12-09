using System;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace Custome_Projects
{
    public partial class Adoption : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void SubmitApplication(object sender, EventArgs e)
        {
            try
            {
                string username = txtUsername.Value;
                string email = txtEmail.Value;
                string phone = txtPhone.Value;
                int age = int.Parse(txtAge.Value);
                string gender = ddlGender.Value;
                string married = rbMarriedYes.Checked ? "Yes" : "No";
                decimal annualIncome = decimal.Parse(txtIncome.Value);
                string profession = txtProfession.Value;
                string reason = txtReason.Value;

                string filePath = string.Empty;
                if (fuDocument.HasFile)
                {
                    filePath = Path.Combine(Server.MapPath("~/Documents"), fuDocument.FileName);
                    fuDocument.SaveAs(filePath);
                }

                // Insert into database
                string connectionString = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO AdoptionApplications (Username, Email, Phone, Age, Gender, Married, AnnualIncome, Profession, DocumentPath, Reason) " +
                                   "VALUES (@Username, @Email, @Phone, @Age, @Gender, @Married, @AnnualIncome, @Profession, @DocumentPath, @Reason)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Username", username);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Phone", phone);
                        cmd.Parameters.AddWithValue("@Age", age);
                        cmd.Parameters.AddWithValue("@Gender", gender);
                        cmd.Parameters.AddWithValue("@Married", married);
                        cmd.Parameters.AddWithValue("@AnnualIncome", annualIncome);
                        cmd.Parameters.AddWithValue("@Profession", profession);
                        cmd.Parameters.AddWithValue("@DocumentPath", filePath);
                        cmd.Parameters.AddWithValue("@Reason", reason);

                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                // Redirect to the home page after successful submission
                Response.Redirect("~/default.aspx");
            }
            catch (SqlException sqlEx)
            {
                Response.Write("<script>alert('Database error: " + sqlEx.Message + "');</script>");
            }
            catch (FormatException formatEx)
            {
                Response.Write("<script>alert('Input format error: " + formatEx.Message + "');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }
    }
}
