$(document).ready(function () {
    $('#file').mouseenter(function () {
        $('#menu').fadeIn(800)

    });

    $('#menu').mouseleave(function () {
        $('#menu').fadeOut(300)

    });

    $("#fileicon").hide();
    $("#profileicon").hide();
    $("#calendaricon").hide();
    $("#fileicon").fadeIn(1500);
    $("#calendaricon").fadeIn(2500);
    $("#profileicon").fadeIn(3500);

    var value = 0
    $("#fileicon").rotate({
        bind:
            {
                mouseenter: function () {
                    value += 360;
                    $(this).rotate({

                        animateTo: value})
                }

            }
    });
    $("#calendaricon").rotate({
        bind:
            {
                mouseenter: function () {
                    value += 360;
                    $(this).rotate({animateTo: value})
                }
            }
    });
    $("#profileicon").rotate({
        bind:
            {
                mouseenter: function () {
                    value += 360;
                    $(this).rotate({animateTo: value})
                }
            }
    });
});
    /*$("#fileicon").rotate({
        bind:
            {
                mouseover: function () {
                    $(this).rotate({animateTo: 360})

                },
                mouseout: function () {
                    $(this).rotate({animateTo: 0})
                }
            }
    });

    $("#calendaricon").rotate({
        bind:
            {
                mouseover: function () {
                    $(this).rotate({animateTo: 360})
                },
                mouseout: function () {
                    $(this).rotate({animateTo: 0})
                }
            }

    });

    $("#profileicon").rotate({
        bind:
            {
                mouseover: function () {
                    $(this).rotate({animateTo: 360})
                },
                mouseout: function () {
                    $(this).rotate({animateTo: 0})
                }
            }
    });

});*/