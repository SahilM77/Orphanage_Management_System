<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Programs.aspx.cs" Inherits="Custome_Projects.Programs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Programs</title>
    <style>
        .container {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
        }
        .container .heading{
            margin-left:520px;
        }
        .section {
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
           
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 0px;
            text-decoration: none;
            margin-left:230px;
            width:75px;
            font-weight:600;
            border-radius:5px;
        }

        .navbar a:hover {
            background-color: #b163ff;
            color: black;
        }

        .card {
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: box-shadow 0.3s ease;
        }

        .card:hover {
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.8);
        }

        .card-header {
            background-color: #007BFF;
            color: white;
            padding: 15px;
            font-size: 1.25em;
            text-align: center;
        }

        .card-body {
            padding: 15px;
        }
        .card-body .description{
            font-weight:600;
            margin-left:150px;
            font-size:1.2rem;
        }
        .card-body .titles{
            font-weight:600;
margin-left:150px;
font-size:1.2rem;
        }
        .card-body .rehabilate{
                        font-weight:600;
margin-left:150px;
font-size:1.2rem;
        }
        .card-body p {
            margin: 0;
            font-size: 1em;
            color: #333;
        }

        .card-footer {
            padding: 15px;
            text-align: center;
        }

        .card-footer .btn {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            text-decoration: none;
        }

        .card-footer .btn:hover {
            background-color: #0056b3;
        }
        .card .text2{
            margin-left:85px;
        }
        .card .text3{
            margin-left:70px;
        }
        .card .text4{
            margin-left:75px;
        }
        .card .text5{
            margin-left:75px;
        }
        .card .text6{
            margin-left:65px;
        }
        .card .text7{
            margin-left:90px;
        }
        .card .text8{
            margin-left:75px;
        }
        .card .text9{
            margin-left:65px;
        }
        /* Inner cards styling */
        .service-cards {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 20px;
        }

        .service-cards .card {
            flex: 1;
            min-width: 250px;
            max-width: calc(33.333% - 20px);
        }

        .icon img {
            width: 370px;
            margin-bottom: 10px;
        }
        .icon .imgs2{
            height:261px;
        }
        .icon .imgs3{
            height:263px;
        }
        .icon .educat{
            height:280px;
        }
        .icon .rehabitate{
            height:279px;
        }
        .service-cards h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
            color: #333;
            margin-left:120px;
        }

        .service-cards p {
            font-size: 0.9rem;
            color: #666;
            line-height: 1.5;
        }
        .service-cards .price{
            margin-left:125px;
            font-size: 1.5rem;
            color: #333;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <!-- Navbar -->
         <div class="navbar">
            <a href="Default.aspx">Home</a>
            <a href="Contact.aspx">Contact</a>
            <a href="Programs.aspx">Programs</a>
            <a href="AboutUs.aspx">About Us</a>
        </div>

        <div class="container">
            <h1 class="heading">Our Programs</h1>

            <!-- Healthcare Section -->
            <div class="section" id="healthcareSection">
                <div class="card">
                    <div class="card-header">
                        Healthcare
                    </div>
                    <div class="card-body">
                        <p class="description">Our healthcare programs focus on providing medical services and health education to underserved communities.</p>
                        <div class="service-cards">
                            <div class="card">
                                <div class="icon">
                                    <img src="Images/medical1.jpg" alt="Blood Cancer">
                                </div>
                                <h3>Blood Cancer</h3>
                                <p>The prognosis for blood cancer varies widely depending on the type, stage, and individual factors such as age and overall health. Advances in treatment have improved outcomes significantly.</p>
                                <br />
                                <p class="price">₹ 9,00,000</p>
                            </div>
                            <div class="card">
                                <div class="icon">
                                    <img src="Images/medical2.jpeg" class="imgs2" alt="Brake Adjustment">
                                </div>
                                <h3 class="text2">Heart Operation</h3>
                                <p>Arrhythmias are irregular heartbeats that can be too fast, too slow, or erratic. They can occur due to problems with the heart's electrical system and can lead to complications if not treated.
Symptoms: Palpitations, dizziness, fainting, shortness of breath, and chest pain.
.</p><br />
                                   <p class="price">₹ 15,00,000</p>
                            </div>
                            <div class="card">
                                <div class="icon">
                                    <img src="Images/medical3.jpg" class="imgs3" alt="Cassette Replacement">
                                </div>
                                <h3 class="text3">Pulmonary Embolism</h3>
                                <p>A pulmonary embolism occurs when a blood clot, usually from the deep veins in the legs, travels to the lungs and blocks a pulmonary artery. This can be life-threatening and requires.
Symptoms: Sudden shortness of breath, chest pain that worsens with deep breathing or coughing, rapid heart rate, and lightheadedness.</p>
                                <br />
                                <p class="price">₹ 12,00,000</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="btnHealthcareDetails" runat="server" Text="Learn More" CssClass="btn" OnClick="btnHealthcareDetails_Click" />
                    </div>
                </div>
            </div>

            <!-- Education Section -->
            <div class="section" id="educationSection">
                <div class="card">
                    <div class="card-header">
                        Education
                    </div>
                    <div class="card-body">
                        <p class="titles">We offer educational programs designed to improve literacy, vocational skills, and career opportunities.</p>
                        <div class="service-cards">
                            <div class="card">
                                <div class="icon">
                                    <img src="Images/education1.jpg" alt="Literacy Programs">
                                </div>
                                <h3 class="text4">Literacy Programs</h3>
                                <p>Our literacy programs aim to improve reading and writing skills for children and adults.Literacy programs for orphanages are designed to provide essential education and literacy skills to children who may otherwise lack access to formal schooling. These programs aim to equip orphans with the foundational knowledge needed to improve their future opportunities, empowering them to break the cycle of poverty and lead fulfilling lives. Here's an overview of a typical literacy program for orphanages:</p>
                            </div>
                            <div class="card">
                                <div class="icon">
                                    <img src="Images/education2.jpeg" class="educat" alt="Vocational Training">
                                </div>
                                <h3 class="text5">Vocational Training</h3>
                                <p>We provide vocational training to enhance job skills and career opportunities for the youth.Vocational training programs for children in orphanages aim to equip them with practical skills and knowledge that can help them secure employment, become self-reliant, and successfully transition into adulthood. These programs are especially important for orphans, who often lack the familial support networks that many other children have, making it critical for them to develop marketable skills.</p>
                            </div>
                            <div class="card">
                                <div class="icon">
                                    <img src="Images/education3.jpg" alt="Scholarship Programs">
                                </div>
                                <h3 class="text6">Scholarship Programs</h3>
                                <p>Our scholarship programs offer financial assistance to students pursuing higher education.Scholarship programs can significantly impact the lives of children in orphanages by providing them with educational opportunities and opening doors to a brighter future. Here’s how to effectively set up and manage such programs:Identify Needs: Assess the educational and financial needs of the children in the orphanage to tailor the scholarship program accordingly.</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="btnEducationDetails" runat="server" Text="Learn More" CssClass="btn" OnClick="btnEducationDetails_Click" />
                    </div>
                </div>
            </div>

            <!-- Rehabilitation Section -->
            <div class="section" id="rehabilitationSection">
                <div class="card">
                    <div class="card-header">
                        Rehabilitation
                    </div>
                    <div class="card-body">
                        <p class="rehabilate">Our rehabilitation programs provide support and resources for individuals recovering from injuries and addictions.</p>
                        <div class="service-cards">
                            <div class="card">
                                <div class="icon">
                                    <img src="Images/rehabilations1.jpg" alt="Physical Therapy">
                                </div>
                                <h3 class="text7">Physical Therapy</h3>
                                <p>We offer physical therapy services to help individuals recover from injuries and regain mobility.Providing physical therapy for children in orphanages is crucial for their development and well-being, especially if they have physical disabilities or developmental delays. Here’s how you might approach it:Initial Screening: Assess each child’s physical abilities, developmental milestones, and any specific needs or conditions.
Individualized Plans: Create personalized therapy plans based on the evaluation. This should include short-term and long-term goals.</p>
                            </div>
                            <div class="card">
                                <div class="icon">
                                    <img src="Images/rehabilatios2.jpeg" class="rehabitate" alt="Addiction Recovery">
                                </div>
                                <h3 class="text8">Addiction Recovery</h3>
                                <p>Our addiction recovery programs provide counseling and support for individuals overcoming substance abuse.Addressing addiction recovery for children in orphanages requires a sensitive and comprehensive approach, as these children may be dealing with various trauma and emotional challenges. Here’s a structured approach to implement effective addiction recovery programs:

Conduct thorough assessments to understand the extent of addiction issues, underlying causes, and any co-occurring mental health conditions.</p>
                            </div>
                            <div class="card">
                                <div class="icon">
                                    <img src="Images/rehabilations3.jpg" alt="Mental Health Support">
                                </div>
                                <h3 class="text9">Mental Health Support</h3>
                                <p>We offer mental health support services to promote emotional well-being and resilience.Providing mental health support for children in orphanages is essential to their overall well-being and development. These children often face unique challenges and traumas that require specialized and sensitive approaches. Here’s how to establish and manage effective mental health support programs:Conduct comprehensive assessments to understand each child’s mental health needs. This may involve psychological evaluations, interviews, and observation.</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="btnRehabilitationDetails" runat="server" Text="Learn More" CssClass="btn" OnClick="btnRehabilitationDetails_Click" />
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
