const initSidenav = () => {
  const openButton = document.querySelector('.openbtn');
  openButton.addEventListener('click', () => {
    document.getElementById("mySidebar").style.width = "100vw";
    document.getElementById("mySidebar").classList.add("active");
    // document.querySelector("main-container").style.opacity = "0.1";
  });

  const closeButton = document.querySelector('.closebtn');
  closeButton.addEventListener('click', () => {
    document.getElementById("mySidebar").style.width = "0vw";
    document.getElementById("mySidebar").classList.remove("active");
  });
}

export { initSidenav };
