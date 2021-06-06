import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["artistas", "músicos", "humoristas", "djs", "animadores", "bailarines", "magos", "payasos"],
    typeSpeed: 70,
    backDelay: 1000,
    startDelay: 1000,
    loop: true
  });
}

export { loadDynamicBannerText };
