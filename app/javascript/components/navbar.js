const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-per');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-per-black');
      } else {
        navbar.classList.remove('navbar-per-black');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
