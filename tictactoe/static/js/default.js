$(document).ready(function() {
    $(".login input").focus(function() {
        $("ul.nav").addClass("active");
    });
    $(".login input").blur(function() {
        $("ul.nav").removeClass("active");
    });

    $("#gamebox ul.ticks li").click(function () {
        if (!$(this).hasClass("select")) {
            var x = $(this).hasClass('x');
            $(this).addClass("select");
            if (x) {
                $("#gamebox ul.ticks li").not('.select').removeClass('x').addClass('o');
            }
            else {
                $("#gamebox ul.ticks li").not('.select').removeClass('o').addClass('x');
            }
        }
    });
});
