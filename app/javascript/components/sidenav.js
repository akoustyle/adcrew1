const initSidenav = () => {
  const openButton = document.querySelector('.main-sidebar .openbtn');
  if (openButton) {
    openButton.addEventListener('click', () => {
      document.getElementById("mySidebar").style.width = "250px";
      document.querySelector(".main-sidebar").style.marginRigth = "250px";
    })
  }

  const closeButton = document.querySelector('.sidebar .closebtn');
  if (closeButton) {
    closeButton.addEventListener('click', () => {
      document.getElementById("mySidebar").style.width = "0px";
      document.querySelector(".main-sidebar").style.marginRigth= "0px";
    })
  }
}

export { initSidenav };
