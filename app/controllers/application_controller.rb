class ApplicationController < ActionController::Base
  def hello
    render inline: <<~HTML
    <html>
<head>
  <title>My Portfolio</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <header class="hero">
    <h1 class="catch-phrase">Create Value</h1>
    <h1 class="full-name">Joseph Doba</h1>
    <h2 class="title-name">Full Stack Web Developer</h2>
  </header>
  
  <section class="about">
    <div class="photo">
      <img src="https://media.licdn.com/dms/image/C4D03AQG_LLi80LYL6g/profile-displayphoto-shrink_800_800/0/1517023993322?e=1694044800&v=beta&t=3biQKkKUw8RcUgnMPcKxtXgoWfnHNUhFEL5BfGS_wjc" alt="Profile Photo">
    </div>
    <div class="paragraph">
      <h3>About Me</h3>
      <p>Hello World! I'm an IT Professional currently living in beautiful British Columbia. Throughout my career, I have gained valuable experience in music production, live sound, audio-engineering, mentoring, and sound design. I have also acquired proficiency in various full-stack web development technologies such as HTML, CSS, Javascript, Typescript, NodeJS, React, Express, Ruby/Ruby on Rails, Cypress, and relational databases. I am looking forward to my first Full-Stack Web Development role where I can refine my craft and learn. In my spare time, I create electronic music, work on my coaching business, play piano, and enjoy the nerdier things in life.

      I believe that my diverse background in music and web development technology has equipped me with a unique set of skills that allows me to approach challenges with a creative and analytical mindset. I am always looking for new opportunities to learn and grow both personally and professionally. I can't wait to see where my passions take me next.</p>
    </div>
  </section>

  <section class="tech-stack">
    <h3>Tech Stack</h3>
    <ul>
      <li>Javascript</li>
      <li>Typescript</li>
      <li>React</li>
      <li>HTML</li>
      <li>CSS</li>
    </ul>
    <ul>
      <li>Ruby</li>
      <li>Ruby On Rails</li>
      <li>Postgres</li>
      <li>NodeJS</li>
      <li>Cypress</li>
    </ul>
    <ul>
      <li>Github</li>
      <li>Jira</li>
      <li>Heroku</li>
    </ul>
  </section>
  
  <section class="portfolio">
    <h3>Portfolio Projects</h3>
    <div class="project">
      <h3>Project 1</h3>
      <p>Description of project 1</p>
    </div>
    <div class="project">
      <h3>Project 2</h3>
      <p>Description of project 2</p>
    </div>
    <!-- Add more project items as needed -->
  </section>
  
  <section class="side-projects">
    <h3>Side Projects</h3>
    <div class="project">
      <h3>Side Project 1</h3>
      <p>Description of side project 1</p>
    </div>
    <div class="project">
      <h3>Side Project 2</h3>
      <p>Description of side project 2</p>
    </div>
    <!-- Add more side project items as needed -->
  </section>
  
  <footer>
    <p>&copy; 2023 My Portfolio. All rights reserved.</p>
  </footer>
</body>
</html>
    HTML
  end

end
