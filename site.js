let likes = [0,0,0,0,0,0,0,0,0,0,0,0];

function openNav() {
    document.getElementById("mySidebar").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.getElementById("main").style.display = 'none';
}

function closeNav() {
    document.getElementById("main").style.display = 'block';
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}

function like() {
    likes[0] += 1;
    document.querySelector('#votes-1').value = likes[0];
}
