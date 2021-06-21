const leftArrow = document.querySelectorAll('.left-arrow');
const rightArrow = document.querySelectorAll('.right-arrow');
console.log(leftArrow);
console.log(rightArrow);

// ? ----- ----- Event Listener para la flecha derecha. ----- -----
const initRightArrowOnSlider = () => {
  rightArrow.forEach(rightArrow => addEventListener('click', (event) => {
    const cardsRowRight = event.target.closest('.parent-container').querySelector('.carousel-container');
    cardsRowRight.scrollLeft += cardsRowRight.offsetWidth;
    console.log(cardsRowRight.scrollLeft);
    console.log(cardsRowRight.offsetWidth);
  }));
  };

  // ? ----- ----- Event Listener para la flecha izquierda. ----- -----
const initLeftArrowOnSlider = () => {
  leftArrow.forEach(leftArrow => addEventListener('click', (event) => {
    const cardsRowLeft = event.target.closest('.parent-container');
    const cardMoveLeft = cardsRowLeft.querySelector('.carousel-container');
    cardMoveLeft.scrollLeft -= cardMoveLeft.offsetWidth;
    console.log("hola")
  }));
  };


export { initRightArrowOnSlider, initLeftArrowOnSlider };
