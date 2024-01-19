<?php /* Template Name: Contact Page */
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

    <!-- start quote area -->
    <section class="home2 quote pt-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bg">
                        <div class="row">
                            <div class="col-lg-5">
                                <div class="image">
                                    <img src="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/images/home2/quote-img.png" alt="Quote">
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="content">
                                    <div class="section-title wow fadeInUp" data-wow-delay="0.3s" data-wow-duration="1s">
                                        <h2>get a free quote</h2>
                                    </div>
                                    <form action="mail.php" method="POST" class="wow fadeInUp" data-wow-delay="0.5s" data-wow-duration="1s">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6">
                                                <label for="name">
                                                    <input type="text" id="name" placeholder="your name" class="inputs" name="name">
                                                    <i class="far fa-user"></i>
                                                </label>
                                            </div>
                                            <div class="col-lg-6 col-md-6">
                                                <label for="email">
                                                    <input type="email" id="email" placeholder="your email" class="inputs" name="email">
                                                    <i class="far fa-envelope-open"></i>
                                                </label>
                                            </div>
                                            <div class="col-lg-6 col-md-6">
                                                <label for="phn">
                                                    <input type="tel" id="phn" placeholder="phone no." class="inputs" name="phone">
                                                    <i class="fas fa-phone-alt"></i>
                                                </label>
                                            </div>
                                            <div class="col-lg-6 col-md-6">
                                                <label for="sub">
                                                    <input type="text" id="sub" placeholder="subject" class="inputs" name="subject">
                                                    <i class="far fa-edit"></i>
                                                </label>
                                            </div>
                                            <div class="col-lg-12">
                                                <label for="msg" class="msg">
                                                    <textarea class="inputs" id="msg" placeholder="your message" name="message"></textarea>
                                                    <i class="fas fa-comment-dots"></i>
                                                </label>
                                            </div>
                                            <div class="col-lg-12">
                                                <button type="submit" class="button-style">send message <i class="fas fa-arrow-circle-right"></i></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end quote area -->

    <!-- Map section start -->
    <section class="contact-page location">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d805170.0496601658!2d145.05313529999998!3d-37.9725665!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad646b5d2ba4df7%3A0x4045675218ccd90!2sMelbourne%20VIC%2C%20Australia!5e0!3m2!1sen!2sin!4v1697451109687!5m2!1sen!2sin" width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </section>
    <!-- Map section end -->


    <?php get_footer();?>