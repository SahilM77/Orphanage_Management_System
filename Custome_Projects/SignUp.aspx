<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Custome_Projects.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 400px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="tel"],
        select {
            width: 100%;
            padding: 10px;
            margin: 8px 0 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #5cb85c;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c;
        }
        #btnLogin{
            background:blue;
            margin-top:20px;
        }
         input[type="submit"],
        .btn-login {
            background-color: #5cb85c;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
        }
    </style>
    <script>
        function redirectToLogin() {
            window.location.href = "Login.aspx"; // Change to your actual login page
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div>
            <h2>Sign Up</h2>
            <label for="txtUsername">Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" required="required"></asp:TextBox>

            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" required="required"></asp:TextBox>

            <label for="txtMobile">Mobile Number:</label>
            <asp:TextBox ID="txtMobile" runat="server" required="required"></asp:TextBox>

            <label for="ddlGender">Gender:</label>
            <asp:DropDownList ID="ddlGender" runat="server">
                <asp:ListItem Text="Select Gender" Value=""></asp:ListItem>
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
            </asp:DropDownList>

            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" required="required"></asp:TextBox>

            <asp:Button ID="btnSubmit" runat="server" Text="Sign Up" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>

            <button ID="btnLogin" type="button" class="btn-login" onclick="redirectToLogin()">Already have an account? Log In</button>
        </div>
    </form>
</body>
</html>
