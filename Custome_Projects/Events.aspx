<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Custome_Projects.Events" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Events</title>
    
    <style>
       * {
           margin: 0;
           padding: 0;
           box-sizing: border-box;
       }
       body {
           background-color: #2b2b2b; /* Dark background for better contrast */
           min-height: 100vh; /* Ensure body covers at least full height */
           display: flex;
           flex-direction: column; /* Allow stacking of navbar, content, and new section */
           overflow-y: auto; /* Allow vertical scrolling */
       }
       .navbar {
           background-color: #444; /* Darker background for navbar */
           width: 100%;
           height: 60px;
           padding: 10px 20px;
           position: absolute; /* Fixed position for the navbar */
           top: 0; /* Stick to the top */
           left: 0;
           display: flex;
           justify-content: space-between;
           align-items: center;
       }
       
       .navbar a {
           color: white;
           text-decoration: none;
           padding: 10px 15px;
           transition: background-color 0.3s;
           margin-left: 50px;
       }
       .navbar a:hover {
           background-color: rgba(255, 255, 255, 0.2); /* Light hover effect */
           font-weight: 600;
       }
       .container {
           flex-grow: 1; /* Allow the container to expand */
           display: flex;
           align-items: flex-start; /* Align items to the top */
           justify-content: space-between; /* Space between the animation and text */
           width: 90%;
           max-width: 1200px; /* Set max width for responsiveness */
           margin: 60px auto; /* Center the container and add top margin for navbar */
           
       }
       .slider {
           position: relative;
           width: 300px;
           height: 200px; /* Slightly smaller height to keep proportions */
           transform-style: preserve-3d;
           animation: rotate 20s linear infinite;
           margin-left: 50px;
           border-radius: 2px;
           margin-top:250px;
       }
       @keyframes rotate {
           0% {
               transform: perspective(1500px) rotateX(20deg) rotateY(0deg); /* Tilt for upper view */
           }
           100% {
               transform: perspective(1500px) rotateX(20deg) rotateY(360deg); /* Smooth rotation */
           }
       }
       .slider span {
           position: absolute;
           top: 0;
           left: 0;
           width: 100%;
           height: 100%;
           transform-origin: center;
           transform-style: preserve-3d;
           transform: rotateY(calc(var(--i) * 51.4deg)) translateZ(300px); /* Adjusted Z-axis */
       }
       .slider span img {
           position: absolute;
           top: 0;
           left: 0;
           width: 300px;  /* Full width for each image to fit the slider */
           height: 200px; /* Same height for uniform rectangular images */
           object-fit: cover;
           transition: 0.5s ease;
           margin: 0; /* Ensure no gaps between images */
           padding: 0;
           filter: grayscale(100%); /* Set to grayscale by default */
       }
       .slider span:hover img {
           transform: scale(1.1);
           box-shadow: 0 10px 30px rgba(0, 0, 0, 1.0);
           filter: grayscale(0%); /* Remove grayscale on hover */
       }

       /* Text that appears on hover */
       .slider span:hover::after {
           content: attr(data-text); /* Get the text from data-text attribute */
           position: absolute;
           bottom: 10px;
           left: 50%;
           transform: translateX(-50%);
           background-color: rgba(0, 0, 0, 0.7);
           color: white;
           padding: 5px 10px;
           border-radius: 5px;
           font-size: 16px;
           white-space: nowrap;
       }

       .details {
           margin-top:50px;
           width: 50%; /* Text section takes 50% of the container width */
           color: white;
           padding-left: 40px; /* Add some space between the animation and text */
       }
       .details p {
           font-size: 24px; /* Larger font for better readability */
           line-height: 1.5;
       }

       .reveal-section {
           width:100%;
           opacity: 0; /* Initially hidden */
           transform: translateY(50px); /* Move it down */
           transition: opacity 0.6s ease, transform 0.6s ease; /* Smooth transition */
           min-height: 400px; /* Set a minimum height */
           margin: 40px 0; /* Space around the section */
           padding: 20px; /* Inner spacing */
           background-color: rgba(255, 255, 255, 0.1); /* Light background */
           color: white; /* Text color */
           border-radius: 8px; /* Rounded corners */
       }

       .reveal-section.visible {
           opacity: 1; /* Visible when revealed */
           transform: translateY(0); /* Move back to original position */
       }
       .slider1{
    height: 100vh;
    margin-top: -50px;
    width: 100vw;
    overflow: hidden;
    position: relative;
}
.slider1 .list .item{
    width: 100%;
    height: 100%;
    position: absolute;
    inset: 0 0 0 0;
}
.slider1 .list .item img{
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.slider1 .list .item .content{
    position: absolute;
    top: 20%;
    width: 1140px;
    max-width: 80%;
    left: 50%;
    transform: translateX(-50%);
    padding-right: 30%;
    box-sizing: border-box;
    color: #fff;
    text-shadow: 0 5px 10px #0004;
}

.slider1 .list .item .content .title,
.slider1 .list .item .content .type{
    font-size: 5em;
    font-weight: bold;
    line-height: 1.3em;
}
.slider1 .list .item .type{
    color: #14ff72cb;
}
.slider1 .list .item .button{
    display: grid;
    grid-template-columns: repeat(2, 130px);
    grid-template-rows: 40px;
    gap: 5px;
    margin-top: 20px;
}
.slider1 .list .item .button button{
    border: none;
    background-color: #eee;
    font-family: Poppins;
    font-weight: 500;
    cursor: pointer;
    transition: 0.4s;
    letter-spacing: 2px;
}


.slider1 .list .item .button button:hover{
    letter-spacing: 3px;
}
.slider1 .list .item .button button:nth-child(2){
    background-color: transparent;
    border: 1px solid #fff;
    color: #eee;
}





/* Thumbnail Section  */
.thumbnail{
    position: absolute;
    bottom: 50px;
    left: 50%;
    width: max-content;
    z-index: 100;
    display: flex;
    gap: 20px;
}

.thumbnail .item{
    width: 150px;
    height: 220px;
    flex-shrink: 0;
    position: relative;
}

.thumbnail .item img{
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 20px;
    box-shadow: 5px 0 15px rgba(0, 0, 0, 0.3);
}


/* nextPrevArrows Section  */
.nextPrevArrows{
    position: absolute;
    top: 80%;
    right: 52%;
    z-index: 100;
    width: 300px;
    max-width: 30%;
    display: flex;
    gap: 10px;
    align-items: center;
}
.nextPrevArrows button{
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background-color: #14ff72cb;
    border: none;
    color: #fff;
    font-family: monospace;
    font-weight: bold;
    transition: .5s;
    cursor: pointer;
}
.nextPrevArrows button:hover{
    background-color: #fff;
    color: #000;
}

/* Animation Part */
.slider1 .list .item:nth-child(1){
    z-index: 1;
}


/* animation text in first item */
.slider1 .list .item:nth-child(1) .content .title,
.slider1 .list .item:nth-child(1) .content .type,
.slider1 .list .item:nth-child(1) .content .description,
.slider1 .list .item:nth-child(1) .content .buttons
{
    transform: translateY(50px);
    filter: blur(20px);
    opacity: 0;
    animation: showContent .5s 1s linear 1 forwards;
}
@keyframes showContent{
    to{
        transform: translateY(0px);
        filter: blur(0px);
        opacity: 1;
    }
}
.slider1 .list .item:nth-child(1) .content .title{
    animation-delay: 0.4s !important;
}
.slider1 .list .item:nth-child(1) .content .type{
    animation-delay: 0.6s !important;
}
.slider1 .list .item:nth-child(1) .content .description{
    animation-delay: 0.8s !important;
}
.slider1 .list .item:nth-child(1) .content .buttons{
    animation-delay: 1s !important;
}




/* Animation for next button click */
.slider1.next .list .item:nth-child(1) img{
    width: 150px;
    height: 220px;
    position: absolute;
    bottom: 50px;
    left: 50%;
    border-radius: 30px;
    animation: showImage .5s linear 1 forwards;
}

@keyframes showImage{
    to{
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border-radius: 0;
    }
}

.slider1.next .thumbnail .item:nth-last-child(1){
    overflow: hidden;
    animation: showThumbnail .5s linear 1 forwards;
}
.slider1.prev .list .item img{
    z-index: 100;
}


@keyframes showThumbnail{
    from{
        width: 0;
        opacity: 0;
    }
}


.slider1.next .thumbnail{
    animation: effectNext .5s linear 1 forwards;
}

@keyframes effectNext{
    from{
        transform: translateX(150px);
    }
}



/* Animation for prev button click */
.slider1.prev .list .item:nth-child(2){
    z-index: 2;
}

.slider1.prev .list .item:nth-child(2) img{
    animation: outFrame 0.5s linear 1 forwards;
    position: absolute;
    bottom: 0;
    left: 0;
}
@keyframes outFrame{
    to{
        width: 150px;
        height: 220px;
        bottom: 50px;
        left: 50%;
        border-radius: 20px;
    }
}

.slider1.prev .thumbnail .item:nth-child(1){
    overflow: hidden;
    opacity: 0;
    animation: showThumbnail .5s linear 1 forwards;
}
.slider1.next .nextPrevArrows button,
.slider1.prev .nextPrevArrows button{
    pointer-events: none;
}


.slider1.prev .list .item:nth-child(2) .content .title,
.slider1.prev .list .item:nth-child(2) .content .type,
.slider1.prev .list .item:nth-child(2) .content .description,
.slider1.prev .list .item:nth-child(2) .content .buttons
{
    animation: contentOut 1.5s linear 1 forwards!important;
}

@keyframes contentOut{
    to{
        transform: translateY(-150px);
        filter: blur(20px);
        opacity: 0;
    }
}
    </style>
</head>
<body>

    <div class="navbar">
        <div class="nav-links">
            <a href="#Default.aspx">Home</a>
            <a href="#AboutUs.aspx">About</a>
            <a href="#Programs.aspx">Programs</a>
            <a href="#Contact.aspx">Contact</a>
        </div>
    </div>

    <div class="container">
        <!-- Slider on the left side -->
        <div class="slider">
            <span style="--i:0;" data-text="IndependenceDay Event"><img src="images/event01.jpg" alt="Event Image 1"></span>
            <span style="--i:1;" data-text="Holi Event"><img src="images/event02.jpg" alt="Event Image 2"></span>
            <span style="--i:2;" data-text="Save Tree Event"><img src="images/event03.jpeg" alt="Event Image 3"></span>
            <span style="--i:3;" data-text="Prizes Distribution"><img src="images/event04.jpg" alt="Event Image 4"></span>
            <span style="--i:4;" data-text="Art Competition"><img src="images/event05.jpg" alt="Event Image 5"></span>
            <span style="--i:5;" data-text="Sport Event"><img src="images/event07.jpg" alt="Event Image 6"></span>
            <span style="--i:6;" data-text="Yoga Day Event"><img src="images/event09.jpg" alt="Event Image 7"></span>
        </div>

        <!-- Text on the right side -->
        <div class="details">
            <p>"Dear children, always remember that you are not alone; together, we form a beautiful family filled with love and hope. Each of you is a unique star in this world, and your light can inspire others in ways you can't even imagine. Dream big, for your dreams are valid and achievable. You possess the strength to overcome any challenge that comes your way, so never give up on yourselves. Every small step you take today brings you closer to a future filled with endless possibilities. Embrace your uniqueness, as it is your superpower, and let it shine brightly for the world to see. Together, we can create a joyful and kind world. The best is yet to come, so keep believing in your journey, knowing that you are capable of greatness. With every smile and laugh, you spread joy, and we can't wait to see how far you will</p>
        </div>
    </div>

    <!-- New Section -->
    <section class="reveal-section">
        <h2>Upcoming Events</h2>
        <p>Join us for our upcoming events that will inspire and bring joy to our community. Stay tuned for more details!</p>
        <div class="slider1">
      <div class="list">
        <div class="item">
          <img src="images\slid01.jpg" alt="" />

          <div class="content">
            <div class="title">Drama Event</div>
            <div class="type">Drama</div>
            <div class="description">
              "Each one tells a story. What will ours say?" Another chimes in, "Let’s be heroes! Together, we can change the world!" As laughter fills the air, the narrator shares, "In this place, where dreams take flight, we may be small, but our hearts shine bright!" The children revel in the power of imagination, transforming into characters of courage and friendship, and reminding one another that every smile shared adds a little magic to their day. In this moment, they are not just orphans; they are a family, bound by love and the limitless possibilities of their dreams.


            </div>
            <div class="button">
              <button>SEE MORE</button>
            </div>
          </div>
        </div>

        <div class="item">
          <img src="images\slid02.jpg" alt="" />

          <div class="content">
            <div class="title">Sports Event</div>
            <div class="type">Sport</div>
            <div class="description">
              As the sun rises on the sports field, the air buzzes with excitement and anticipation. Children from the orphanage gather, their faces painted with determination and joy, ready to compete in a day filled with games and laughter. "Today, we’re not just playing; we’re showing the world what we can achieve together!" one child exclaims, rallying their friends. The races begin, with each child sprinting with all their might, cheered on by their teammates. Amid the friendly competition, a spirit of camaraderie emerges, reminding them that winning isn’t everything; it’s about supporting one another and celebrating every small victory. The day culminates in a heartwarming ceremony where each child receives a medal, symbolizing not just their efforts but the strength of their unity. In this moment, they realize that together they can overcome any obstacle, turning every challenge into an opportunity for joy and growth.
            </div>
            <div class="button">
              <button>SEE MORE</button>
            </div>
          </div>
        </div>

        <div class="item">
          <img src="images\slid03.jpg" alt="" />

          <div class="content">
            <div class="title">Gathering Event</div>
            <div class="type">Dance</div>
            <div class="description">
              As the lights dim and the music begins to play, the orphanage transforms into a vibrant stage filled with energy and excitement. Children of all ages gather, their eyes sparkling with anticipation, ready to express themselves through dance. "Tonight, we’re not just performers; we’re storytellers!" shouts one enthusiastic child, inspiring everyone to join in. Each dance tells a unique story, from traditional folk dances celebrating their heritage to lively hip-hop routines that radiate joy. Laughter and cheers fill the air as the audience, made up of staff, volunteers, and fellow children, clap along to the rhythm. As the final performance comes to a close, the room erupts in applause, celebrating not only the talent on display but also the bonds of friendship that have grown through their shared passion for dance. In this magical moment, they realize that through movement, they can convey their hopes, dreams, and the strength of their community, creating memories that will last a lifetime.
            </div>
            <div class="button">
              <button>SEE MORE</button>
            </div>
          </div>
        </div>

        <div class="item">
          <img src="images\slid04.jpg" alt="" />

          <div class="content">
            <div class="title">HOLI Event</div>
            <div class="type">HOLI</div>
            <div class="description">
              As the sun shines brightly in the sky, the orphanage bursts into a riot of colors, marking the joyful celebration of Holi. Children, clad in white outfits, eagerly gather in the courtyard, their faces alight with excitement. "Today, we celebrate love, friendship, and happiness!" shouts one child, brandishing a handful of vibrant powders. Laughter echoes as they playfully throw colored powders at each other, transforming the space into a kaleidoscope of hues. Traditional music fills the air, inviting everyone to dance and sing along, creating an atmosphere of pure joy. Amidst the festivities


            </div>
            <div class="button">
              <button>SEE MORE</button>
            </div>
          </div>
        </div>
      </div>

      <div class="thumbnail">
        <div class="item">
          <img src="images\slid01.jpg" alt="" />
        </div>
        <div class="item">
          <img src="images\slid02.jpg" alt="" />
        </div>
        <div class="item">
          <img src="images\slid03.jpg" alt="" />
        </div>
        <div class="item">
          <img src="images\slid04.jpg" alt="" />
        </div>
      </div>

      <div class="nextPrevArrows">
        <button class="prev"><</button>
        <button class="next">></button>
      </div>
    </div>
    </section>

    <script>
        // Function to handle the scroll reveal effect
        function revealOnScroll() {
            const revealSection = document.querySelector('.reveal-section');
            const windowHeight = window.innerHeight;
            const sectionTop = revealSection.getBoundingClientRect().top;

            if (sectionTop < windowHeight) {
                revealSection.classList.add('visible');
            }
        }

        // Event listener for scroll
        window.addEventListener('scroll', revealOnScroll);

        // Initial check in case the section is already in view
        revealOnScroll();

        let nextBtn = document.querySelector('.next')
        let prevBtn = document.querySelector('.prev')

        let slider = document.querySelector('.slider1')
        let sliderList = slider.querySelector('.slider1 .list')
        let thumbnail = document.querySelector('.slider1 .thumbnail')
        let thumbnailItems = thumbnail.querySelectorAll('.item')

        thumbnail.appendChild(thumbnailItems[0])

        // Function for next button 
        nextBtn.onclick = function () {
            moveSlider('next')
        }


        // Function for prev button 
        prevBtn.onclick = function () {
            moveSlider('prev')
        }


        function moveSlider(direction) {
            let sliderItems = sliderList.querySelectorAll('.item')
            let thumbnailItems = document.querySelectorAll('.thumbnail .item')

            if (direction === 'next') {
                sliderList.appendChild(sliderItems[0])
                thumbnail.appendChild(thumbnailItems[0])
                slider.classList.add('next')
            } else {
                sliderList.prepend(sliderItems[sliderItems.length - 1])
                thumbnail.prepend(thumbnailItems[thumbnailItems.length - 1])
                slider.classList.add('prev')
            }


            slider.addEventListener('animationend', function () {
                if (direction === 'next') {
                    slider.classList.remove('next')
                } else {
                    slider.classList.remove('prev')
                }
            }, { once: true }) // Remove the event listener after it's triggered once
        }
    </script>
</body>
</html>
