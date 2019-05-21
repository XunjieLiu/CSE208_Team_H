$(document).ready(function () {
    var $box1 = $("#box1");
    var $box2 = $("#box2");
    var index = 1;
    setInterval(fn,4000);
    function fn() {
        index++;
        if(index>3){
            index = 1;
        }
        $box1.animate({opacity:0},600,function() {
            $box1.css({"background-image":"url(photos/backimg/"+index+".jpg)",opacity:1});
        });
        $box2.css("background-image","url(photos/backimg/"+index+".jpg)");
    }
})