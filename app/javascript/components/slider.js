import Swiper from 'swiper';
import 'swiper/swiper-bundle.css';


const initSwiperSlider = () => {
  const swiper = new Swiper('.mySwiper', {
    // Default parameters

    observer: true,
    observeParents: true,
    slidesPerView: 3,
    spaceBetween: 3,
    slidesPerGroup: 3,

    // navigation: {
    //   nextEl: '.swiper-button-next',
    //   prevEl: '.swiper-button-prev',
    // },

    breakpoints: {
      // when window width is >= 320px
      320: {
        slidesPerView: 1,
        spaceBetween: 20,
        slidesPerGroup: 1,
      },
      575: {
        slidesPerView: 1,
        spaceBetween: 20,
        slidesPerGroup: 1
      },
      // when window width is >= 480px
      768: {
        slidesPerView: 2,
        spaceBetween: 30,
        slidesPerGroup: 2
      },
      // when window width is >= 640px
      992: {
        slidesPerView: 2,
        spaceBetween: 5,
        slidesPerGroup: 2
      },
      1200: {
        slidesPerView: 3,
        spaceBetween: 40,
        slidesPerGroup: 3
      }
    }
  })

  const swiper2 = new Swiper('.mySwiper2', {
    // Default parameters

    observer: true,
    observeParents: true,
    slidesPerView: 3,
    spaceBetween: 3,
    slidesPerGroup: 3,

    // navigation: {
    //   nextEl: '.swiper-button-next',
    //   prevEl: '.swiper-button-prev',
    // },

    breakpoints: {
      // when window width is >= 320px
      320: {
        slidesPerView: 1.5,
        spaceBetween: 20,
        slidesPerGroup: 1.5,
      },
      575: {
        slidesPerView: 2,
        spaceBetween: 20,
        slidesPerGroup: 2
      },
      // when window width is >= 480px
      768: {
        slidesPerView: 3,
        spaceBetween: 30,
        slidesPerGroup: 3
      },
      // when window width is >= 640px
      992: {
        slidesPerView: 2.5,
        spaceBetween: 5,
        slidesPerGroup: 2.5
      },
      1200: {
        slidesPerView: 4,
        spaceBetween: 20,
        slidesPerGroup: 4
      }
    }
  })
};

export { initSwiperSlider }

