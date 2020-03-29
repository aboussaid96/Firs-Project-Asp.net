

// Script For Count Down----------------------------------
var countDownDate = new Date("2020-03-26T00:00:00").getTime();

// Update the count down every 1 second
var x = setInterval(function () {

    // Get today's date and time
    var now = new Date().getTime();

    // Find the distance between now and the count down date
    var distance = countDownDate - now;

    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // show result in id="count_down"
    document.getElementById("days").innerHTML = days + " Days,";
    document.getElementById("days").classList.add("timer");

    document.getElementById("hours").innerHTML = hours + " Hours ";
    document.getElementById("hours").classList.add("timer");

    document.getElementById("minut").innerHTML = minutes + " Minutes,And  ";
    document.getElementById("minut").classList.add("timer");
  

    document.getElementById("seconde").innerHTML = seconds + " Seconds";
    document.getElementById("seconde").classList.add("timer");

    // If the count down is finished, write some text
    if (distance < 0) {
        clearInterval(x);
        var dy = document.getElementById("days");
        var hr = document.getElementById("hours");
        var mi = document.getElementById("minut");
        var se = document.getElementById("seconde");
        dy.style.diplay = "none";
        hr.style.diplay = "none";
        mi.style.diplay = "none";
        se.style.diplay = "none";
        document.getElementById("count_down").innerHTML = "EXPIRED";
    }
}, 1000);
// Script For Count Down----------------------------------------------------
