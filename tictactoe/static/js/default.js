$(document).ready(function() {
    $(".login input").focus(function() {
        $("ul.nav").addClass("active");
    });
    $(".login input").blur(function() {
        $("ul.nav").removeClass("active");
    });
});
