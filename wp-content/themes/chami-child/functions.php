<?php
// Register Nav Menus

register_nav_menus(
    array(
        'primary' => esc_html__( 'Primary menu', 'twentytwentyone' ),
        'footer'  => esc_html__( 'Secondary menu', 'twentytwentyone' ),
    )
);

function custom_login_logo() {
    echo '<style type="text/css">
        .login h1 a { background-image: url('.get_stylesheet_directory_uri().'/assets/images/home1/newsletter/phone.png) !important; }
    </style>';
}
add_action('login_head', 'custom_login_logo');