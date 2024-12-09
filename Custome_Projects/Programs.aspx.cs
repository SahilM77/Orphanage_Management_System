using System;
using System.Web.UI;

namespace Custome_Projects
{
    public partial class Programs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // You can add code here that should run on page load
        }

        protected void btnHealthcareDetails_Click(object sender, EventArgs e)
        {
            // Redirect to Healthcare details page or show a message
            Response.Redirect("HealthcareDetails.aspx");
        }

        protected void btnEducationDetails_Click(object sender, EventArgs e)
        {
            // Redirect to Education details page or show a message
            Response.Redirect("EducationDetails.aspx");
        }

        protected void btnRehabilitationDetails_Click(object sender, EventArgs e)
        {
            // Redirect to Rehabilitation details page or show a message
            Response.Redirect("RehabilitationDetails.aspx");
        }
    }
}
