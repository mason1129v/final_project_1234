var n = 0

function move(e, click) {
    var x = e.offsetX;
    var full = document.getElementById("full_star");
    var v = document.getElementById("full_star_value")
    if (click == 1) {
        n = 1;
        if (x > 250 * 0.8) {
            full.style.width = "100%";
            v.value = "5";
        } else if (x > 250 * 0.6) {
            full.style.width = "80%";
            v.value = "4";
        } else if (x > 250 * 0.4) {
            full.style.width = "60%";
            v.value = "3";
        } else if (x > 250 * 0.2) {
            full.style.width = "40%";
            v.value = "2";
        } else{
            full.style.width = "20%";
            v.value = "1";
        }
    } else if (click == 0 && n == 0) {
        if (x > 250 * 0.8) {
            full.style.width = "100%";
            v.value = "5";
        } else if (x > 250 * 0.6) {
            full.style.width = "80%";
            v.value = "4";
        } else if (x > 250 * 0.4) {
            full.style.width = "60%";
            v.value = "3";
        } else if (x > 250 * 0.2) {
            full.style.width = "40%";
            v.value = "2";
        } else {
            full.style.width = "20%";
            v.value = "1";
        }
    }
}