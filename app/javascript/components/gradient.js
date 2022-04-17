// import $ from 'jquery'
// const mouseMove = ((event) => {
//   const windowWidth = $(window).width();
//   const windowHeight = $(window).height();

//   const mouseXpercentage = Math.round(event.pageX / windowWidth * 100);
//   const mouseYpercentage = Math.round(event.pageY / windowHeight * 100);

//   $('body').css('background', 'gradient(at ' + mouseXpercentage + '% ' + mouseYpercentage + '%, #3498db, #9b59b6)');
// });
// const pageGradient = document.querySelector('body')
// pageGradient.onmousemove = function(e) {
//   var x = e.pageX - pageGradient.offsetLeft - pageGradient.offsetParent.offsetLeft
//   var y = e.pageY - pageGradient.offsetTop - pageGradient.offsetParent.offsetTop
//   pageGradient.style.setProperty('--x', x + 'px')
//   pageGradient.style.setProperty('--y', y + 'px')
//   console.log(pageGradient);
// }
// export { pageGradient };

// var btn = document.querySelector('.mouse-cursor-gradient-tracking')
// btn.onmousemove = function(e) {
//   var x = e.pageX - btn.offsetLeft - btn.offsetParent.offsetLeft
//   var y = e.pageY - btn.offsetTop - btn.offsetParent.offsetTop
//   btn.style.setProperty('--x', x + 'px')
//   btn.style.setProperty('--y', y + 'px')
// }
