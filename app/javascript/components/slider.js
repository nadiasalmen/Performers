const cardsRow = document.querySelector('.carousel-container');

const leftArrow = document.querySelector('.left-arrow');
const rightArrow = document.querySelector('.right-arrow');

// const cardsRow2 = document.querySelector('.acustic');

// const leftArrow2 = document.querySelector('.left-arrow2');
// const rightArrow2 = document.querySelector('.right-arrow2');

// ? ----- ----- Event Listener para la flecha derecha. ----- -----
const initRightArrowrOnSlider = () => {
  rightArrow.addEventListener('click', () => {
    cardsRow.scrollLeft += cardsRow.offsetWidth;
  });
  //rightArrow2.addEventListener('click', () => {
  //  cardsRow2.scrollLeft += cardsRow2.offsetWidth;
  //});
};

// ? ----- ----- Event Listener para la flecha izquierda. ----- -----
const initLeftArrowrOnSlider = () => {
  leftArrow.addEventListener('click', () => {
    cardsRow.scrollLeft -= cardsRow.offsetWidth;
  });
  //leftArrow2.addEventListener('click', () => {
  //  cardsRow2.scrollLeft -= cardsRow2.offsetWidth;
  //});
};


export { initRightArrowrOnSlider, initLeftArrowrOnSlider };
