<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Volunteering.aspx.cs" Inherits="Custome_Projects.Volunteering" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Volunteer Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 20px;
        }
        #form1 {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }
        input[type="text"],
        input[type="email"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box; /* Ensures padding is included in the width */
        }
        textarea {
            resize: vertical; /* Allows vertical resizing only */
        }
        input[type="submit"],
        .submitButton {
            background-color: #4CAF50; /* Green background */
            color: white; /* White text */
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover,
        .submitButton:hover {
            background-color: #45a049; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Volunteer Registration</h2>
            <label for="username">Username:</label>
            <input type="text" id="username" runat="server" /><br />

            <label for="email">Email:</label>
            <input type="email" id="email" runat="server" /><br />

            <label for="age">Age:</label>
            <input type="number" id="age" runat="server" /><br />

            <label for="profession">Profession:</label>
            <input type="text" id="profession" runat="server" /><br />

            <label for="address">Address:</label>
            <textarea id="address" runat="server"></textarea><br />

            <label for="experience">Experience:</label>
            <textarea id="experience" runat="server"></textarea><br />

            <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        </div>
    </form>
</body>
</html>