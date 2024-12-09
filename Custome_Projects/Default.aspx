<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Orphanage Management System</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />

    <style>
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}
.header {
    position: relative;
    text-align: center;
    color: Green; /* Adjust text color for better contrast */
    height:200px;
     text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
}

.header video {
    width: 100%;
    height: 160%; /* You can adjust the height as needed */
    max-height: 400px; /* Adjust the max-height to control the video size */
    object-fit: cover; /* Ensures the video covers the area */
    position: absolute;
    top: 0;
    left: 0;
    z-index: -1; /* Sends the video behind the text */
}

.header h1 {
    margin-top:95px;
    position: absolute;
    z-index: 1; /* Keeps the text above the video */
   
    padding: 20px;
    font-size: 4em; /* Adjust font size as needed */
    margin-left:300px

}


/*.header {
    background-color: #4CAF50;
    color: #fff;
    text-align: center;
    padding: 1em 0;
    display:flex;
    background-image:url(walking-baby-happily.gif);
     background-size: cover;
    
}*/
/*.header h1{
    margin-left:330px
}
.header img{
    height:25px;
    width:25px;
}*/

.Container{
    display:flex;
    background-color: #333;
    justify-content:space-between
}
.Logoes{
    color:white;
}
.Logoes h1 a{
    margin-left:10px;
    
}
.nav ul {
    display:flex;
    list-style-type: none;
    padding: 0;
    margin: 0;
    background-color: #333;
    overflow: hidden;
}

.nav ul li {
    /*float: left;*/
    
}

.nav ul li a {
   margin-top:15px;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    
}

.nav ul li a:hover {
    background-color: #b163ff;
    border-radius:5px;
}


.hero {
    text-align: center;
    padding: 50px;
    background-color: #f2f2f2;
}

 .img_deg {
    width: 400px;
    height: 235px;
    float:left;
    border-radius:5px;
    
}

.Donates {
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
.Donates:hover {
    box-shadow: 5px 5px black;
  background-position: -200%;
  transition: background 1000ms ease-in-out;
  color:white;
}
.Volunteer {
  height:40px;
width:180px;
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
.Volunteer:hover {
    box-shadow: 5px 5px black;
  background-position: -200%;
  transition: background 1000ms ease-in-out;
  color:white;
}
.hero .content p{
    color:red;
    font-weight:600;
}
/* General styling for the programs section */
.programs {
    padding: 20px;
    background-color: #f8f9fa; /* Light grey background for the section */
    border-radius: 10px;
    margin: 20px 0;
}

.programs h2 {
    text-align: center;
    margin-bottom: 30px;
    color: #343a40; /* Darker text color for the header */
    font-size: 2em;
}

/* Card styling */
.card {
    border: 1px solid #dee2e6; /* Light border around each card */
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for a 3D effect */
    background-color: #ffffff; /* White background for cards */
}

.card-title {
    color: #007bff; /* Primary color for the card titles */
    font-size: 1.5em;
    margin-bottom: 15px;
}

.card-text {
    color: #495057; /* Medium dark color for the card text */
    font-size: 1em;
}

/* Hyperlink button styling */
a.btn {
    display: inline-block;
    width: 100%;
    text-align: center;
    font-size: 1.2em;
    padding: 10px;
    background-color: #007bff; /* Primary blue color */
    border: none;
    border-radius: 5px;
    color: #fff;
    text-decoration: none;
    transition: background-color 0.3s ease;
}

a.btn:hover {
    background-color: #0056b3; /* Darker blue on hover */
}
.shows{
    display:flex;
    justify-content:space-between;

}
.children{
    margin-top:25px;
    border: 1px solid #dee2e6; /* Light border around each card */
border-radius: 10px;
box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5); /* Subtle shadow for a 3D effect */
background-color: #ffffff;
margin-left:250px;
}
.children #imgChildren{
    margin-top:25px;
    height:200px;
    width:320px;
}
.help{
    margin-top:25px;
        border: 1px solid #dee2e6; /* Light border around each card */
border-radius: 10px;
box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5); /* Subtle shadow for a 3D effect */
background-color: #ffffff;
margin-right:200px;
}
.help #imgChildren1{
    height:200px;
