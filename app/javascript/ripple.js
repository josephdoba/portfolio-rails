document.addEventListener("DOMContentLoaded", () => {
  document.querySelectorAll(".ripple").forEach((el) => {
    const color = el.getAttribute("data-ripple-color");
    el.style.color = color; // this sets the letter's color, optional if you don't want to change the letter's color
    const styles = `
        .ripple:hover::before { background-color: ${color}; }
        .ripple:hover::after { background-color: ${color}; }
    `;
    const styleSheet = document.createElement("style");
    styleSheet.type = "text/css";
    styleSheet.innerText = styles;
    document.head.appendChild(styleSheet);
  });
});
