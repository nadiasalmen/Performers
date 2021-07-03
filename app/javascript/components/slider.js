import Swiper from 'swiper';
import 'swiper/swiper-bundle.css';
import SwiperCore, { Navigation, Pagination } from 'swiper/core';
// configure Swiper to use modules
SwiperCore.use([Navigation, Pagination]);

const swiper = new Swiper('.mySwiper', {
  // Default parameters

  observer: true,
  observeParents: true,
  slidesPerView: 3,
  spaceBetween: 3,
  slidesPerGroup: 3,

  navigation: {
  nextEl: '#right-arrow',
  prevEl: '#left-arrow',
  },

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
});




let arr_next = document.querySelectorAll('.right-arrow') //your arrows class name
let arr_prev = document.querySelectorAll('.left-arrow') //your arrows class name


const swiper2 = $('.swiper-container').each(function (index, element) {

  $(this).addClass('swiper' + index);
  arr_next[index].setAttribute('id', 'next-arrow' + index);
  arr_prev[index].setAttribute('id', 'prev-arrow' + index);


  new Swiper('.swiper' + index, {
    // Default parameters

    observer: true,
    observeParents: true,
    slidesPerView: 3,
    spaceBetween: 3,
    slidesPerGroup: 3,

    navigation: {
    nextEl: '#next-arrow'+index,
    prevEl: '#prev-arrow'+index
    },

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
  });
});

export { swiper, swiper2 }