width:320px;
}
#btnDonate{
      height:40px;
width:110px;
font-weight:600;
margin-left:20px;
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
#btnDonate:hover{
      box-shadow: 5px 5px black;
background-position: -200%;
transition: background 1000ms ease-in-out;
color:white;
}
#btnVolunteerNow{
          height:40px;
width:180px;
font-weight:600;
margin-left:20px;
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
#btnVolunteerNow:hover{
          box-shadow: 5px 5px black;
background-position: -200%;
transition: background 1000ms ease-in-out;
color:white;
}
#btnSponsor{
              height:40px;
width:147px;
font-weight:600;
margin-left:18px;
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
#btnSponsor:hover{
              box-shadow: 5px 5px black;
background-position: -200%;
transition: background 1000ms ease-in-out;
color:white;
}
/*.Seprations{
    display:flex;
    justify-content:space-around;
}*/

.event-date {
            font-weight: bold;
            font-size: 1.5em;
            color: #888;
        }

        .event-day {
            font-weight: bold;
            font-size: 1.2em;
            color: #888;
            margin-bottom: 10px;
        }

        .event-title {
            font-size: 1.2em;
            font-weight: bold;
        }

        .event-location {
            font-style: italic;
            color: #555;
        }

        .event-description {
            color: #555;
        }

        .event-card {
            margin-bottom: 20px;
        }

        .event-image {
            max-width: 100%;
            border-radius: 5px;
        }
        .news-events{
            margin-top:70px;
           background-color:#f2f2f2;
        }
        .readsT{
                          height:40px;
width:147px;
font-weight:600;
margin-left:18px;
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
        .readsT:hover{
                          box-shadow: 5px 5px black;
background-position: -200%;
transition: background 1000ms ease-in-out;
color:white;
        }
       
.about-us, .programs, .children, .help, .news-events, .testimonials, .footer {
    padding: 20px;
    text-align: center;
}

.footer-container {
            background-color: #004d40;
            color: #e0f2f1;
            padding: 40px 20px;
        }

        .footer-title {
            font-size: 1.5em;
            margin-bottom: 20px;
        }

        .footer-subscribe input[type="email"] {
            background-color: #004d40;
            border: none;
            border-bottom: 1px solid #e0f2f1;
            color: #e0f2f1;
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
        }

        .footer-subscribe input[type="checkbox"] {
            margin-right: 10px;
        }

        .footer-subscribe button {
            background-color: #00796b;
            color: #e0f2f1;
            border: none;
            padding: 10px 20px;
            margin-top: 10px;
        }

        .footer-subscribe .warning-message {
            color: #ffcc00;
            margin-top: 10px;
            display: none;
        }

        .footer-social-icons a {
            color: #e0f2f1;
            margin-right: 15px;
            font-size: 1.5em;
        }

        .footer-contact {
            margin-top: 20px;
        }

        .footer-contact input[type="text"],
        .footer-contact input[type="email"],
        .footer-contact textarea {
            background-color: #004d40;
            border: 1px solid #e0f2f1;
            color: #e0f2f1;
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
        }

        .footer-contact button {
            background-color: #00796b;
            color: #e0f2f1;
            border: none;
            padding: 10px 20px;
            margin-top: 10px;
        }

        .footer-address {
            margin-top: 20px;
            font-size: 0.9em;
        }    

        .footer-bottom {
            margin-top: 20px;
            border-top: 1px solid #e0f2f1;
            padding-top: 10px;
            font-size: 0.9em;
        }

        .footer-bottom a {
            color: #e0f2f1;
            margin-right: 15px;
        }
        .warning {
            color: red;
            display: none;
            margin-top: 5px;
        }
.social-media img {
    width: 30px;
    height: 30px;
    margin: 5px;
}
.slideshow-container {
            position: relative;
            max-width: 100%;
            margin: auto;
            overflow: hidden;
        }
        .slide {
            display: none;
            position: absolute;
            width: 100%;
            height: auto;
        }
        .slide img {
            width: 100%;
            height: auto;
        }
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }
        .prev:hover, .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }
        <style>
