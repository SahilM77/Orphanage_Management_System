<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adoption.aspx.cs" Inherits="Custome_Projects.Adoption" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adoption Application Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        form {
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="number"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #218838;
        }
        .radio-label {
            margin-right: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Adoption Application Form</h2>
            <label for="txtUsername">Username:</label>
            <input type="text" id="txtUsername" runat="server" required />

            <label for="txtEmail">Email:</label>
            <input type="email" id="txtEmail" runat="server" required />

            <label for="txtPhone">Phone:</label>
            <input type="tel" id="txtPhone" runat="server" required />

            <label for="txtAge">Age:</label>
            <input type="number" id="txtAge" runat="server" required />

            <label for="ddlGender">Gender:</label>
            <select id="ddlGender" runat="server" required>
                <option value="">Select</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>

            <label>Married:</label>
            <label class="radio-label">
                <input type="radio" id="rbMarriedYes" name="married" value="Yes" runat="server" required />Yes
            </label>
            <label class="radio-label">
                <input type="radio" id="rbMarriedNo" name="married" value="No" runat="server" required />No
            </label>

            <label for="txtIncome">Annual Income:</label>
            <input type="number" id="txtIncome" runat="server" required />

            <label for="txtProfession">Profession:</label>
            <input type="text" id="txtProfession" runat="server" required />

            <label for="fuDocument">Upload Non-Criminal Document:</label>
            <asp:FileUpload ID="fuDocument" runat="server" required />

            <label for="txtReason">Reason for Adoption:</label>
            <textarea id="txtReason" runat="server" required></textarea>

            <button type="submit" runat="server" onserverclick="SubmitApplication">Submit</button>
        </div>
    </form>
</body>
</html>
