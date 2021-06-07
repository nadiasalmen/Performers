import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const bannerTyped = document.querySelector('#banner-typed-text');
  if (bannerTyped) {
    new Typed('#banner-typed-text', {
      strings: ["artistas", "músicos", "humoristas", "DJs", "animadores", "bailarines", "magos", "payasos"],
      typeSpeed: 70,
      backDelay: 1000,
      startDelay: 1000,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
