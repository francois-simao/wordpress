<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="og:title" content="Restaurant Burger" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://solenep.promo-37.codeur.online/burger" />
    <meta property="og:image" content="/images/logo-navbar.png" />
    <meta property="og:description" content="Restaurant Burger" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="<?php bloginfo( 'stylesheet_url' ); ?>">
    <script src="script.js"></script>
    <title><?php bloginfo( 'name' ); ?></title>
</head>
<body>


<header>
        <div class="container-fluid-1 px-0 w-100 mb-3">
            <div class="header-opacity">
                <div class="container z">
                    <div class="row">
                        <div class="col-12">

                            <!--NAVBAR-->
                            <nav class="navbar navbar-expand-lg navbar-dark w-100">

                                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5 col-5">
                                    <?php echo get_custom_logo() ?>
                                </div>

                                <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
                                    aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>

                                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                                    <div id="menu">
                                    <?php wp_nav_menu(array('theme_location'=> 'menuheader')); ?>
                                <!-- appel dans le menu de WP le menu dont l'id est menuheader dans le fichier functions -->
                                    </div>
                                </div>
                            </nav>
                            <!--FIN NAVBAR-->

                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="part-text d-flex flex-wrap flex-column align-items-end ">
                            <h1 class="h1-header text-uppercase text-light text-right"><?php bloginfo( 'description' ); ?></h1>
                            <p class="p-header text-center text-light"><?php echo get_post_field('post_content', '93'); ?></p>
                        </div>

                        <div class="btn-effect text-center  pulsate-bck">
                            <a href="#type">
                                <img class="btn-cercle" src="wp-content/themes/onepageburger/images/bouton-banniere.png" alt="...">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>