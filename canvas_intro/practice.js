document.addEventListener("DOMContentLoaded", function(){
  var canvas = document.getElementById('myCanvas');
  canvas.width = 500;
  canvas.height = 500;


  var ctx = canvas.getContext('2d');


  ctx.fillStyle = 'blue';
  ctx.fillRect(0, 0, 500, 500);

  // ctx.beginPath();
  // ctx.arc(75, 75, 50, 0, 2 * Math.PI, true);
  // ctx.strokeStyle = "blue";
  // ctx.lineWidth = 9;
  // ctx.stroke();
  ctx.beginPath();
  ctx.arc(60, 60, 25, 0, 2*Math.PI, true);
  ctx.strokeStyle = "orange";
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle = "blue";
  ctx.fill();

});
