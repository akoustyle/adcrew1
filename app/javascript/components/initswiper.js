import Swiper from 'swiper';
import "swiper/swiper-bundle.min.css";

var initswiper = () => {

  const swiper =  new Swiper(".mySwiper", {
    // optional paramaters
    loop: true,
    slidesPerView: 3,
    spaceBetween: 0,
    // effect: "coverflow",
    // grabCursor: true,
    // centeredSlides: false,
    // coverflowEffect: {
    //   rotate: 50,
    //   stretch: 0,
    //   depth: 100,
    //   modifier: 1,
    //   slideShadows: true,
    // },
    autoplay: {
      delay: 3500,
      disableOnInteraction: false,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
  });
}

export { initswiper };
