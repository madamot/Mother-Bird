var el = document.getElementById('username');
var elMsg = document.getElementById('feedback');

function checkUsername() {
  if (el.value.length < 5) {
    elMsg.textContent = 'Not long enough, yet...';
  } else {
    elMsg.textContent = '';
  }
}

function tipUsername() {
  elMsg.textContent = 'Username must be at least 5 characters';
}

el.addEventListener('focus', tipUsername, false);
el.addEventListener('blur', checkUsername, false);

// function checkLength(e, minLength) {
//   if (!e) {
//     e = window.event;
//   }
//   var el = e.target || e.srcElement;
//   var elMsg = el.nextSibling;
//
//   if (el.value.length < minLength) {
//     elMsg.textContent = 'Username must be at least ' + minLength + ' characters or more';
//   } else {
//     elMsg.textContent = '';
//   }
// }
//
// var elUsername = document.getElementById('username');
// if (elUsername.addEventListener) {
//   elUsername.addEventListener('blur', function(e) {
//     checkLength(e, 5);
//   }, false);
// } else {
//   elUsername.attachEvent('onblur', function(e) {
//     checkLength(e, 5);
//   });
// }
