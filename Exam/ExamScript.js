
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
    
    function openSlideMenu() {
        document.getElementById('side-menu').style.width = '80vw';
                      document.getElementById('main').style.marginLeft = '250px';
                  }
                  function closeSlideMenu() {
        document.getElementById('side-menu').style.width = '0';
                      document.getElementById('main').style.marginLeft = '0';
                  }
 