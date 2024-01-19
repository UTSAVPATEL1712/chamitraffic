<?php /* Template Name: Employment*/
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
                                <a href="#!" class="button-style">Apply<i class="fas fa-arrow-circle-right"></i></a>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end banner area -->

    <!-- start project area -->
    <section class="project-page project-detail p-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 cs-1">
                    <div class="title">
                        <h4>Employment opportunities at Chami <span style="color:var(--theme-primary); font-family: 'Kaleko 105 Heavy';">Traffic</span>.</h4>
                    </div>
                    <p>At Chami Traffic, we're constantly in search of skilled Traffic Controllers (TCs) who possess a strong grasp of working in public environments, including managing traffic on roads, coordinating special events, and operating in close proximity to pedestrians and power lines. For seasoned professionals in the field, we provide an excellent opportunity to bring your expertise to our team. Your experience is highly valued, and we are keen to have you join us.</p>
                    <p>However, we also extend a warm welcome to those who are new to the industry or are contemplating a career in traffic control. We understand that everyone starts somewhere, and we're eager to engage with individuals looking to enter this dynamic field.</p>
                    <p>In fact, we have a wide array of job openings specifically designed for new entrants. So, whether you're a seasoned traffic controller or someone with the desire to embark on a fulfilling career in traffic management, we encourage you to reach out to us. Our team is ready to discuss the exciting opportunities we have available for you.</p>
                </div>
                <div class="col-lg-12 list-part">
                    <div class="row">
                    <div class="title">
                                <h4 style="color:var(--theme-primary);">We are seeking individuals who can work as needed in a flexible, part-time, or on-call capacity.</h4>
                    </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="title">
                            <h4>Requirements for Experienced Traffic Controllers:</h4>
                            </div>
                            <ul class="desc-list">
                                <li><p>Possession of a Traffic Control ticket, which includes both RIIWHS205E and RIIWHS302E certifications.</p></li>
                                <li><p>Completion of a Construction Induction Ticket (White Card), specifically CPCCWHS1001.</p></li>
                                <li><p>Demonstrated substantial experience in the field of traffic control.</p></li>
                                <li><p>Holding a valid driver's license and having access to reliable transportation.</p></li>
                                <li><p>Holding a valid First Aid Certificate: HLTAID003.</p></li>
                            </ul>
                        </div>
                        <div class="col-lg-6 col-md-12 pt-30">
                            <div class="image">
                                <img src="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/images/service/img2.jpg" alt="Service">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end project area -->

<?php get_footer(); ?>