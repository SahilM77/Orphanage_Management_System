<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Custome_Projects.AdminPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
      <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            display: flex;
            max-width: 1200px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            flex-direction: column;
        }

        .sidebar {
            width: 200px;
            background-color: #007bff;
            color: white;
            padding: 15px;
            height: 100vh;
            position: fixed;
            overflow-y: auto;
            transition: width 0.3s;
        }

        .sidebar a {
            color: white;
            text-decoration: none;
            padding: 10px;
            display: flex;
            align-items: center;
            border-radius: 4px;
            transition: background-color 0.3s;
            margin-bottom: 10px;
        }

        .sidebar a:hover {
            background-color: #0056b3;
        }

        .sidebar img {
            width: 20px;
            height: 20px;
            margin-right: 10px;
        }

        .main-content {
            margin-left: 220px;
            padding: 20px;
            flex: 1;
        }

        .card-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .card {
            flex: 1; /* Each card takes equal space */
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: 0 10px; /* Spacing between cards */
            text-align: center; /* Center content */
            transition: transform 0.3s ease, box-shadow 0.3s ease; /* Animation on hover */
        }

        .card:hover {
            transform: translateY(-10px); /* Raise the card */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); /* Enhanced shadow */
        }

        .user-card { background-color: #e7f3fe; }
        .contact-card { background-color: #ffe6e6; }
        .donation-card { background-color: #d4edda; }
        .volunteer-card { background-color: #fff3cd; }
        .adoption-card { background-color: #f8d7da; }

        .grid-container { margin-bottom: 40px; }
        .grid-title { font-size: 1.5em; margin-bottom: 10px; text-align: center; color: #333; }

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }

        tr:hover {
            background-color: #f1f1f1; /* Highlight row on hover */
        }

        .card img {
            width: 50px; /* Adjust as needed */
            height: 50px; /* Adjust as needed */
            margin-bottom: 15px; /* Spacing between image and text */
        }
         .delete-button {
        background-color: #dc3545; /* Bootstrap danger color */
        color: white;
        border: none;
        padding: 5px 10px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .delete-button:hover {
        background-color: #c82333; /* Darker red on hover */
    }
    .action-button {
        margin-right: 5px;
        padding: 5px 10px;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        font-weight: bold;
    }

    .accept-button {
        background-color: #28a745; /* Green */
        color: white;
    }

    .reject-button {
        background-color: #dc3545; /* Red */
        color: white;
    }

    .accept-button:hover {
        background-color: #218838; /* Darker green */
    }

    .reject-button:hover {
        background-color: #c82333; /* Darker red */
    }

    .disabled-button {
        background-color: #d3d3d3; /* Light grey */
        color: #a9a9a9; /* Dark grey */
        cursor: not-allowed;
    }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
            <h2>Navigation</h2>
            <a href="javascript:void(0);" onclick="showSection('contactSubmissions')">
                <img src="images/phone (2).png" alt="Contact" /> Contact Form Submissions
            </a>
            <a href="javascript:void(0);" onclick="showSection('users')">
                <img src="images/profileUser.png" alt="Users" /> Users
            </a>
            <a href="javascript:void(0);" onclick="showSection('donors')">
                <img src="images/donations (2).png" alt="Donors" /> Donors
            </a>
            <a href="javascript:void(0);" onclick="showSection('volunteers')">
                <img src="images/volunteer.png" alt="Volunteers" /> Volunteer Registrations
            </a>
            <a href="javascript:void(0);" onclick="showSection('adoptionApplications')">
                <img src="images/adoption.png" alt="Adoption" /> Adoption Applications
            </a>
            <a class="logout-link" href="Default.aspx" onclick="logoutUser()">
    <img src="images/logoutremove.png" alt="Logout" /> Logout
</a>
        </div>

        <div class="main-content">
            <div class="container">
                <h1>Admin Dashboard</h1>
                
                <div class="card-container">
                    <div class="card user-card">
                        <img src="images/profileUser.png" alt="User Overview" />
                        <h3>User Overview</h3>
                        <p>Total Users: 150</p>
                        <p>Active Users: 120</p>
                        <p>New Users This Month: 15</p>
                    </div>
                    <div class="card contact-card">
                        <img src="images/phone (2).png" alt="Contact Overview" />
                        <h3>Contact Overview</h3>
                        <p>Total Contacts: 75</p>
                        <p>Pending Responses: 10</p>
                        <p>Resolved Issues: 65</p>
                    </div>
                    <div class="card donation-card">
                        <img src="images/donations (2).png" alt="Donation Overview" />
                        <h3>Donation Overview</h3>
                        <p>Total Donations: 5000lakh</p>
                        <p>Donors This Month: 25</p>
                        <p>Average Donation: 200000</p>
                    </div>
                    <div class="card volunteer-card">
                        <img src="images/volunteer.png" alt="Volunteering Overview" />
                        <h3>Volunteering Overview</h3>
                        <p>Total Volunteers: 50</p>
                        <p>Active Volunteers: 40</p>
                        <p>Volunteer Events This Month: 5</p>
                    </div>
                    <div class="card adoption-card">
                        <img src="images/adoption.png" alt="Adoption Overview" />
                        <h3>Adoption Overview</h3>
                        <p>Total Applications: 30</p>
                        <p>Approved: 20</p>
                        <p>Pending: 10</p>
                    </div>
                </div>


                <div id="contactSubmissions" class="grid-container" style="display: none;">
                    <div class="grid-title">Contact Form Submissions</div>
                    <asp:GridView ID="GridViewContactSubmissions" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="Message" HeaderText="Message" />
                            <asp:BoundField DataField="SubmissionDate" HeaderText="Submission Date" />
                               <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:Button ID="btnAccept" runat="server" Text="Accept" CommandName="Accept" CssClass="action-button accept-button" 
                        OnClientClick="return handleButtonClick(this, 'Accepted');" />
                    <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="Reject" CssClass="action-button reject-button" 
                        OnClientClick="return handleButtonClick(this, 'Rejected');" />
                </ItemTemplate>
            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>

                <div id="users" class="grid-container" style="display: none;">
                    <div class="grid-title">Users</div>
                    <asp:GridView ID="GridViewUsers" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="UserId" HeaderText="User ID" />
                            <asp:BoundField DataField="Username" HeaderText="Username" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" />
                                            <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:Button ID="btnAccept" runat="server" Text="Accept" CommandName="Accept" CssClass="action-button accept-button" 
                        OnClientClick="return handleButtonClick(this, 'Accepted');" />
                    <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="Reject" CssClass="action-button reject-button" 
                        OnClientClick="return handleButtonClick(this, 'Rejected');" />
                </ItemTemplate>
            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>

                <div id="donors" class="grid-container" style="display: none;">
                    <div class="grid-title">Donors</div>
                    <asp:GridView ID="GridViewDonors" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="DonorID" HeaderText="Donor ID" />
                            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" />
                            <asp:BoundField DataField="Occupation" HeaderText="Occupation" />
                            <asp:BoundField DataField="Bio" HeaderText="Bio" />
                            <asp:BoundField DataField="DonationAmount" HeaderText="DonationAmount" />
                                             <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:Button ID="btnAccept" runat="server" Text="Accept" CommandName="Accept" CssClass="action-button accept-button" 
                        OnClientClick="return handleButtonClick(this, 'Accepted');" />
                    <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="Reject" CssClass="action-button reject-button" 
                        OnClientClick="return handleButtonClick(this, 'Rejected');" />
                </ItemTemplate>
            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>

                <div id="volunteers" class="grid-container" style="display: none;">
                    <div class="grid-title">Volunteer Registrations</div>
                    <asp:GridView ID="GridViewVolunteers" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="VolunteerID" HeaderText="Volunteer ID" />
                            <asp:BoundField DataField="Username" HeaderText="Username" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="Age" HeaderText="Age" />
                            <asp:BoundField DataField="Profession" HeaderText="Profession" />
                            <asp:BoundField DataField="Address" HeaderText="Address" />
                            <asp:BoundField DataField="Experience" HeaderText="Experience" />
                            <asp:BoundField DataField="RegistrationDate" HeaderText="RegistrationDate" />
                                                     <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:Button ID="btnAccept" runat="server" Text="Accept" CommandName="Accept" CssClass="action-button accept-button" 
                        OnClientClick="return handleButtonClick(this, 'Accepted');" />
                    <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="Reject" CssClass="action-button reject-button" 
                        OnClientClick="return handleButtonClick(this, 'Rejected');" />
                </ItemTemplate>
            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>

                <div id="adoptionApplications" class="grid-container" style="display: none;">
                    <div class="grid-title">Adoption Applications</div>
                    <asp:GridView ID="GridViewAdoptionApplications" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Application ID" />
                            <asp:BoundField DataField="Username" HeaderText="Username" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" />
                            <asp:BoundField DataField="Age" HeaderText="Age" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" />
                            <asp:BoundField DataField="Married" HeaderText="Married" />
                            <asp:BoundField DataField="AnnualIncome" HeaderText="AnnualIncome" />
                            <asp:BoundField DataField="Profession" HeaderText="Profession" />
                            <asp:BoundField DataField="Reason" HeaderText="Reason" />
                                                                        <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:Button ID="btnAccept" runat="server" Text="Accept" CommandName="Accept" CssClass="action-button accept-button" 
                        OnClientClick="return handleButtonClick(this, 'Accepted');" />
                    <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="Reject" CssClass="action-button reject-button" 
                        OnClientClick="return handleButtonClick(this, 'Rejected');" />
                </ItemTemplate>
            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>

    <script>
        function showSection(sectionId) {
            const sections = ['contactSubmissions', 'users', 'donors', 'volunteers', 'adoptionApplications'];
            sections.forEach(section => {
                document.getElementById(section).style.display = 'none';
            });
            document.getElementById(sectionId).style.display = 'block';
        }

        function handleButtonClick(button, action) {
            // Show confirmation messages that we use
            alert(action + "!");

            // Get the closest row 
            const row = button.closest('tr');

            // Disable the other button as per custome
            const otherButton = action === 'Accepted' ? row.querySelector('.reject-button') : row.querySelector('.accept-button');

            if (otherButton) {
                otherButton.disabled = true;
                otherButton.classList.add('disabled-button');             }

            
            return false; 
        }
    </script>
</body>
</html>

