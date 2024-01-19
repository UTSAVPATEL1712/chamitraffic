<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

get_header();
?>

<!-- start banner area -->
<section class="inner-page banner" data-img="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/images/home1/banner/bg.jpg">
        <div class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="content text-center">
                            <h2>Error 404</h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                  <li class="breadcrumb-item"><a href="<?php echo home_url();?>">Home</a></li>
                                  <li class="breadcrumb-item active" aria-current="page">Error 404</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end banner area -->
<section>
	<div class="container">
		<div class="content">
			<div class="col-12 text-center">
				<img src="http://localhost:8080/chamitraffic/wp-content/themes/chami-child/assets/images/inner/404.jpg" alt="">				
			<h1>Nothing Here</h1>
			<p>The Page you are trying to access is either	 deleted or not available</p>
			<div class="pt-30 pb-30">
				<a href="<?php echo home_url();?>" class="button-style">Go to Home<i class="fas fa-home"></i></a>
			</div>
		</div>
</div>
</section>

<?php
get_footer();
