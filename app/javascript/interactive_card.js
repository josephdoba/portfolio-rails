document
  .getElementById("interactive-card")
  .addEventListener("mousemove", function (e) {
    var width = this.clientWidth; // Card's width
    var height = this.clientHeight; // Card's height
    var x = e.clientX - this.offsetLeft - width / 2; // Horizontal mouse position relative to card center
    var y = (e.clientY - this.offsetTop - height / 2) * -1; // Vertical mouse position relative to card center
    var rotationY = (x / width) * 30; // Horizontal rotation factor, can be adjusted
    var rotationX = (y / height) * 30; // Vertical rotation factor, can be adjusted

    // Apply the CSS transformation
    this.style.transform = `perspective(1000px) rotateX(${rotationX}deg) rotateY(${rotationY}deg)`;
  });

// Remove the transformation when the mouse leaves the card
document
  .getElementById("interactive-card")
  .addEventListener("mouseleave", function () {
    this.style.transform = `perspective(1000px) rotateX(0deg) rotateY(0deg)`;
  });
