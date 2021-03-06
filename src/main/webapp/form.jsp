<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<% 

if(request.getParameter("emailLogin") != null && request.getParameter("senhaLogin") != null ){
	if(request.getParameter("emailLogin").equals("aluno@email.com") && request.getParameter("senhaLogin").equals("aluno@1234")){
		response.sendRedirect("cursosAluno.html");
	} else if(request.getParameter("emailLogin").equals("professor@email.com") && request.getParameter("senhaLogin").equals("professor@1234")){
		response.sendRedirect("areaProfessor.html");
	} else {
		%> <script>alert('Login Invalido')</script><%
	}
}
%>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="NexusAcad">

    <title>Meeting NexusAcad Page</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/nexus-acad-project.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
    <link rel="stylesheet" href="assets/css/upcoming-meetings.css">
    <link rel="stylesheet" href="assets/css/contact-us.css">
    <link rel="stylesheet" href="assets/css/courses.css">
    <link rel="stylesheet" href="assets/css/about-us.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/services.css">
    <link rel="stylesheet" href="assets/css/apply.css">
    <link rel="stylesheet" href="assets/css/contact-us-page.css">
    <link rel="stylesheet" href="assets/css/form.css">




  </head>

<body>

   


  <!-- ***** Header Area Start ***** -->

  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">

                      <!-- ***** Logo Start ***** -->
                      <a href="index.html" class="logo">
                          NexusAcad
                      </a>
                      <!-- ***** Logo End ***** -->

                      <!-- ***** Menu Start ***** -->

                      <ul class="nav">
                        <li><a href="index.html">Home</a></li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">Categorias</a>
                            <ul class="sub-menu">
                              <li><a href="desenvolvimento.html">Desenvolvimento</a></li>
                              <li><a href="data-science.html">Data Science</a></li>
                              <li><a href="IA.html">Intelig??ncia Artificial</a></li>
                              <li><a href="ui-ux.html">UI/UX</a></li>
                            </ul>
                        </li>
                        <li><a href="about-us.html">Sobre N??s</a></li> 
                        <li><a href="contact-us-page.html">Contato</a></li>
                        <li><a href="form.jsp">Login</a></li>  
                    </ul>               
                      <a class="menu-trigger">
                          <span>Menu</span>
                      </a>
                      <!-- ***** Menu End ***** -->

                  </nav>
              </div>
          </div>
      </div>
  </header>

  <!-- ***** Header Area End ***** -->

  <section class="heading-page header-text" id="top">
    <div class="container">
      <div class="row">
        
      </div>
    </div>
  </section>
  <section class="forms-section">
   
    <div class="forms">
      <div class="form-wrapper is-active">
        <button type="button" class="switcher switcher-login">
          Login
          <span class="underline"></span>
        </button>
        <form class="form form-login">
          <fieldset>
            <legend>Please, enter your email and password for login.</legend>
            <div class="input-block">
              <label for="login-email">E-mail</label>
              <input id="login-email" name="emailLogin" type="email" required>
            </div>
            <div class="input-block">
              <label for="login-password">Password</label>
              <input id="login-password" name="senhaLogin" type="password" required>
            </div>
          </fieldset>
          <button type="submit" class="btn-login">Login</button>
        </form>
      </div>
      <div class="form-wrapper">
        <button type="button" class="switcher switcher-signup">
          Sign Up
          <span class="underline"></span>
        </button>
        <form class="form form-signup">
          <fieldset>
            <legend>Please, enter your email, password and password confirmation for sign up.</legend>
            <div class="input-block">
              <label for="signup-email">E-mail</label>
              <input id="signup-email" type="email" required>
            </div>
            <div class="input-block">
              <label for="signup-password">Password</label>
              <input id="signup-password" type="password" required>
            </div>
            <div class="input-block">
              <label for="signup-password-confirm">Confirm password</label>
              <input id="signup-password-confirm" type="password" required>
            </div>
          </fieldset>
          <button type="submit" class="btn-signup">Continue</button>
        </form>
      </div>
    </div>
 
    <div class="footer">
      <p>Copyright ?? 2022 NexusAcad Project. All Rights Reserved. </p>  
    </div>

  </section>


  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>

      const switchers = [...document.querySelectorAll('.switcher')]

      switchers.forEach(item => {
        item.addEventListener('click', function() {
          switchers.forEach(item => item.parentElement.classList.remove('is-active'))
          this.parentElement.classList.add('is-active')
        })
      })

        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
          e.preventDefault();
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>

</html>