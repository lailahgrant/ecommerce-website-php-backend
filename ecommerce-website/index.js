$(document).ready(function () {
    
    //banner owl carousel
    $("#banner-area .owl-carousel").owlCarousel({
        dots: true,
        items: 1
    });

    //top sale owl carousel
    $("#top-sale .owl-carousel").owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    });

    // Isotope filter
    var $grid = $('.grid').isotope({
        itemSelector: '.grid-item',
        layoutMode: 'fitRows'
    });

    //filter items on button click
    $(".button-group").on("click", "button", function () {
        var filterValue = $(this).attr('data-filter');
        $grid.isotope({ filter: filterValue });
    });

    // new gadgets owl carousel
    $("#new-gadgets .owl-carousel").owlCarousel({
        loop: true,
        dots: true,
        nav: false,
        
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    });

    // product Qty Specifications
    var $qty_up = $(".qty .qty_up");
    let $qty_down = $(".qty .qty_down");
    //let $qty_input = $(".qty .qty_input");

    //click on the qty_up button
    $qty_up.click(function (e) {
        let $qty_input = $(`.qty_input[data-id='${$(this).data("id")}]`);
        if($qty_input.val() >= 1 && $qty_input.val() <= 9) {
            $qty_input.val(function (i, oldVal) {
                return ++oldVal;
            });
        } 
    });

    //click on the qty_down button
    $qty_down.click(function (e) {
        let $qty_input = $(`.qty_input[data-id='${$(this).data("id")}]`);
        if ($qty_input.val() > 1 && $qty_input.val() <= 10) {
            $qty_input.val(function (i, oldVal) {
                return --oldVal;
            });
        }
    });

});