/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev{
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: black;
  font-weight: bold;
  font-size: 35px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
  left:13%;
}
.next{
    
    cursor: pointer;
position: absolute;
top: 50%;

width: auto;
padding: 16px;
margin-top: -22px;
color: black;
font-weight: bold;
font-size: 35px;
transition: 0.6s ease;
border-radius: 0 3px 3px 0;
user-select: none;
margin-right:13%;
}
/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 25px;
  padding: 8px 12px;
  position: absolute;
  bottom: 50px;
  width: 100%;
  text-align: center;
  font-weight:600;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* Dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
 .testimonial-section {
            background-color: #fff;
            padding: 20px;
            margin-top:25px;
            width: 80%;
            max-width: 1200px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            border-radius: 10px;
            margin-left:160px;
        }

        .testimonial-section h2 {
            color: #f7a709;
            margin-bottom: 10px;
            font-size: 24px;
            font-weight: bold;
        }

        .testimonial-section p {
            font-size: 14px;
            color: #333;
            margin-bottom: 20px;
        }

        .testimonial-container {
            display: flex;
            justify-content: space-between;
        }

        .testimonial {
            width: 30%;
            padding: 15px;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.9);
            text-align: left;
            margin-left:25px;
            
        }
        .testimonial:hover{
            box-shadow:0 0 15px rgba(0, 0, 0, 0.9);
        }
        .testimonial img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: block;
            margin: 0 auto 15px auto;

        }

        .testimonial p {
            font-size: 14px;
            color: #666;
            margin-bottom: 10px;
            text-align: center;
        }

        .testimonial h3 {
            text-align: center;
            margin: 10px 0 5px 0;
            font-size: 16px;
            color: #f7a709;
        }

        .testimonial span {
            display: block;
            text-align: center;
            font-size: 12px;
            color: #999;
        }
</style>

    
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header Section -->


        <!-- Navigation Menu -->
        <div class="Container">
            <div class="Logoes">
            <h1><a>Logo.</a></h1>
            </div>
        <div class="nav">
            <ul>
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="AboutUs.aspx">About Us</a></li>
                <li><a href="Programs.aspx">Our Programs</a></li>
                <li><a href="Children.aspx">Children</a></li>
                <li><a href="Donations.aspx">Donations</a></li>
                <li><a href="Contact.aspx">Contact Us</a></li>
                <li><a href="Login.aspx">Login</a></li>
                <li><a href="SignUp.aspx">Sign Up</a></li>
            </ul>
        </div>
            </div>
      <div class="header">
    <video src="Images/crawlingbaby.mp4" autoplay muted loop></video>
    <h1>Welcome to JoyBridge Orphanage</h1>
</div>
        <!-- Hero Section -->
        
        <div class="hero">
            <div class="content">
            <img class="img_deg" src="images/frontphoto.jpg" alt="Happy Children" />
                <p>Nothing hurts as Much
as a void in the Heart,
a craving for the Touch
that never falls Apart.</p>

                <p>
Taking Birth on Earth,
Though we’re ensured None,
The sparkle of our Worth
stays untouched… Number One.</p>

                <p>
                    It is not a Lie,
