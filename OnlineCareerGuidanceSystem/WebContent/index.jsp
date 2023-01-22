<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
@import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@700&display=swap");

:root {
  --matte-white: rgb(253, 251, 249);
  --matte-black: rgb(31, 31, 31);
  --matte-cyan: rgb(0, 255, 255);
}
html {
  scroll-behavior: smooth;
}
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
body {
  background-color: var(--matte-black);
  font-family: "Open Sans", sans-serif;
  font-weight: 500;
  font-size: 17px;
}
.section-margin {
  margin: 4rem auto 4rem auto;
}

/* ============Nav-Bar=========== */
#nav-bar {
  position: fixed;
  top: 0;
  width: 100%;
  background-color: var(--matte-black);
}
.container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0px 50px;
}

/* -----------logo----------- */
.logo {
  margin-left: 10px;
  cursor: pointer;
  color: var(--matte-white);
  font-size: 2rem;
  transition: all 0.3s ease-in;
}
.cyan-font {
  color: var(--matte-cyan);
}
.logo:hover {
  color: var(--matte-cyan);
}
/* --------nav-link-------- */
.nav1 ul {
  height: 55px;
  display: flex;
  align-items: center;
}
#click {
  display: none;
}
.nav1 ul li {
  list-style: none;
  padding: 0 20px;
}
.nav1 ul li a {
  color: var(--matte-white);
  text-decoration: none;
  transition: all 0.4s ease;
}
.nav1 ul li a:hover {
  color: var(--matte-cyan);
}
.btn {
  border-style: none;
  font-size: 16px;
  width: auto;
  padding: 5px 20px;
  background: var(--matte-white);
  color: var(--matte-black);
  transition: all 0.3s ease;
  cursor: pointer;
  border-radius: 5px;
}
.btn:hover {
  background-color: var(--matte-cyan);
}
/* ---------mobile-nav-bar---------- */
.nav1 .menu-btn i {
  color: var(--matte-white);
  font-size: 25px;
  display: none;
}
hr {
  margin: 0rem 1.9rem;
  opacity: 0.5;
}
/* ============media query nav =============*/
@media (max-width: 770px) {
  .container {
    padding: 0px 25px;
  }
  .logo {
    font-size: 1.5rem;
  }
  .nav1 {
    padding: 1rem;
  }
  .nav1 .menu-btn i {
    display: block;
  }
  .nav1 ul {
    top: 58px;
    left: -100%;
    position: fixed;
    display: block;
    text-align: center;
    height: 100vh;
    width: 70vw;
    background-color: var(--matte-white);
    transition: all 0.3s ease;
    z-index: 1;
  }
  #click:checked ~ ul {
    left: 0%;
  }

  #click:checked ~ .menu-btn i:before {
    content: "\f00d";
  }
  .nav1 ul li {
    margin: 70px;
    padding: 0px;
  }
  .nav1 ul li a {
    font-size: 17px;
    color: var(--matte-black);
  }
  
  .btn {
    font-size: 22px;
    color: var(--matte-white);
    background-color: var(--matte-black);
  }
  .btn:hover {
    color: var(--matte-black);
    background-color: var(--matte-cyan);
  }
}

/* ===========hero-section============ */
#hero {
  margin-top: 60px;
  display: flex;
  justify-content: center;
  align-items: center;
  grid-gap: 0.7rem;
}
#hero .content {
  margin: 1.5rem;
}
#hero .content h1 {
  font-size: 3.5rem;

  color: var(--matte-white);
}

#hero .content .explore {
  font-size: 1.5rem;
  width: auto;
  color: var(--matte-white);
  text-decoration: none;
  background-color: var(--matte-cyan);
  margin-top: 2rem;
  padding: 10px 20px;
  border-style: none;
  color: var(--matte-black);
  background-color: var(--matte-white);
  font-weight: 520;
  border-radius: 5px;
  transition: all 0.3s ease;
}
#hero .content .explore:hover {
  background-color: var(--matte-cyan);
}
#hero img {
  margin: 1.4rem;
}

/* ==============media hero============ */

@media (max-width: 900px) {
  #hero {
    flex-direction: column;
    grid-template-columns: 1fr;
  }
  #hero .content h1 {
    font-size: 2.3rem;
  }
  #hero img {
    width: 450px;
  }
  #hero .content .explore {
    font-size: 1.3rem;
  }
}
@media (max-width: 400px) {
  #hero img {
    width: 300px;
  }
}
/* ==============how work============== */
#how-work {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 1.7rem;
  padding: 2rem;
}

