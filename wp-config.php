<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'chamitraffic' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'atB|G?x@ u=AADuQnI.UF)g2g,tC%[bR7=W:%RQ<zVba)V6fu=KpTJ(0[.c!%Z~w' );
define( 'SECURE_AUTH_KEY',  'PtMkP(;dhJrqgu>x7R*btbg>@x;:F>Va7lu8J`S&V>MQg_}*>qh|d!SBZ%^#&uq@' );
define( 'LOGGED_IN_KEY',    'W=B~+`C(_.z[56!8#mYlvpZi+&DHh&$SQnPAn_C!ivV[1O&|^]=m0#euq^ G(gj:' );
define( 'NONCE_KEY',        '45PrOyzPQK@z[%t0q=tct<mZ.W*{O7]zKL-ykILa}D9u})JVk%%`RMR,qXi+ciR2' );
define( 'AUTH_SALT',        'j_W$hs2#|YDkIx6!.<ndf)#0~d&.sF}i1Y|jaFSZ]?XfB5>U3SE 5P##|v P9[x!' );
define( 'SECURE_AUTH_SALT', '5-|Li_%> ~o[ESQvrR5nUi/I2W&aXIAZ3ZJNEE;khLF![9m/bkG_Gj):[N~DC[DR' );
define( 'LOGGED_IN_SALT',   'zcG;%JIGa3_9KNdw$~VZ{0+[Wjz_iS(cU8.2xi1n^L<^3=JyO@DT3%|HdAr~,5b<' );
define( 'NONCE_SALT',       '%/kk}Vu?P_iuEy2fN<7]/h,dMol4sUG.I#)]w_NgWz1RxHd?>U/R|ho`3ZvH4k#)' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
