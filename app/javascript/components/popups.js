let popupElement1 = document.getElementById("popup-1");
let popupElement2 = document.getElementById("popup-2");
let popupElement3 = document.getElementById("popup-3");

const togglePopup1 = () => {
  if (popupElement1) {
    let avatarButton1 = document.getElementById("popup-btn-1");
    avatarButton1.addEventListener("click", (event) => {
      event.preventDefault();
      popupElement1.classList.toggle("active");
    });
  }
};

const closePopup1 = () => {
  if (popupElement1) {
    let closeButton1 = document.getElementById("close-btn-1");
    closeButton1.addEventListener("click", (event) => {
      event.preventDefault();
      popupElement1.classList.toggle("active");
    });
  }
};

const togglePopup2 = () => {
  if (popupElement1) {
    let avatarButton2 = document.getElementById("popup-btn-2");
    avatarButton2.addEventListener("click", (event) => {
      event.preventDefault();
      popupElement2.classList.toggle("active");
    });
  }
};

const closePopup2 = () => {
  if (popupElement1) {
    let closeButton2 = document.getElementById("close-btn-2");
    closeButton2.addEventListener("click", (event) => {
      event.preventDefault();
      popupElement2.classList.toggle("active");
    });
  }
};

const togglePopup3 = () => {
  if (popupElement1) {
    let avatarButton3 = document.getElementById("popup-btn-3");
    avatarButton3.addEventListener("click", (event) => {
      event.preventDefault();
      popupElement3.classList.toggle("active");
    });
  }
};

const closePopup3 = () => {
  if (popupElement1) {
    let closeButton3 = document.getElementById("close-btn-3");
    closeButton3.addEventListener("click", (event) => {
      event.preventDefault();
      popupElement3.classList.toggle("active");
    });
  }
};

export { togglePopup1, togglePopup2, togglePopup3, closePopup1, closePopup2, closePopup3 }
