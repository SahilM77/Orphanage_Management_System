<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donations.aspx.cs" Inherits="Custome_Projects.Donations" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Donations Form</title>
    <style>
        /* General Body Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden; /* Allow scrolling */
        }

        /* Form Container */
        .form-container {
            background: #fff;
            padding: 25px 30px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 1.0);
            max-width: 600px;
            width: 100%;
            transition: transform 0.3s ease-in-out;
            position: relative;
            max-height: calc(100vh - 50px); /* Ensure it doesn't exceed viewport height */
            overflow: auto; /* Allow scrolling within the container */
        }

        .form-container:hover {
            transform: scale(1.01);
        }

        /* Form Heading */
        h2 {
            margin-bottom: 30px;
            color: #333;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }

        /* Form Group Styling */
        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
            font-size: 14px;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            transition: border-color 0.3s ease-in-out;
            margin: 0;
        }

        .form-group input:focus,
        .form-group select:focus,
        .form-group textarea:focus {
            border-color: #66afe9;
            outline: none;
            box-shadow: 0 0 5px rgba(102, 175, 233, 0.5);
        }

        /* Radio Buttons */
        .radio-list {
            display: flex;
            gap: 15px;
            align-items: center;
        }

        /* Checkbox List */
        .checkbox-list {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        /* Error Messages */
        .error {
            color: #e74c3c;
            font-size: 12px;
            margin-top: 5px;
        }

        .form-group input.error,
        .form-group select.error,
        .form-group textarea.error {
            border-color: #e74c3c;
        }

        /* Buttons Container */
        .form-buttons {
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        /* Buttons */
        .form-group button {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 12px 20px;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }
        .form-group #imgQRCode{
            margin-left:125px;
        }
        .form-buttons #btnSubmit{
              height:40px;
width:110px;
font-weight:600;
margin-right:50px;
margin-top:25px;
  border-radius: 5px;
  background-color: green;
  background-image: -moz-linear-gradient(top, #fff 0%, gray 100%); 
  background-image: -webkit-linear-gradient(top, #fff 0%,gray 100%); 
  background-image: linear-gradient(to bottom, #fff 0%,gray 100%); 
  background-size: 300px;
  background-repeat: no-repeat;
  background-position: 0%;
  -webkit-transition: background 300ms ease-in-out;
  transition: background 300ms ease-in-out;
  transition:color 300ms ease-in-out;
}
        .form-buttons #btnSubmit:hover{
              box-shadow: 5px 5px black;
background-position: -200%;
transition: background 1000ms ease-in-out;
color:white;
        }
        .form-buttons #btnReset{
            width:110px;
font-weight:600;
margin-right:50px;
margin-top:25px;
  border-radius: 5px;
  background-color: red;
  background-image: -moz-linear-gradient(top, #fff 0%, gray 100%); 
  background-image: -webkit-linear-gradient(top, #fff 0%,gray 100%); 
  background-image: linear-gradient(to bottom, #fff 0%,gray 100%); 
  background-size: 300px;
  background-repeat: no-repeat;
  background-position: 0%;
  -webkit-transition: background 300ms ease-in-out;
  transition: background 300ms ease-in-out;
  transition:color 300ms ease-in-out;
        }
        .form-buttons #btnReset:hover{
                          box-shadow: 5px 5px black;
background-position: -200%;
transition: background 1000ms ease-in-out;
color:white;
        }
        .form-group button:hover {
            background-color: #218838;
        }

        .form-group button:active {
            background-color: #1e7e34;
        }

        /* Reset Button */
        .form-group button[type="reset"] {
            background-color: #dc3545;
        }

        .form-group button[type="reset"]:hover {
            background-color: #c82333;
        }

        .form-group button[type="reset"]:active {
            background-color: #bd2130;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Donations Form</h2>

            <div class="form-group">
                <asp:Label ID="lblFirstName" runat="server" Text="First Name: " />
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator 
                    ID="rfvFirstName" 
                    runat="server" 
                    ControlToValidate="txtFirstName" 
                    ErrorMessage="First Name is required" 
                    CssClass="error" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblLastName" runat="server" Text="Last Name: " />
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator 
                    ID="rfvLastName" 
                    runat="server" 
                    ControlToValidate="txtLastName" 
                    ErrorMessage="Last Name is required" 
                    CssClass="error" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email: " />
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator 
                    ID="rfvEmail" 
                    runat="server" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Email is required" 
                    CssClass="error" />
                <asp:RegularExpressionValidator 
                    ID="revEmail" 
                    runat="server" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Invalid email format" 
                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" 
                    CssClass="error" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password: " />
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator 
                    ID="rfvPassword" 
                    runat="server" 
                    ControlToValidate="txtPassword" 
                    ErrorMessage="Password is required" 
                    CssClass="error" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblGender" runat="server" Text="Gender: " />
                <div class="radio-list">
                    <asp:RadioButton ID="rbMale" runat="server" GroupName="Gender" Text="Male" />
                    <asp:RadioButton ID="rbFemale" runat="server" GroupName="Gender" Text="Female" />
                    <asp:RadioButton ID="rbOther" runat="server" GroupName="Gender" Text="Other" />
                </div>
                <asp:CustomValidator 
                    ID="cvGender" 
                    runat="server" 
                    ErrorMessage="Please select a gender" 
                    CssClass="error" 
                    ClientValidationFunction="ValidateGender" 
                    ValidateEmptyText="True" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblAge" runat="server" Text="Age: " />
                <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator 
                    ID="rfvAge" 
                    runat="server" 
                    ControlToValidate="txtAge" 
                    ErrorMessage="Age is required" 
                    CssClass="error" />
                <asp:RangeValidator 
                    ID="rvAge" 
                    runat="server" 
                    ControlToValidate="txtAge" 
                    ErrorMessage="Age must be between 1 and 120" 
                    MinimumValue="1" 
                    MaximumValue="120" 
                    Type="Integer" 
                    CssClass="error" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblPreferences" runat="server" Text="Preferences: " />
                <div class="checkbox-list">
                    <asp:CheckBox ID="cbAcrylic" runat="server" Text="UPI" />
                    <asp:CheckBox ID="cbOil" runat="server" Text="Debit Card" />
                    <asp:CheckBox ID="cbWaterColor" runat="server" Text="Check Pay" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblOccupation" runat="server" Text="Occupation: " />
                <asp:DropDownList ID="ddlOccupation" runat="server" CssClass="form-control">
                    <asp:ListItem Value="">Select an occupation</asp:ListItem>
                    <asp:ListItem Value="Student">Student</asp:ListItem>
                    <asp:ListItem Value="Professional">Business Man</asp:ListItem>
                    <asp:ListItem Value="Retired">Artist</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <asp:Label ID="lblBio" runat="server" Text="Bio: " />
                <asp:TextBox ID="txtBio" runat="server" TextMode="MultiLine" CssClass="form-control" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblDonationAmount" runat="server" Text="Donation Amount: " />
                <asp:TextBox ID="txtDonationAmount" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator 
                    ID="rfvDonationAmount" 
                    runat="server" 
                    ControlToValidate="txtDonationAmount" 
                    ErrorMessage="Donation Amount is required" 
                    CssClass="error" />
                <asp:RangeValidator 
                    ID="rvDonationAmount" 
                    runat="server" 
                    ControlToValidate="txtDonationAmount" 
                    ErrorMessage="Donation Amount must be a  number" 
                    MinimumValue="0.01" 
                    MaximumValue="10000"  
                    Type="Double" 
                    CssClass="error" />
            </div>
            
            <!-- Add the missing TextBox for QR Code generation -->
            <div class="form-group">
                <asp:Label ID="lblInput" runat="server" Text="Input for QR Code: " />
                <asp:TextBox ID="txtInput" runat="server" CssClass="form-control" />
            </div>
            
            <div class="form-group">
                <asp:Button ID="btnGenerate" runat="server" Text="Generate QR Code" OnClick="btnGenerate_Click" />
            </div>
            
            <div class="form-group">
                <asp:Image ID="imgQRCode" runat="server" />
            </div>

            <div class="form-buttons">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="form-control" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CssClass="form-control" />
            </div>
        </div>
    </form>
    
    <script type="text/javascript">
        function ValidateGender(sender, args) {
            var genderOptions = document.querySelectorAll('[name="Gender"]');
            var isSelected = Array.from(genderOptions).some(option => option.checked);
            args.IsValid = isSelected;
        }
    </script>
</body>
</html>
