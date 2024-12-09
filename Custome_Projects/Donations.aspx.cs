using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;
using ZXing;

namespace Custome_Projects
{
    public partial class Donations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Your code for Page_Load, if any
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    // Retrieve form values
                    string firstName = txtFirstName.Text.Trim();
                    string lastName = txtLastName.Text.Trim();
                    string email = txtEmail.Text.Trim();
                    string password = txtPassword.Text; // Consider hashing this password before storing
                    string gender = rbMale.Checked ? "Male" : rbFemale.Checked ? "Female" : "Other";
                    string age = txtAge.Text.Trim();
                    string occupation = ddlOccupation.SelectedValue;
                    string bio = txtBio.Text.Trim();
                    string donationAmount = txtDonationAmount.Text.Trim(); // New field
                    string preferences = $"{(cbAcrylic.Checked ? "UPI" : "")}{(cbAcrylic.Checked && (cbOil.Checked || cbWaterColor.Checked) ? ", " : "")}" +
                                         $"{(cbOil.Checked ? "Debit Card" : "")}{(cbOil.Checked && cbWaterColor.Checked ? ", " : "")}" +
                                         $"{(cbWaterColor.Checked ? "Check Pay" : "")}";

                    // Database connection string
                    string connectionString = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;

                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        string query = @"
                            INSERT INTO Donors (FirstName, LastName, Email, Password, Gender, Age, Occupation, Bio, Preferences, DonationAmount)
                            VALUES (@FirstName, @LastName, @Email, @Password, @Gender, @Age, @Occupation, @Bio, @Preferences, @DonationAmount)";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@FirstName", firstName);
                            cmd.Parameters.AddWithValue("@LastName", lastName);
                            cmd.Parameters.AddWithValue("@Email", email);
                            cmd.Parameters.AddWithValue("@Password", HashPassword(password)); // Hash the password here
                            cmd.Parameters.AddWithValue("@Gender", gender);
                            cmd.Parameters.AddWithValue("@Age", age);
                            cmd.Parameters.AddWithValue("@Occupation", occupation);
                            cmd.Parameters.AddWithValue("@Bio", bio);
                            cmd.Parameters.AddWithValue("@Preferences", preferences);
                            cmd.Parameters.AddWithValue("@DonationAmount", decimal.Parse(donationAmount)); // Add the donation amount parameter

                            cmd.ExecuteNonQuery();
                        }
                    }

                    // JavaScript to show alert and redirect
                    string redirectUrl = "Default.aspx?message=success";
                    string script = $@"
                        setTimeout(function() {{
                            alert('Data submitted successfully!');
                            window.location.href = '{redirectUrl}';
                        }}, 100); // Delay added to ensure alert shows before redirect
                    ";
                    ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", script, true);
                }
                catch (Exception ex)
                {
                    // JavaScript alert for error
                    string errorScript = $"alert('An error occurred: {ex.Message}');";
                    ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", errorScript, true);
                }
            }
        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            string inputText = txtInput.Text;

            if (!string.IsNullOrEmpty(inputText))
            {
                // Generate QR Code
                BarcodeWriter barcodeWriter = new BarcodeWriter();
                barcodeWriter.Format = BarcodeFormat.QR_CODE;
                barcodeWriter.Options = new ZXing.Common.EncodingOptions
                {
                    Width = 300,
                    Height = 300
                };

                Bitmap bitmap = barcodeWriter.Write(inputText);

                // Convert Bitmap to MemoryStream
                using (MemoryStream ms = new MemoryStream())
                {
                    bitmap.Save(ms, ImageFormat.Png);
                    byte[] imageBytes = ms.ToArray();

                    // Set the image source
                    string base64String = Convert.ToBase64String(imageBytes);
                    imgQRCode.ImageUrl = "data:image/png;base64," + base64String;
                }
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            // Reset all input fields to their default values

            // Reset TextBoxes
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtAge.Text = string.Empty;
            txtBio.Text = string.Empty;
            txtDonationAmount.Text = string.Empty;
            txtInput.Text = string.Empty; // Make sure this matches the control ID in your .aspx file

            // Reset RadioButtons
            rbMale.Checked = false;
            rbFemale.Checked = false;
            rbOther.Checked = false;

            // Reset CheckBoxes
            cbAcrylic.Checked = false;
            cbOil.Checked = false;
            cbWaterColor.Checked = false;

            // Reset DropDownList
            ddlOccupation.SelectedIndex = -1; // Or set to a default value if applicable

            // Clear any validation error messages
            Page.Validate(); // Ensure all validators are cleared or revalidated

            // Optionally, you can also clear the QR code image
            imgQRCode.ImageUrl = string.Empty;
        }

        private string HashPassword(string password)
        {
            // Implement your password hashing logic here
            return password; // Replace this with actual hashing implementation
        }
    }
}