Realize the Essence…
They didn’t fly High
but chose to be in our Presence!
                </p>
            </div>
            <h2>Providing a safe and loving home for children in need.</h2>
            <asp:Button ID="btnDonateNow" Class="Donates" runat="server" Text="Donate Now" OnClick="DonateNow_Click" />
            <asp:Button ID="btnVolunteer" Class="Volunteer" runat="server" Text="Become a Volunteer" OnClick="Volunteer_Click" />
        </div>
            
        <!-- About Us Section -->
        <div class="about-us">
    <h2>Who We Are</h2>
    <p>A brief introduction to the orphanage, its mission, and values.</p>
    <div class="slideshow-container">

        <!-- Full-width images with number and caption text -->
        <div class="mySlides fade">
            <div class="numbertext">1 / 5</div>
            <img src="Images/slidshow1.jpg" style="width:45%;height:20%">
            <div class="text">Valunteers</div>
        </div>

        <div class="mySlides fade">
            <div class="numbertext">2 / 5</div>
            <img src="Images/slidshow2.jpg" style="width:40%;height:20%">
            <div class="text">Charity Program</div>
        </div>

        <div class="mySlides fade">
            <div class="numbertext">3 / 5</div>
            <img src="Images/slidshow3.jpg" style="width:50%;height:50%">
            <div class="text">Sports Program</div>
        </div>
         <div class="mySlides fade">
     <div class="numbertext">4 / 5</div>
     <img src="Images/slidshow4.jpg" style="width:50%;height:50%">
     <div class="text">Health Care</div>
 </div>
         <div class="mySlides fade">
     <div class="numbertext">5 / 5</div>
     <img src="Images/slidshow6.jpg" style="width:50%;height:50%">
     <div class="text">Education</div>
 </div>

        <!-- Next and previous buttons -->
        <div>
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>
    </div>

    <!-- The dots/circles -->
    <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div>

    <asp:HyperLink ID="lnkReadMore" runat="server" NavigateUrl="AboutUs.aspx" style="margin-top:25px">Read More</asp:HyperLink>
</div>

        
       

       <div class="programs">
    <h2>Our Programs</h2>
    <div class="row">
        <!-- Card for Education -->
        <div class="col-md-4">
            <div class="card mb-3">
                <div class="card-body">
                    <h3 class="card-title">Education</h3>
                    <p class="card-text">Children who attend our Orphan’s Promise education centers have the opportunity to not only attend school but to thrive and reach their full potential. Our students take classes in subjects like English, Math, and Computer Skills, but they also receive training in life skills like cooking, money management.</p>
                     <asp:Button ID="Button1" Class="readsT" runat="server" Text="Read More" OnClick="DonateNow_Click" />

                </div>
            </div>
        </div>

        <!-- Card for Healthcare -->
        <div class="col-md-4">
            <div class="card mb-3">
                <div class="card-body">
                    <h3 class="card-title">Healthcare</h3>
                    <p class="card-text">Millions of children across the globe are orphans. Without the support of parents, many are highly vulnerable and denied a safe place to live and play, as well as access to quality education, medical care, and food. </p>
                     <asp:Button ID="Button2" Class="readsT" runat="server" Text="Read More" OnClick="DonateNow_Click" />

                </div>
            </div>
        </div>

        <!-- Card for Rehabilitation -->
        <div class="col-md-4">
            <div class="card mb-3">
                <div class="card-body">
                    <h3 class="card-title">Rehabilitation</h3>
                    <p class="card-text">We strongly believe that the right place for a child is a home with loving parents, where the child feels more secure. This is the crux of Non Institutional care for the destitute orphan children. However, in the absence of non-institutional care ‘Adoption‘ is the best way to rehabilitate a child. </p>
                    <asp:Button ID="Buttons3" Class="readsT" runat="server" Text="Read More" OnClick="DonateNow_Click" />
                </div>
            </div>
        </div>
    </div>

    <!-- Hyperlink to Explore All Programs -->
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Programs.aspx" CssClass="btn btn-primary mt-3">Explore All Programs</asp:HyperLink>
</div>

        <!-- Meet the Children Section -->
        <div class="shows">
        <div class="children">
            <h2>Meet the Children</h2>
            <asp:Image ID="imgChildren" runat="server" ImageUrl="images/walking-baby-happily.gif" AlternateText="Children" />
            <br /><br />
            <asp:HyperLink ID="lnkSeeAllChildren" runat="server" NavigateUrl="Children.aspx">See All Children</asp:HyperLink>
        </div>

        <!-- How You Can Help Section -->
        <div class="help">
            <h2>How You Can Help</h2>
            <asp:Image ID="imgChildren1" runat="server" ImageUrl="images/Donations.png" AlternateText="Donations Help" /><br />
            <asp:Button ID="btnDonate" runat="server" Text="Donate Now" OnClick="DonateNow_Click" />
            <asp:Button ID="btnVolunteerNow" runat="server" Text="Become a Volunteer" OnClick="Volunteer_Click" />
            <asp:Button ID="btnSponsor" runat="server" Text="Sponsor a Child" OnClick="Sponsor_Click" />
        </div>
            </div>
        <!-- Latest News & Events Section -->
        <div class="news-events">
            <h1>Latest News & Events</h1>
            
            <div class="container mt-5">
            <div class="row">
                <!-- Event Listing Example -->
                <div class="col-md-12">
                    <!-- Event Date -->
                    <p class="event-day">SAT<br /><span class="event-date">5</span></p>
                    <h5 class="event-title">Conference</h5>
                    <p class="event-time">June 5 @ 8:00 am - 5:00 pm</p>
                    <hr />

                    <!-- Event with Image -->
                    <div class="row event-card">
                        <div class="col-md-2">
                            <p class="event-day">SUN<br /><span class="event-date">6</span></p>
                        </div>
                        <div class="col-md-7">
                            <h5 class="event-title">IYDF Organizes Charity Event to Support Children at Special Orphanage</h5>
                            <p class="event-location">IYDF Organizes Charity Event to Support Children at Special Orphanage</p>
                            <p class="event-description">While people may have a genuine desire to help disadvantaged children, some end up fuelling complex systems of abuse and profiteering without even knowing it.IYDF Charity Event Report Igniting Hope.IYDF Charity Event Report Igniting Hope for the Future
