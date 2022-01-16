import $ from "jquery";

const initMouseTracking = () => {
  $(document).mousemove((event) => {
    const windowWidth = $(window).width();
    const windowHeight = $(window).height();

    const mouseXpercentage = Math.round(event.pageX / windowWidth * 100);
    const mouseYpercentage = Math.round(event.pageY / windowHeight * 100);

    $('.body').css('background', 'gradient(a ' + mouseXpercentage + '% ' + mouseYpercentage + '%, #3498db, #9b59b6)');
  });
}

export { initMouseTracking };
