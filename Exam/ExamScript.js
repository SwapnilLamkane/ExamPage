
    $(document).ready(function () {
        $("[data-trigger]").on("click", function (e) {
            e.preventDefault();
            e.stopPropagation();
            var offcanvas_id = $(this).attr('data-trigger');
            $(offcanvas_id).toggleClass("show");
            $('body').toggleClass("offcanvas-active");
            $(".screen-overlay").toggleClass("show");
        });
		$(document).on('keydown', function (event) {
            if (event.keyCode === 27) {
        $(".mobile-offcanvas").removeClass("show");
                $("body").removeClass("overlay-active");
            }
        });

        $(".btn-close, .screen-overlay").click(function (e) {
        $(".screen-overlay").removeClass("show");
            $(".mobile-offcanvas").removeClass("show");
            $("body").removeClass("offcanvas-active");
        });
    });
    function myFunction() {
        var x = document.getElementById("myLinks");
        if (x.style.display === "block") {
            x.style.display = "none";
        }
        else {
            x.style.display = "block";
        }
    }
    function startTimer(duration, display) {
        var timer = duration, minutes, seconds;
        setInterval(function () {
            minutes = parseInt(timer / 60, 10)
            seconds = parseInt(timer % 60, 10);
            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;
            display.textContent = minutes + " " + " " + seconds;
            if (--timer < 0) {
            timer = duration;
                swal.fire({
            position: 'center',
                    title: 'End Time',
                    showConfirmButton: false,
                    timer: 1000000
                })
                window.location.href = "a.aspx";
            }
            console.log(parseInt(seconds))
            window.localStorage.setItem("seconds", seconds)
            window.localStorage.setItem("minutes", minutes)
        }, 1000);
    }
    window.onload = function () {
            sec = parseInt(window.localStorage.getItem("seconds"))
        min = parseInt(window.localStorage.getItem("minutes"))
        if (parseInt(min * sec)) {
            var time = (parseInt(min * 60) + sec);
        }
        else {
            var time = 60 * 60;
        }
        display = document.querySelector('#time');
        startTimer(time, display);
    }
    function openSlideMenu() {
        document.getElementById('side-menu').style.width = '80vw';
                      document.getElementById('main').style.marginLeft = '250px';
                  }
                  function closeSlideMenu() {
        document.getElementById('side-menu').style.width = '0';
                      document.getElementById('main').style.marginLeft = '0';
                  }
 