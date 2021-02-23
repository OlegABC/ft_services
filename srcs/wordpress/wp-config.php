<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_site' );

/** MySQL database username */
define( 'DB_USER', 'wordpress' );

/** MySQL database password */
define( 'DB_PASSWORD', '1234' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '(POF}Ni^zt(``A*  oEL5-$&PdI7>@7xlRN62|mDJNSF>^,+n{nna!6_23nFXIL_' );
define( 'SECURE_AUTH_KEY',  's^~*6M7j%4./b~iNL[d(fBH$S9j^PAcygvNuM{0!#a1Hs0]qC}N,dva4gP+MkQni' );
define( 'LOGGED_IN_KEY',    'h&!6eBm5iBa]|VZ`9Fj/=~ u=)Bq/31hU8(KueF!1oRm+}tTpuLOw{x#k}*BhzS2' );
define( 'NONCE_KEY',        'y>m]J%z0Okq]I`a{]}#qnGs~.9GN#>~O1HM/[sJQmdvBv<?ew$}x.F!#=t6q*..0' );
define( 'AUTH_SALT',        '7VE/IDs2~^X#3%4kPjq,8yY];[Se$Pp])<h|T7t7{kd%^Li7Cb0nV>@YC~D~&ts,' );
define( 'SECURE_AUTH_SALT', '`h.]{.;6o2=h+)]1r*7bGi@W^L%+4VBB-~p}jNpRJIco8EbBK{JD}e@k+P5`x/3x' );
define( 'LOGGED_IN_SALT',   'XoTGwWyEjLYbWOf$0wC.%?u1j1ouT^7tW9z 3%ObS&,QOS=AwU$bfFS^CIKoF[K$' );
define( 'NONCE_SALT',       'aWIg8$;;z]>VjXDhAxs#Q-n:bm|X1z>Rn7h+2~Qjyy!A74B _mX!MV7GTvBl VR1' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
