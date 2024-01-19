<?php /* Template Name: Service Page */
$image = get_field('breadcumb-img');
$breadcumbimg = $image['sizes']['large'];
$image = get_field('service-img');
$serviceimg = $image['sizes']['large'];
$image = get_field('side-img');
$sideimg = $image['sizes']['large'];
get_header(); ?>

<!-- start banner area -->
<section class="inner-page banner" data-img="<?php echo $breadcumbimg;?>">
        <div class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="content text-center">
                            <h2><?php single_post_title(); ?></h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                  <li class="breadcrumb-item"><a href="<?php echo home_url();?>">Home</a></li>
                                  <li class="breadcrumb-item active" aria-current="page"><?php single_post_title(); ?></li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end banner area -->

    <!-- start service area -->
    <section class="service-page detail pt-120">
        <div class="container">
            <div class="row">
                <!-- start left aprt -->
                <div class="col-lg-8 order-1 order-lg-0">
                    <div class="left-part">
                        <div class="image">
                            <img src="<?php echo $serviceimg;?>" alt="Service">
                        </div>
                        <div class="text">
                            <h5><?php the_field('service_heading'); ?></h5>
                            <p><?php the_field('first-paragraph');?></p>
                            <div class="img">
                                <img src="<?php echo $sideimg;?>" alt="Service">
                            </div>
                            <?php the_field('service-details')?>
                        </div>
                    </div>
                    <div class="contact-box">
                        <h5 class="title">Get In Touch With Us:</h5>
                        <ul class="list-wrap pt-20">
                            <li><a href="tel:1300458789"><i class="fas fa-solid fa-phone"></i>1300 458 789</a></li>
                            <li><a href="mailto:Example@mail.com"><i class="fas fa-regular fa-envelope"></i>example@mail.com</a></li>
                        </ul>                                
                    </div>
                </div>
                <!-- end left aprt -->

                <!-- start right aprt -->
                <div class="col-lg-4 order-0 order-lg-1">
                    <div class="right-part">
                        <div class="item">
                            <div class="title">
                                <h5>all services</h5>
                            </div>
                            <ul>
                                <li><p>Traffic Control</p></li>
                                <li><p>Pedestrian Management</p></li>
                                <li><p>Equipments</p></li>
                                <li><p>Plans and Permits</p></li>
                                <li><p>About Us</p></li>
                                <li><p>Contact Us</p></li>
                            </ul>
                        </div>
                        <div class="item">
                            <div class="title">
                                <h5>Get Quote</h5>
                            </div>
                            <div class="quote-box">
                                <div class="quote-box-inner">
                                    <h4><strong style="font-family:'Kaleko 105 Heavy'">We are prepared to support your success.</strong></h4>
                                    <h5>Engage with us and unlock your potential. Take the first step towards a brighter future.</h5>
                                </div>
                                <a href="#!" class="button-style1">Get Quote<i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end right aprt -->
            </div>
        </div>
    </section>
    <!-- end service area -->

<?php get_footer(); ?>