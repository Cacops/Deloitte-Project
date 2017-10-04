$(document).ready(function () {

    //Initialization of nice select plugin (needs nice-plugin.js included)
    $('.nice-select').niceSelect();

    //Handles responsive button menu click
    $('.respo-menu-btn').click(function () {

        $('ul.nav').slideToggle();
        $('nav').toggleClass('open');

    });

    $('.question-info').on({
        mouseenter: function () {
            $($(this).attr('data-id')).fadeIn();
        },
        mouseleave: function () {
            $($(this).attr('data-id')).fadeOut();
        }
    });

});


function gMapInit() {
    var center = { lat: 47.7194731, lng: -122.3524758 };

    var map = new google.maps.Map(document.getElementById('gMap'), {
        zoom: 12,
        center: center
    });

    var contentString = "<div>Here is our company building.</div><a href='https://www.google.com/maps?ll=47.721987,-122.346615&z=13&t=m&hl=en-US&gl=US&mapclient=apiv3'>Bigger map</a>";

    var infowindow = new google.maps.InfoWindow({
        content: contentString
    });

    var marker = new google.maps.Marker({
        position: center,
        icon: '/Images/gMap-Marker.png',
        map: map
    });

    marker.addListener('click', function () {
        infowindow.open(map, marker);
    });
}