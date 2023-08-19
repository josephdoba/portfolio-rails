document.addEventListener("DOMContentLoaded", function () {
  const hamburger = document.querySelector(".hamburger");

  if (hamburger) {
    hamburger.addEventListener("click", function () {
      const content = document.querySelector(".navbar-content");
      if (content.style.display === "flex") {
        content.style.display = "none";
      } else {
        content.style.display = "flex";
      }
    });
  }
});
