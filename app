<?php 

include './inc/db.php';
include './inc/form.php';

$sql = 'SELECT * FROM users ORDER BY RAND() LIMIT 1';
 $result = mysqli_query($conn,$sql);
 $users = mysqli_fetch_all($result,MYSQLI_ASSOC);

 
mysqli_free_result($result);
mysqli_close($conn);

?>

<!DOCTYPE html>
<html lang="en" dir=rtl>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/bootstrap.rtl.min.css">
  <link rel="stylesheet" href="./css/style.css">
    <title>Document</title>
</head>
<body>
  <h1>hi33</h1>

<div class="container">
  
<div class="=position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">

<div class="col-md-5 p-lg-5 mx-auto my-5">
<h1 class="display-4 fw-normal">اربح</h1>
<h3 id="countdown"></h3>
<br>
<p class="lead fw-normal">باقي على فتح تسجيل </p>
<a  class="btn btn-outline-secondary" href="#">للسحب على ربح نسخة مجانية من برنامج</a>
</div>
<div class="product-device shadow-sm d-none d-md-block"></div>
<div class="product-device product-device-2 shadow-sm d-none d-md-block "></div>
</div>

<script src="./js/bootstrap.bundle.min.js"></script>

<script src="./js/script.js"></script>
<center>
<ul class="list-group list-group-flush">
  <li class="list-group-item">تابع البث المباشر على صفحة </li>
  <li class="list-group-item">بث لمدة ساعة عبارة عن اسىلة واجوبة </li>
  <li class="list-group-item">سجل اسمك وايميلك </li>
  <li class="list-group-item">سيتم اختيار اسم واحد </li>
  <li class="list-group-item">الرابح سيحصل على نسخة مجانية من برنامج</li>
</ul>
</center>

<div class="=position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center ">

<div class="col-md-5 p-lg-5 mx-auto my-5">
<form class="mb-5" action="index.php" method="POST">
    <h3> الرجاء ادخال معلوماتك  </h3>
   
    <div class="mb-3">
        <label for="firstName" class="form-label">اسمك الاول </label>
        <input type="text" name="firstName" class="form-control" id="firstName"  aria-describedby="firstNameHelp" >
        <div id="firstNameHelp" class="form-text error"><?php echo $errors['firstNameError'] ?></div>
    </div>

    <div class="mb-3">
        <label for="lastName" class="form-label">اسمك الاخير </label>
        <input type="text" name="lastName" class="form-control" id="lastName" aria-describedby="lastNameHelp">

        <div id="lastNameHelp" class="form-text error "><?php echo $errors['lastNameError'] ?></div>
    </div>

    <div class="mb-3">
        <label for="email" class="form-label"> ايميلك  </label>
        <input type="text" name="email"  class="form-control" id="email" aria-describedby="emailHelp">
        <div id="emailHelp"  class="form-text error "><?php echo $errors['emailError'] ?></div>
    </div>

    <button type="submit" name="submit" class="btn btn-primary">ارسال المعلومات </button>
</form>


</div>


</form>

<script>

var countdown = new Date("Apr 5, 2024 18:00:00").getTime();
var x = setInterval(function() {
    var counter = document.querySelector("#countdown")
  var now = new Date().getTime();
  var distance = countdown - now;
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
  document.getElementById("countdown").innerHTML = days + "يوم " + hours + "ساعة "
  + minutes + "دقيقة  " + seconds + "ثانية ";
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("countdown").innerHTML = "انتهى الوقت";
  }
}, 1000);



</script>






<div id="loader">
	<canvas id="circularLoader" width="200" height="200"></canvas>
</div>


<!-- Button trigger modal -->
<div class="d-grid gap-2 col-6 mx-auto my-5">
  <button id="winner" type="button" class="btn btn-primary" >
    اختيار الرابح
  </button>
</div>

<!-- Modal -->
<div class="modal fade" id="modal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalLabel">الرابح في مسابقة</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <?php foreach($users as $user): ?>
          <h1 class="modal-title display-3 text-center"><?php echo htmlspecialchars($user['lastName'] . ' ' . $user['firstName']); ?></h1>
        <?php endforeach; ?>
      </div>
    </div>
  </div>
</div>

     
      
  </div>
</div>
<div id="cards" class="row mb-6 ph-5">
    <?php foreach($users as $user): ?>
    <div class="col-sm-6">
        <div class="card my-2 bg-light">
            <div class="card-body">
                <h5 class="card-title"> <h1><?php echo htmlspecialchars($user['lastName'] . ' ' . $user['firstName']); ?></h5>
                <p class="card-text"> <br><?php echo htmlspecialchars($user['email']); ?></p> 
            </div>
        </div>
    </div>
    <?php endforeach; ?>
</div>

<script>
const win = document.querySelector("#winner");
const loader = document.querySelector("#loader");
const modal = new bootstrap.Modal(document.getElementById('modal'));

win.addEventListener('click', function() {
  loader.style.display = 'block';
  
  setTimeout(function(){
    modal.show();
    loader.style.display = 'none'; // يخفي اللودر عند فتح النافذة المنبثقة
  }, 3000);
});

// يجب تعريف متغير الخيارات إذا كانت هناك خيارات إضافية
const options = {
  keyboard: false
};

// تم تعريف myModal بشكل صحيح
var myModal = new bootstrap.Modal(document.getElementById('modal'), options);

</script>



<script>
  var ctx = document.getElementById('circularLoader').getContext('2d');
var al = 0;
var start = 4.72;
var cw = ctx.canvas.width;
var ch = ctx.canvas.height; 
var diff;
function progressSim(){
	diff = ((al / 100) * Math.PI*2*10).toFixed(2);
	ctx.clearRect(0, 0, cw, ch);
	ctx.lineWidth = 17;
	ctx.fillStyle = '#4285f4';
	ctx.strokeStyle = "#4285f4";
	ctx.textAlign = "center";
	ctx.font="28px monospace";
	ctx.fillText(al+'%', cw*.52, ch*.5+5, cw+12);
	ctx.beginPath();
	ctx.arc(100, 100, 75, start, diff/10+start, false);
	ctx.stroke();
	if(al >= 100){
		clearTimeout(sim);
	    // Add scripting here that will run when progress completes
	}
	al++;
}
var sim = setInterval(progressSim, 50);
</script>






<style>
    #countdown{
 
        color:red ;
        padding: 10px;
        border: 1px solid;
        border-radius: 5px;
       
        

    }
    #cards{

        display: none;

    }

    #loader{
display: none;
position: fixed;
top: 50%;
left: 50%;
transform: translate(-50%,-50%);
    }

   
</style>

</body>
</html




