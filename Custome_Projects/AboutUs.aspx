<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Custome_Projects.AboutUs" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Orphanage Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            padding: 10px 0;
            text-align: center;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin-right: 20px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }

        nav ul li a:hover {
            text-decoration: underline;
        }
        #Image1{
            height:410px;
            width:470px;    
            margin-top:143px;
            margin-left:68px;
            box-shadow:0 4px 8px rgba(0, 0, 0, 10.0);
        }
        #Image2{
            box-shadow:0 4px 8px rgba(0, 0, 0, 0.8);
        }
      
        .hero {
            width: 100%;
            height: 400px;
            background: url('Images/coverphoto.jpeg') no-repeat center center/cover;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .about-us {
            padding: 40px;
            background-color: #f4f4f4;
        }

        .about-us h1, .about-us h2, .about-us h3 {
            color: #333;
            text-align: center;
            margin-top:40px;
        }

        .about-us p {
            color: #666;
            line-height: 1.8;
            text-align: justify;
        }

        .about-us .content {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .about-us .text {
            width: 60%;
            padding-right: 20px;
        }

        .about-us .image {
            width: 35%;
        }

        .about-us .image img {
            width: 100%;
            border-radius: 10px;
        }
        .about h4{
            margin-top:25px;
        }
        /* Card formatting with box shadow */
        .card {
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4); /* Add shadow here */
        }
         .card1 {
     background-color: #fff;
     border-radius: 10px;
     padding: 20px;
     margin-bottom: 20px;
     box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4); /* Add shadow here */
 }
         .card3{
              background-color: #fff;
 border-radius: 10px;
 padding: 20px;
 margin-bottom: 20px;
 box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4); /* Add shadow here */
         }
         .card3 #Image4{
      float:left;
      border-radius:3px;
      height:290px;
      width:357px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 1.0); 
      
  }
         .card p{
            margin-left:109px;
         }
         .card3 p{
   margin-left:109px;
}
         
        footer {
            background-color: #333;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }

        .footer-content {
            display: flex;
            justify-content: space-around;
            padding-bottom: 20px;
        }

        .footer-content h4 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .footer-content ul {
            list-style-type: none;
            padding: 0;
        }

        .footer-content ul li {
            margin-bottom: 10px;
        }

        .footer-content ul li a {
            color: #fff;
            text-decoration: none;
        }

        .footer-content ul li a:hover {
            text-decoration: underline;
        }

        .newsletter p {
            margin-bottom: 10px;
        }

        .email-input {
            padding: 8px;
            width: 70%;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .signup-button {
            padding: 8px 20px;
            background-color: #0066cc;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .signup-button:hover {
            background-color: #004080;
        }

        .footer-bottom {
            border-top: 1px solid #444;
            padding-top: 10px;
        }

        .social a {
            margin: 0 10px;
        }

        .social img {
            width: 55px;
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <nav>
                <ul>
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="About.aspx">About Us</a></li>
                    <li><a href="Programs.aspx">Programs</a></li>
                    <li><a href="Contact.aspx">Contact</a></li>
                    <li><a href="Login.aspx">Login</a></li>
                </ul>
            </nav>
        </header>

        <section class="hero">
            <asp:Image ID="Image1" runat="server" ImageUrl="Images/happycover.png" AlternateText="Orphanage Landscape" />
        </section>

        <section class="about-us">
            <div class="card">
                <h1>ABOUT US</h1>
                <div class="content">
                    <div class="text">
                        <h2>Orphanage Management System</h2>
                        <p>
                            "Our Orphanage Management System was founded with a deep commitment to creating a secure and caring environment for children who have lost their families. From the very beginning, we have strived to provide top-tier care, education, and support, ensuring that each child under our care grows into a confident and capable individual. Our dedication remains unwavering in helping these young lives flourish with the love and guidance they deserve."
                        </p>
                    </div>
                    <div class="image">
                        <asp:Image ID="Image2" runat="server" ImageUrl="images/happychilds2.jpg" AlternateText="Supporting Children" />
                    </div>
                </div>
            </div>

            <div class="card1">
                <h3>HISTORY OF OUR MISSION</h3>
                <p>
                   In the late 19th century, New York City faced a massive influx of immigrants, many of whom lived in extreme poverty. Thousands of children were abandoned on the streets, and the mortality rate among infants was alarmingly high. Recognizing the urgent need, Sister Mary Irene Fitzgibbon and the Sisters of Charity established The Foundling with the mission to rescue these children from neglect and death.

The Foundling’s initial mission was to provide a safe haven for abandoned babies. They offered a "foundling wheel," where desperate mothers could leave their infants anonymously. This compassionate approach saved countless lives and quickly became a cornerstone of the organization's mission.
                </p>
            </div>

            <div class="card3">
                <h3>OUR PROMISE</h3>
                <div class="promise1">
                <asp:Image ID="Image4" runat="server" ImageUrl="images/happychilds1.jpg" AlternateText="Supporting Children" />
                </div>
                    <p>
                    We are unwavering in our dedication to transforming the lives of the children we serve. Our mission is grounded in the belief that every child deserves not just a safe place to live, but a nurturing environment where they can thrive emotionally, academically, and socially. We recognize that these formative years are crucial, and as such, we are deeply committed to providing a holistic approach to care—one that addresses the physical, emotional, and psychological needs of each child.

At the heart of our work is the creation of a loving and supportive community. We understand that children who have experienced loss or trauma require more than just shelter; they need a sense of belonging and stability. Our programs are designed to build strong, trusting relationships, offering consistent support and guidance from caregivers, educators, and mentors who are dedicated to their well-being.
                </p>
                
            </div>
        </section>

        <footer>
            <div class="footer-content">
                <div class="about">
                    <h4>ABOUT US</h4>
                    <ul>
                        <li><a href="#">Our History</a></li>
                        <li><a href="#">Our Team</a></li>
                        <li><a href="#">Careers</a></li>
                    </ul>
                </div>
                <div class="help">
                    <h4>HELP</h4>
                    <ul>
                        <li><a href="Contact.aspx">Contact Us</a></li>
                        <li><a href="#">FAQs</a></li>
                        <li><a href="#">Support</a></li>
                    </ul>
                </div>
                <div class="newsletter">
                    <h4>NEWSLETTER</h4>
                    <p>Sign up to receive updates and news from our organization.</p>
                    <asp:TextBox ID="EmailTxt" runat="server" CssClass="email-input" placeholder="Email Address"></asp:TextBox>
                    <asp:Button ID="btnSignUp" runat="server" Text="SIGN UP" CssClass="signup-button" OnClick="btnSignUp_Click" />
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; Orphanage Management System 2024. All rights reserved.</p>
                <div class="social">
                    <a href="#"><img src="images/facebooklogo.png" alt="Facebook" /></a>
                    <a href="#"><img src="images/instagramlogo.png" alt="Instagram" /></a>
                    <a href="#"><img src="images/youtubelogo.png" alt="YouTube" /></a>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
