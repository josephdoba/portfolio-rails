// const swiper = new Swiper(".swiper", {
//   effect: "cards",
// });

document.addEventListener("DOMContentLoaded", function () {
  const swiper = new Swiper(".swiper", {
    // Optional parameters
    direction: "horizontal",
    loop: true,
    effect: "cards",
    grabCursor: true,

    // Navigation arrows
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });
});
