using System;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Add any page initialization code here
    }

    protected void DonateNow_Click(object sender, EventArgs e)
    {
        Response.Redirect("Donations.aspx");
    }

    protected void Volunteer_Click(object sender, EventArgs e)
    {
        Response.Redirect("Volunteering.aspx");
    }

    protected void Sponsor_Click(object sender, EventArgs e)
    {
        Response.Redirect("Sponsor.aspx");
    }
    public partial class CarouselExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page initialization or other server-side logic can go here
        }
    }
}