Read more At: [...]</p>
                        </div>
                        <div class="col-md-3">
                            <img src="Images/charity1.jpg" alt="Event Image" class="event-image" />
                        </div>
                    </div>

                    <hr />

                    <!-- Another Event with Image -->
                    <div class="row event-card">
                        <div class="col-md-2">
                            <p class="event-day">SUN<br /><span class="event-date">6</span></p>
                        </div>
                        <div class="col-md-7">
                            <h5 class="event-title">How is orphanage tourism damaging children?</h5>
                            <p class="event-location">It's very common for children to be trafficked into the orphanages and taken away from their family.</p>
                            <p class="event-description">The experts we spoke to say there are about 5.4 million children living in orphanages worldwide, but 80 per cent of them have living families that could care for them with the right support!’ [...]</p>
                        </div>
                        <div class="col-md-3">
                            <img src="Images/charity2.jpg" alt="Event Image" class="event-image" />
                        </div>
                    </div>

                    <hr />

                    <!-- Another Event without Image -->
                    <div class="row event-card">
                        <div class="col-md-2">
                            <p class="event-day">MON<br /><span class="event-date">7</span></p>
                        </div>
                        <div class="col-md-7">
                            <h5 class="event-title">How do orphanage owners use tourism to their advantage?</h5>
                            <p class="event-location">One orphanage I visited spent thousands of pounds on a grant to build a luxurious apartment for American tourists.</p>
                            <p class="event-description">Most tourists go on voluntourism trips with a genuine intention to help. But experts say the donations they give are sometimes pocketed by the orphanage owner. And worse living conditions often make for higher donations.!’ [...]</p>
                        </div>
                        <div class="col-md-3">
                            <img src="Images/charity3.jpg" alt="Event Image" class="event-image" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <h3>Annual Charity Event - August 2024</h3>
            <p>Details about upcoming events, fundraisers, and more.</p>
            <asp:HyperLink ID="lnkReadMoreNews" runat="server" NavigateUrl="Events.aspx">Read More</asp:HyperLink>
        </div>

        <!-- Testimonials Section -->
        <div class="testimonial-section">
            <h2>TESTIMONIALS</h2>
            <p>Subscribe Easy Tutorials YouTube channel to watch more videos.</p>

            <div class="testimonial-container">
                <div class="testimonial">
                    <img src="Images/demo45.jpeg" alt="Avinash Kr" />
                    <p>"Like this video and ask your questions in the comment section, don't forget to Subscribe Easy Tutorials YouTube channel to watch more videos of website designing, digital marketing and photoshop."</p>
                    <h3>Avinash Kr</h3>
                    <span>Co-Founder at xyz</span>
                </div>

                <div class="testimonial">
                    <img src="path_to_bharat_image.jpg" alt="Bharat Kunal" />
                    <p>"Like this video and ask your questions in the comment section, don't forget to Subscribe Easy Tutorials YouTube channel to watch more videos of website designing, digital marketing and photoshop."</p>
                    <h3>Bharat Kunal</h3>
                    <span>Manager at xyz</span>
                </div>

                <div class="testimonial">
                    <img src="path_to_prabhakar_image.jpg" alt="Prabhakar D" />
                    <p>"Like this video and ask your questions in the comment section, don't forget to Subscribe Easy Tutorials YouTube channel to watch more videos of website designing, digital marketing and photoshop."</p>
                    <h3>Prabhakar D</h3>
                    <span>Founder / CEO at xyz</span>
                </div>

                <div class="testimonial">
    <img src="Images/demo45.jpeg" alt="Avinash Kr" />
    <p>"Like this video and ask your questions in the comment section, don't forget to Subscribe Easy Tutorials YouTube channel to watch more videos of website designing, digital marketing and photoshop."</p>
    <h3>Avinash Kr</h3>
    <span>Co-Founder at xyz</span>