.wrap {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 2rem;
  flex-wrap: wrap;
}
.work {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 270px;
  width: 250px;
  border-bottom: 3px solid var(--matte-cyan);
  color: var(--matte-white);
  background-color: rgb(51, 51, 51);
  padding: 1.5rem;
  text-align: center;
  gap: 1rem;
}
.work h3 {
  color: var(--matte-cyan);
}
.work h4 {
  font-size: 1.5rem;
}
 a {
  color: var(--matte-cyan);
}

/* =============video============== */
h3 {
  font-size: 2.5rem;
  color: var(--matte-white);
}
#perfect {
  margin: 30px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

#perfect > iframe {
  max-width: 560px;
  width: 100%;
  margin-top: 30px;
  transition: all 0.3s ease;
}

#perfect #video:hover {
  transform: scale(1.06);
}
@media (max-width: 750px) {
  h3 {
    font-size: 2rem;
  }
}

/* ================contact us=============== */
#contact {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

#contact p {
  font-size: 1.5rem;
  color: var(--matte-cyan);
  text-align: center;
  margin: 7px;
  margin-bottom: 28px;
}
#form {
  display: flex;
  gap: 3rem;
  margin: 2rem;
}
#email {
  font-size: 1.5rem;
  height: 70x;
  outline: none;
  border: none;
  padding: 15px 7px;
  border-radius: 5px;
}
.sub-btn {
  border-style: none;
  font-size: 1.5rem;
  width: auto;
  padding: 10px 20px;
  background: var(--matte-white);
  color: var(--matte-black);
  transition: all 0.3s ease;
  cursor: pointer;
  border-radius: 5px;
}
.sub-btn:hover {
  background-color: var(--matte-cyan);
}

@media (max-width: 750px) {
  #form {
    flex-direction: column;
    gap: 1.5rem;
  }
}

/* =============Top Design============ */
#top-design {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
#top-design h3 {
  margin: 25px;
}
#top-design .design-grid {
  display: flex;
  gap: 20px;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  margin-bottom: 25px;
}

#top-design .design-grid .area {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  transition: all 0.3s ease;
}
#top-design .design-grid .area:hover {
  transform: scale(1.06);
}

#top-design .design-grid .area p {
  font-size: 1rem;
  color: var(--matte-white);
  text-decoration: underline;
  text-decoration-color: var(--matte-cyan);
}

/* ===========featured product=========== */
#featured {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
#featured h3 {
  margin: 25px;
}
#featured .product-grid {
  display: flex;
  gap: 35px;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  margin-bottom: 25px;
  transition: all 0.3s ease;
}

#featured .product-grid .product {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 5px;
}
#featured .product-grid :hover {
  transition: all 0.3s ease;
  transform: scale(1.05);
}
#featured .product-grid .product h4 {
  font-size: 1.2rem;
  color: var(--matte-white);
  text-decoration: underline;
  text-decoration-color: var(--matte-cyan);
}
#featured .product-grid .product p {
  font-size: 0.8rem;
  color: var(--matte-white);
}
.fa-star {
  color: var(--matte-white);
}
.checked {
  color: var(--matte-cyan);
}
.star-rate {
  font-size: 0.8rem;
}

/* =================footer================= */
footer {
  margin: 25px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction:column;
  height: 50px;
  color: var(--matte-white);
  font-size: 16px;
  opacity: 70%;
  text-align: center;
}

</style>
</head>
<body>

<script src="https://kit.fontawesome.com/9d1a3267eb.js" crossorigin="anonymous"></script>

<header>
  <nav id="nav-bar">
    <div class="container">
      <div class="logo">
        <img src="" class="header-img">Online Career Guidance System<span class="cyan-font">.</span>
      </div>

      <div class="nav1">
        <input type="checkbox" id="click">
        <label for="click" class="menu-btn">
          <i class="fas fa-bars"></i>
        </label>
        <ul>

          <li><a class="nav-link" href="Login.jsp">Login</a></li>
         
           <li><a class="nav-link" href="Register.jsp">Register</a></li>
           <li><a class="nav-link" href="Admin.jsp">Admin</a></li>
         
          

        </ul>
      </div>
    </div>
    <hr>
  </nav>

</header>

  <section id="hero">
    <div class="content">
      <h1><span class="cyan-font"> We provide Guidance<br></span> towards your dream!!</h1>
      <br>
     
      <a  class="explore" href="Aboutus.jsp">About Us</a> 
    </div>
    <div><img src="data:image/webp;base64,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" alt=""></div>
  </section>
  <br><br><br><br><br><br><br><br><br><br>
 <footer class="section-margin">
  
 Copyright © 2021. We support you in building your career that makes your life lucid. 
    
</footer>
</body>
</html>