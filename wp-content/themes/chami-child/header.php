<?php
/**
 * The header.
 *
 * This is the template that displays all of the <head> section and everything up until main.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

?>
<!doctype html>
<html <?php language_attributes(); ?> <?php //twentytwentyone_the_html_classes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- favicon -->
    <link rel="shortcut icon" href="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/images/favicon1.png" type="image/x-icon"/>
	<!-- josefin sans font -->
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet"> 
    <!--Kaleko Font -->
    <link href="https://db.onlinewebfonts.com/c/a629c18eba173c2a0705af17b9711212?family=Kaleko+105+Book" rel="stylesheet">
    <link href="https://db.onlinewebfonts.com/c/84d9612a1be65b7715cbb8b4894593a0?family=Kaleko+105+Heavy" rel="stylesheet">
	
	<title>Chami Traffic</title>

	<!-- font-awesome -->
    <link rel="stylesheet" href="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/css/all.min.css">

    <!-- flaticon -->
    <link rel="stylesheet" href="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/font/flaticon.css">

    <!-- bootstrap -->
    <link rel="stylesheet" href="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/css/bootstrap.min.css">

    <!-- menu -->
    <link rel="stylesheet" href="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/css/menu.css">

    <!-- venobox -->
    <link rel="stylesheet" href="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/css/venobox.css">

    <!-- magnific popup -->
    <link rel="stylesheet" href="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/css/magnific-popup.css">

    <!-- swiper slider -->
    <link rel="stylesheet" href="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/css/swiper-bundle.min.css">

    <!-- scroll animation -->
    <link rel="stylesheet" href="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/css/animate.css">

    <!-- style -->
    <link rel="stylesheet" href="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/css/style.css">

    <!-- responsive -->
    <link rel="stylesheet" href="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/css/responsive.css">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

    <!-- start top-tp button area -->
    <button class="top-btn">
        <i class="fas fa-chevron-up"></i>
    </button>
    <!-- end top-tp button area -->
    
    <!-- start header area -->
    <header>
        <!-- start menubar area -->
        <section class="home2 menubar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="menu-bg">
                            <nav class="navbar p-0">
                                <a class="navbar-brand p-0" href="<?php echo home_url();?>">
                                    <img class="header-logo" src="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/images/logo.svg" alt="Logo" />
                                </a>
                                <div class="header-menu position-static">
                                    <ul class="menu">
                                        <li class="">
                                            <a href="<?php echo home_url();?>">Home</a>
                                        </li>
                                        <li><a href="http://localhost:8080/chamitraffic/about-us">About</a></li>
                                        <li>
                                            <a href="#!">Service</a>
                                            <ul>
                                                <li><a href="http://localhost:8080/chamitraffic/traffic-control">Traffic Control</a></li>
                                                <li><a href="http://localhost:8080/chamitraffic/pedestrian-management">Padestrian Management</a></li>
                                                <li><a href="http://localhost:8080/chamitraffic/equipments">Equipments</a></li>
                                                <li><a href="http://localhost:8080/chamitraffic/plans-and-permits">Plans And Permits</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="http://localhost:8080/chamitraffic/employment">Employment</a>
                                        </li>
                                        <li><a href="http://localhost:8080/chamitraffic/contact-us">Contact</a></li>
                                    </ul>
                                </div>
                                <div class="right-part d-none d-xl-block">
                                    <a href="#!" class="button-style">Get Quote<i class="fas fa-arrow-circle-right wobble"></i></a>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end menubar area -->
    </header>
    <!-- end header area -->

