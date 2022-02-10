<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kabaka Electronics</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
        integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- font awesome -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"
        integrity="sha512-yFjZbTYRCJodnuyGlsKamNE/LlEaEAxSUDe5+u61mV8zzqJVFOH7TnULE2/PP/l5vKWpUNnF4VGVkXh3MjgLsg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Custom CSS files -->
    <link rel="stylesheet" href="style.css">

    <?php
    require("database/DBController.php");
?>
</head>

<body>

    <!-- start header -->
    <header id="header">
        <div class="strip d-flex justify-content-between px-4 py-1 bg-light">
            <p class="font-os font-size-16 text-black-50 m-0">South Sudan, Kabaka Electronics (249 99 013 7242)</p>
            <div class="font-raleway font-size-14">
                <a href="#" class="px-3 font-os border-right border-left text-dark">Wish list ( 0 )</a>
                <a href="#" class="px-3 font-os border-right text-dark">Login</a>
            </div>
        </div>

        <!-- start primary navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark color-primary-bg">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Kabaka Electronics</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav m-auto font-rubik font-size-20">
                        <a class="nav-link active" aria-current="page" href="#">On Sale</a>
                        <a class="nav-link" href="#">Category</a>
                        <a class="nav-link" href="#">Products <i class="fas fa-chevron-down"></i> </a>
                        <a class="nav-link" href="#">Category</a>
                        <a class="nav-link" href="#">Coming Soon</a>

                    </div>
                    <form action="#" class="font-size-14 fonnt-raleway">
                        <a href="#" class="py-2 rounded-pill color-secondary-bg">
                            <span class="font-size-16 px-2 text-white">
                                <i class="fas fa-shopping-cart"></i>
                            </span>
                            <span class="px-3 py-2 rounded-pill text-dark bg-light">0</span>
                        </a>
                    </form>
                </div>
            </div>
        </nav>
        <!--end  primary navigation -->

    </header>
    <!-- end header -->