</div>
            </div>

        </div>

        <!-- Footer Section -->
        <div class="footer">
            <div class="footer-container">
            <!-- Subscription Section -->
            <div class="footer-subscribe">
                <h2 class="footer-title">Get the latest Orphanage News</h2>
                <input type="email" placeholder="Enter email here" id="emailInput" />
                <br />
                <input type="checkbox" id="chkAgeConsent" />
                <label for="chkAgeConsent">By checking the box, you agree that you are at least 18 years of age.</label>
                <br />
                <span id="warningMessage" class="warning-message">You must agree to be at least 18 years old.</span>
                <br />
                <button type="button" onclick="validateSubscription()">Subscribe</button>
            </div>
            <hr />
            <!-- Social Media Links -->
            <div class="footer-social-icons">
                <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                <a href="#" aria-label="Facebook"><i class="fab fa-facebook"></i></a>
               
            </div>
            <hr />
            <!-- Contact Form -->
            <div class="row footer-contact">
                <div class="col-md-6">
                    <h4>Contact Us</h4>
                    <input type="text" placeholder="Your Name" />
                    <input type="email" placeholder="Your Email"  />
                    <textarea placeholder="Your Message" rows="4"></textarea>
                    <button type="button">Send Message</button>
                </div>
                <div class="col-md-6 footer-address">
                    <h4>Our Address</h4>
                    <p>123 Orphanage Road</p>
                    <p>City, State, ZIP</p>
                    <p>Email: contact@orphanage.org</p>
                    <p>Phone: (123) 456-7890</p>
                </div>
            </div>
            <hr />
            <!-- Bottom Section -->
            <div class="footer-bottom">
                <p>© 2024 Orphanage Management System. All Rights Reserved.</p>
                <a href="#">Website Terms</a> |
                <a href="#">Privacy Policy</a> |
                <a href="#">Accessibility Statement</a>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        function validateSubscription() {
            var checkbox = document.getElementById('chkAgeConsent');
            var warningMessage = document.getElementById('warningMessage');

            if (!checkbox.checked) {
                warningMessage.style.display = 'block';
            } else {
                warningMessage.style.display = 'none';
                alert('Subscription successful!'); // Perform further actions like form submission.
            }
        }
        function validateForm() {
            var emailInput = document.getElementById("emailInput");
            var checkbox = document.getElementById("chkAgeConsent");
            var emailWarning = document.getElementById("emailWarning");
            var checkboxWarning = document.getElementById("chkWarning");
            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

            // Reset warnings
            emailWarning.style.display = "none";
            checkboxWarning.style.display = "none";

            // Validate email
            if (!emailPattern.test(emailInput.value)) {
                emailWarning.style.display = "block";
                return false;
            }

            // Validate checkbox
            if (!checkbox.checked) {
                checkboxWarning.style.display = "block";
                return false;
            }

            return true; // Form is valid
        }
        let slideIndex = 1;
        showSlides(slideIndex);

        // Next/previous controls
        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        // Thumbnail image controls
        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
        setInterval(function () {
            plusSlides(1);
        }, 2000); // Change image every 3 seconds
    </script>
    </body>
</html>
