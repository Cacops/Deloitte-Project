$(document).ready(function () {

    //Initialization of nice select plugin (needs nice-plugin.js included)
    $('.nice-select').niceSelect();

    //Handles responsive button menu click
    $('.respo-menu-btn').click(function () {

        $('ul.nav').slideToggle();
        $('nav').toggleClass('open');

    });
});

