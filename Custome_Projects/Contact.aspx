<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Custome_Projects.Contact" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        /* Your existing CSS styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #fff;
        }
        .contents {
            background: #eaf2f8;
            display:flex;
            padding:5px 0 5px 0;
            margin-top:40px;
            margin-left:75px;
            margin-right:75px;
            border-radius:10px;
          
        }
        .container {
            width: 60%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #ccc;
            margin-left:100px;
            
        }
        .container:hover{
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.9);
        }
        .contact-left {
            float: left;
            width: 40%;
            padding-right: 20px;
            border-right: 1px solid #ddd;
        }
        .contact-right {
            float: left;
            width: 50%;
            padding-left: 20px;
        }
        .contact-right h3{
            font-size:2rem;
        }
        .contact-right p{
            margin-bottom:40px
        }
        .clear {
            clear: both;
        }
        .contact-info {
            margin-bottom: 20px;
        }
        .contact-info h4 {
            margin-bottom: 5px;
            margin-left: 140px;
        }
        .contact-info .param1 {
            margin-left: 115px;
        }
        .contact-info .param2 {
            margin-left: 105px;
        }
        .contact-info .param3 {
            margin-left: 84px;
        }
        .contact-info img {
            height: 25px;
            width: 25px;
            margin-left: 150px;
            margin-top: 15px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-group input[type="submit"] {
            width: auto;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .nav{
            display:absolute;
            padding:0 12px 0 12px;
           
        }
        .nav ul {
            display: flex;
            list-style-type: none;
            padding: 0;
            margin: 0;
            background-color: black;
            overflow: hidden;
            border-radius:5px;
        }
        .nav ul li {
            float: left;
            display: absolute;
            justify-content: center;
            text-align: center;
            align-items: center;
        }
        .nav ul li a {
            margin-top: 15px;
            display: flex;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            margin-left: 190px;
            margin-bottom:10px;
            font-weight:600;
            font-size:1rem;
        }
        .nav ul li a:hover {
            background-color: #b163ff;
            border-radius: 5px;
        }
        .form-group #txtName, #txtEmail{
            background:#f2f2f2;
            height:25px;
        }
        .form-group #txtMessage{
            background:#f2f2f2;
            height:85px;
        }
        .imgs img{
          margin-top:20px;
            height:737px;
            width:370px;
        }

    </style>
   
</head>
<body>
    <form id="form1" runat="server" onsubmit="handleSubmit(event)">
        <div class="nav">
            <ul>
                <!-- Your existing navigation links -->
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="AboutUs.aspx">About Us</a></li>
                <li><a href="Programs.aspx">Our Programs</a></li>
                <li><a href="Login.aspx">Login/Sign Up</a></li>

            </ul>
        </div>

        <div class="contents">
            <div class="imgs">
                <img src="Images/contactme.png" />
            </div>
            <div class="container">
                <div class="contact-left">
                    <div class="contact-info">
                        <img src="Images/address.png" />
                        <h4>Address</h4>
                        <p class="param1">Sunkhar NR2,</p>
                        <p class="param1">Blendmanager 06</p>
                    </div>
                    <div class="contact-info">
                        <img src="Images/phone.png" />
                        <h4>Phone</h4>
                        <p class="param2">+0096 8383 5647</p>
                        <p class="param2">+0096 3434 5678</p>
                    </div>
                    <div class="contact-info">
                        <img src="Images/Email.jpg" />
                        <h4>Email</h4>
                        <p class="param3">codinglab@gmail.com</p>
                        <p class="param3">info.codinglab@gmail.com</p>
                    </div>
                </div>
                <div class="contact-right">
                    <h3>Contact Us</h3>
                    <p>We would love to be in touch with you!</p>
                    
                    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    <div class="form-group">
                        <asp:TextBox ID="txtName" runat="server" placeholder="Enter your name" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" placeholder="Enter your message" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Message is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnSubmit" runat="server" Text="Send Now" CssClass="btn btn-primary" OnClick="btnSubmit_Click1" />
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </form>
</body>
</html>
