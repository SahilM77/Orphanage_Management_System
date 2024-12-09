using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Custome_Projects
{
    public partial class AdminPage : System.Web.UI.Page
    {

        private string ConnectionString => ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrids();
            }
        }

        private void BindGrids()
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
                BindGrid(con, "SELECT * FROM ContactFormSubmissions", GridViewContactSubmissions);
                BindGrid(con, "SELECT * FROM Users", GridViewUsers);
                BindGrid(con, "SELECT * FROM Donors", GridViewDonors);
                BindGrid(con, "SELECT * FROM VolunteerRegistrations", GridViewVolunteers);
                BindGrid(con, "SELECT * FROM AdoptionApplications", GridViewAdoptionApplications);
            }
        }

        private void BindGrid(SqlConnection con, string query, GridView gridView)
        {
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                gridView.DataSource = dt;
                gridView.DataBind();
            }
        }

        protected void GridViewContactSubmissions_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                try
                {
                    int index = Convert.ToInt32(e.CommandArgument);
                    int id = Convert.ToInt32(GridViewContactSubmissions.DataKeys[index].Value); // Get the ID from the DataKey
                    DeleteRecord("ContactFormSubmissions", "Id", id);
                    BindGrids();
                }
                catch (Exception ex)
                {
                    // Handle the exception
                    Response.Write("<script>alert('Error deleting record: " + ex.Message + "');</script>");
                }
            }
        }

        protected void GridViewUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                DeleteRecord("Users", "UserId", GridViewUsers.DataKeys[index].Value);
                BindGrids();
            }
        }

        protected void GridViewDonors_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                DeleteRecord("Donors", "DonorID", GridViewDonors.DataKeys[index].Value);
                BindGrids();
            }
        }

        protected void GridViewVolunteers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                DeleteRecord("VolunteerRegistrations", "VolunteerID", GridViewVolunteers.DataKeys[index].Value);
                BindGrids();
            }
        }

        protected void GridViewAdoptionApplications_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                DeleteRecord("AdoptionApplications", "Id", GridViewAdoptionApplications.DataKeys[index].Value);
                BindGrids();
            }
        }

        private void DeleteRecord(string tableName, string keyColumn, object keyValue)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand($"DELETE FROM {tableName} WHERE {keyColumn} = @KeyValue", con))
                    {
                        cmd.Parameters.AddWithValue("@KeyValue", keyValue);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions during deletion
                Response.Write("<script>alert('Error deleting record: " + ex.Message + "');</script>");
            }
        }
    }
}