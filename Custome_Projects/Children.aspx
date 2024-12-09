<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Children.aspx.cs" Inherits="Custome_Projects.Children" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">

  <title>Multiple Cards</title>
  <!--font awesome bootstrap CDN-->
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

  <style>
    body {
        margin: 0;
        padding: 0;
        background: white; /* Changed background color to purple */
        font-family: sans-serif;
        display: absolute;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        flex-wrap: wrap;
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
   /* display:absolute;
    justify-content:center;
    text-align:center;
    align-items:center*/
    
}

.nav ul li a {
   margin-top:15px;
    display: flex;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    
    margin-left:160px;
   
}

.nav ul li a:hover {
    background-color: #b163ff;
    border-radius:5px;
}
/*.container{
    display:absolute;
    margin-left:150px;
}*/

.dropdown {
    position: relative;
 
}

.dropdown .dropbtn {
    background-color: #333;
    border: none;
    outline: none;
    color: white;
    padding: 14px 20px;
    font-size: 16px;
    cursor: pointer;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #333;
    min-width: 160px;
    z-index: 1;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: white;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #575757;
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #575757;
}

    .container {
         display:absolute;
 margin-left:150px;
        margin-top: 50px;
        max-width: 1200px;
        text-align: center;
        color: white;
        margin-bottom: 50px;
        background-color: darkcyan;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.9);
        border-radius:10px;
    }

    h1 {
        font-size: 2.5em;
        margin-bottom: 20px;
    }
   
    .card-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        background: #f2f2f2;
    }

    .card {
        position: relative;
        margin: 20px;
        width: 360px;
        height: 400px;
        background: #000;
    }

    .card:hover {
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 1.0); /* Added box shadow */
    }

    .card .image {
        width: 100%;
        height: 100%;
        overflow: hidden;
    }

    .card .image img {
        width: 100%;
        height:100%;
        transition: .5s;
    }

    .card:hover .image img {
        opacity: .5;
        transform: translateX(30%);
    }

    .card .details {
        position: absolute;
        top: 0;
        left: 0;
        width: 70%;
        height: 100%;
        background: green;
        transition: .5s;
        transform-origin: left;
        transform: perspective(2000px) rotateY(-90deg);
    }

    .card:hover .details {
        transform: perspective(2000px) rotateY(0deg);
    }

    .card .details .center {
        padding: 20px;
        text-align: center;
        background: #fff;
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
    }

    .card .details .center h1 {
        margin: 0;
        padding: 0;
        color: #ff3636;
        line-height: 20px;
        font-size: 20px;
        text-transform: uppercase;
    }

    .card .details .center h1 span {
        font-size: 20px;
       
        color: #262626;
    }

    .card .details .center p {
        margin: 10px 0;
        padding: 0;
        color: #262626;
    }

    .card .details .center ul {
        margin: 10px auto 0;
        padding: 0;
        display: table;
    }

    .card .details .center ul li {
        list-style: none;
        margin: 0 5px;
        float: left;
    }

    .card .details .center ul li a {
        display: block;
        background: #262626;
        color: #fff;
        width: 100px;
        height: 30px;
        line-height: 30px;
        text-align: center;
        transform: .5s;
        text-decoration: none;
        font-weight: bold;
    }

    .card .details .center ul li a:hover {
        background: #ff3636;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.9); /* Added box shadow */
    }

  </style>

  <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>

<body>
    <form id="form1" runat="server">
    <div class="nav">
    <ul>
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="AboutUs.aspx">About Us</a></li>
        <li><a href="Programs.aspx">Our Programs</a></li>
        <li><a href="Contact.aspx">Contact Us</a></li>
        <li><a href="Login.aspx">Login/Sign Up</a></li>
    </ul>
</div>
  <div class="container">
    <h1>Child MeetUp</h1>
    <div class="card-container">
      <div class="card">
        <div class="image">
          <img src="Images/meetups1.jpg"/>
        </div>
        <div class="details">
          <div class="center">
            <h1>Sneha<br><span>7 Years Old</span></h1>
            <p>Instrusted in the outdoor games and very bright as well as sharp girl.</p>
            <ul>
              <li><a href="Adoption.aspx">Adoption</a></li>
            </ul>
          </div>
        </div>
      </div>

      <div class="card">
        <div class="image">
          <img src="Images/childmeet2.jpg"/>
        </div>
        <div class="details">
          <div class="center">
            <h1>Akshay<br><span>8 Years Old</span></h1>
            <p>Good in Studies and skill full student with, less talkative like introvert but sharp.</p>
            <ul>
              <li><a href="Adoption.aspx">Adoption</a></li>
            </ul>
          </div>
        </div>
      </div>

      <div class="card">
        <div class="image">
          <img src="Images/meetups2.jpg"/>
        </div>
        <div class="details">
          <div class="center">
            <h1>Sejal<br><span>5 Years Old</span></h1>
            <p>Good in the comunication as well as in studies, learning something new is hobby of her.</p>
            <ul>
              <li><a href="Adoption.aspx">Adoption</a></li>
            </ul>
          </div>
        </div>
      </div>

      <div class="card">
        <div class="image">
          <img src="Images/childmeet4.jpg"/>
        </div>
        <div class="details">
          <div class="center">
            <h1>Vedant<br><span>1 Years Old</span></h1>
            <p>These child has no genetical disease and a healthy kid.</p>
            <ul>
              <li><a href="Adoption.aspx">Adoption</a></li>
            </ul>
          </div>
        </div>
      </div>

      <div class="card">
        <div class="image">
          <img src="Images/childmeet5.jpg"/>
        </div>
        <div class="details">
          <div class="center">
            <h1>Sanchana<br><span>1 Years Old</span></h1>
            <p>Healthy girl, She has not any dieases related to the genetics and all.</p>
            <ul>
              <li><a href="Adoption.aspx">Adoption</a></li>
            </ul>
          </div>
        </div>
      </div>

      <div class="card">
        <div class="image">
          <img src="Images/childmeet6.jpg"/>
        </div>
        <div class="details">
          <div class="center">
            <h1>Shreyash<br><span>12 Years Old</span></h1>
            <p>Bright student with good academics and sports, He always getting top in its class.</p>
            <ul>
              <li><a href="Adoption.aspx">Adoption</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
         </form>
</body>
</html>
