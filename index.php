<!doctype html>
<html lang="en">

<head>

  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;1,100;1,200;1,300;1,400&display=swap"
    rel="stylesheet">

  <!-- Custom CSS -->
  <link rel="stylesheet" href="style/style.css">
  <title>Mina Portofolio</title>
</head>

<body>
  <!-- navbar -->
  <div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-4 bg-white">
      <div class="container">
        <a class="navbar-brand " href="#">
          <img src="assets/MinaRofidaRahmatina.com.png" alt="" height="20">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0 ps-5">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#About"
                style="font-family: 'Poppins', sans-serif; font-weight: 550;color: #F2C94C; ">About Me</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#experience"
                style="font-family: 'Poppins', sans-serif; font-weight: 550;color: #F2C94C; ">Work Experiences</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#Projects"
                style="font-family: 'Poppins', sans-serif; font-weight: 550;color: #F2C94C; ">IT Projects</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#Certifications"
                style="font-family: 'Poppins', sans-serif; font-weight: 550;color: #F2C94C; ">Certifications</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#contact"
                style="font-family: 'Poppins', sans-serif; font-weight: 550;color: #F2C94C; ">Contact</a>
            </li>
          </ul>
          <form class="d-flex">
            <button class="btn btn-danger rounded-pill px-4 py-2"
              style="font-family: 'Poppins', sans-serif; font-size: .8rem; font-weight: 700;">
              <b>Sign In</b>
            </button>
          </form>
        </div>
      </div>
    </nav>
  </div>

  <!-- About Me -->
  <div id="About" class="About">
    <div class="container">
      <div class="row">
        <div class="col" style="padding-top:0%;">
          <div class="pt-4 pb-5">
            <h1 class="fname">Mina <span class="lname">Rofida Rahmatina</span> </h1>
            <h3 style="color: #828282; ">Informatics</h3>
          </div>
          <h5 class="badge py-2 px-2" style="background-color: #EB5757;">
            <span class="px-3" style="font-family: 'Poppins', sans-serif; font-size: 1rem; font-weight: 700;">
              Who is Mina?
            </span>
          </h5>
          <div class="col">
            <p style="font-size: 18px; font-weight: 300;">
            <?php include(".\db\GetDataSummary.php") ?> </p>
            <button type="button " class="btn btn-sm btn-outline-danger py-2 px-3 rounded-pill">
              <span class="badge"><img src="assets/unduh.png" style="width: 50% !important;"></span>
              Download Resume
            </button>
          </div>
        </div>
        <div class="col-sm-6 col-xl-5">
          <img src="assets/mina.png" class="card-img-top" alt="..." style="width: 120% !important;">
        </div>
      </div>
    </div>
  </div>

  <!-- Work Experience -->
  <div id="experience" class="experience">
    <div class="container p-3 mb-2" style="background-color:#FFF8EE">
      <div class="d-flex row p-3 me-auto">
          <h1 style="color:#EB5757; text-align:center">Mina’s Work Experiences</h1>
          <p style="text-align:center">So far there are several jobs
            that I have done, as follows:</p>
          <?php include(".\db\GetDataExperience.php") ?>;
      </div>
    </div>
  </div>

  <!-- IT Projects -->
  <div id="Projects" class="Projects">
    <div class="container p-3 mb-2" style="background-color:#FFFFFF">
      <div class="row p-3">
        <div class="text-center">
          <p style="color: #FB9333;">PORTFOLIO</p>
          <h1 style="color:#EB5757">Mina’s <span style="color: #FB9333;">IT</span> Projects</h1>
        </div>
      </div>
      <?php include(".\db\GetDataProject.php") ?>;
      <?php include(".\db\GetDataProject2.php") ?>;
      </div>
    </div>
  </div>

