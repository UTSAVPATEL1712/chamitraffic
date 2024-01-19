<?php /* Template Name: About Page */
get_header(); ?>

<!-- start banner area -->
<section class="inner-page banner" data-img="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/images/home1/banner/bg.jpg">
        <div class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="content text-center">
                            <h2><?php single_post_title(); ?></h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                  <li class="breadcrumb-item"><a href="<?php echo home_url();?>">Home</a></li>
                                  <li class="breadcrumb-item active" aria-current="page">about</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end banner area -->

    <!-- start about area -->
    <section class="home1 about-page about pt-120">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 order-1 order-lg-0">
                    <div class="section-title wow fadeInUp" data-wow-delay="0.3s" data-wow-duration="1s">
                        <h2>Top Traffic Management Service Provider within the city</h2>
                        <p>Chami Traffic offers a comprehensive suite of services, including traffic planning, road closures, detour signage, traffic signal operation, and the provision of trained traffic control personnel.</p>
                    </div>
                    <div class="content">
                        <ul>
                            <li class="wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="1s">
                                <div class="icon">
                                    <i class="flaticon-architect"></i>
                                </div>
                                <div class="text">
                                    <h5>Available 24/7</h5>
                                    <p>Our teams are ready around the clock, every day. We strive to reach emergency requests within one hour of confirmation.</p>
                                </div>
                            </li>
                            <li class="wow fadeInUp" data-wow-delay="0.5s" data-wow-duration="1s">
                                <div class="icon">
                                    <i class="flaticon-repair-tools"></i>
                                </div>
                                <div class="text">
                                    <h5>Safety Measures</h5>
                                    <p>Safety is our priority. We implement strict safety protocols for all our projects.</p>
                                </div>
                            </li>
                        </ul>
                        <p class="wow fadeInUp" data-wow-delay="0.6s" data-wow-duration="1s">Chami Traffic team seamlessly access our online booking, gaining a comprehensive understanding of the job's requirements before arrival. This preparation enhances their readiness for both day and night assignments.</p>
                    </div>
                </div>
                <div class="col-lg-6 order-0 order-lg-1">
                    <div class="image wow fadeInLeft" data-wow-delay="0.5s" data-wow-duration="1s">
                        <img src="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/images/home1/about/about-img.jpg" alt="About">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end about area -->

    <!-- start newsletter area -->
    <section style="background-color:#fd0560; padding:50px 1px 50px 1px;" class="home1 newsletter">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-7 col-md-12 offset-lg-1">
                        <div class="content text-center text-lg-start wow fadeInRight" data-wow-delay="0.3s" data-wow-duration="1s">
                            <h2>Connecting You to Safer and Smoother Roads – Contact Us Today!</h2>
                            <p>Connecting You to Traffic Excellence.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 text-lg-end text-center">
                        <div class="wow fadeInLeft" data-wow-delay="0.4s" data-wow-duration="1s">
                            <a href="tel:1300456798" class="button-style1 text-center wow fadeInUp" data-wow-delay="0.6s" data-wow-duration="1s" style="visibility: visible; animation-duration: 1s; animation-delay: 0.6s; animation-name: fadeInUp;"><i class="fas fa-phone-alt hithere"></i> 1300 456 789</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end newsletter area -->
    

<?php get_footer();?>