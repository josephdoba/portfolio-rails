class ApplicationController < ActionController::Base
  def hello
    render inline: <<~HTML
    <html>
<head>
  <title>My Portfolio</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <header class="hero">
    <h1 class="catch-phrase">Create Value</h1>
    <h1 class="full-name">Joseph Doba</h1>
    <h1 class="title-name">Full Stack Web Developer</h1>
  </header>
  
  <section class="about">
    <div class="photo">
      <img src="profile.jpg" alt="Profile Photo">
    </div>
    <div class="paragraph">
      <h2>About Me</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam malesuada neque non lorem convallis blandit. Phasellus feugiat massa a urna bibendum, ut aliquet neque varius. Ut interdum aliquet nunc a consequat.</p>
    </div>
  </section>

  <section class="tech-stack">
    <h2>Tech Stack</h2>
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
    <h2>Portfolio Projects</h2>
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
    <h2>Side Projects</h2>
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