<!-- Certifications -->
<div id="Certifications" class="Certifications">
    <div class="container p-3 mb-3 " style="background-color:#FFF8EE;">
      <div class="row justify-content-center">
        <div class="text-center pb-5">
          <h1 style="color:#EB5757">Mina’s <span style="color: #FB9333;">Certifications</span></h1>
        </div>
        <?php include(".\db\GetDataCertification.php") ?>        
      </div>
    </div>
  </div>  

  <!-- Mina's Contact -->
  <div id="contact" class="contact">
    <div class="container p-3 mb-2" style="background-color:#EC5044">
      <div class="row" style="color:white">
        <div class="col-6">
          <h3 style="text-align: right;padding-top: 20px;">Mina's Contact</h3a>
        </div>
        <div class="col-5" style="padding-left: 10px">
          <h6><span class="badge"><img src="assets/loc.png" style="width: 50% !important;"></span>Karang Intan, Banjar, Kalimantan Selatan</h6>
          <h6><span class="badge"><img src="assets/call.png" style="width: 50% !important;"></span>082135210523</h6>
          <h6><span class="badge"><img src="assets/email.png" style="width: 50% !important;"></span>mina.rofida.rahmatina@gmail.com</h6>
        </div>
      </div>
    </div>
  </div>

  <div class="fabs">
      <div class="chat">
        <!-- header -->
        <div class="chat_header">
          <div class="chat_option">
            <div class="header_img">
              <img src="assets/person.png" />
            </div>
            <span id="chat_head">Customer Services</span> <br />
            <span class="online">(Online)</span>
            <span id="chat_fullscreen_loader" class="chat_fullscreen_loader"
              ><i class="fullscreen zmdi zmdi-window-maximize"></i
            ></span>
          </div>
        </div>

        <!-- login -->
        <div id="user-login" class="chat_body chat_login">
          <p style="color: white">Register</p>
          <div class="field-form-register">
            <input type="text" placeholder="Nama" id="username" />
            <input type="text" placeholder="Email" id="email" />
          </div>
          <div class="login">
            <a id="submit-login"><input type="submit" value="Submit" /></a>
          </div>
        </div>

        <!-- room chat  -->
        <div id="chat_converse" class="chat_conversion chat_converse"></div>

        <!-- send message -->
        <div class="fab_field">
          <a id="fab_send" class="fab"
            ><img src="assets/send.svg" width="15px"
          /></a>
          <textarea
            id="chatSend"
            name="chat_message"
            placeholder="Send a message"
            class="chat_field chat_message"
          ></textarea>
        </div>
      </div>
      <a id="prime" class="fab"
        ><img src="assets/bubble.png" width="56px "
      /></a>
    </div>

  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
    crossorigin="anonymous"></script>

    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="./style/jsChatBox.js"></script>
    <link rel="stylesheet" href="style/styleChatBox.css">
    <script src="web-mina/socket.io/socket.io."></script>
    <script>
      // INSIALISASI SOCKET
      const socket = io();

      const username = document.getElementById("username");
      const email = document.getElementById("email");
      const chat = document.getElementById("chatSend");

      const btnLogin = document.getElementById("submit-login");
      const btnSend = document.getElementById("fab_send");

      // LOGIN USER
      btnLogin.addEventListener("click", () => {
        socket.emit("create_user", username.value, email.value);
      });

      // MENGIRIM PESAN
      btnSend.addEventListener("click", () => {
        socket.emit("sendchat", username.value, chat.value);
      });

      // MENGUPDATE CHAT
      socket.on("updatechat", (username, msg) => {
        if (username == "admin") {
          $("#chat_converse").append(
            '<span class="chat_msg_item chat_msg_item_admin"> <div class="chat_avatar"> <img src="assets/person.png" /> </div>' +
              msg +
              "</span>"
          );
        } else {
          $("#chat_converse").append(
            '<span class="chat_msg_item chat_msg_item_user">' + msg + "</span>"
          );
        }
        chat.value = "";
      });
    </script>

  <!-- Option 2: Separate Popper and Bootstrap JS -->
  <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    -->
</body>

</html>