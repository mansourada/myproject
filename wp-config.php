<?php
define( 'WP_CACHE', true );

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
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
define( 'DB_NAME', 'mansour' );

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
define( 'AUTH_KEY',         '!|D<E)n{Yq)#8cIH,f)dO!86m{0Q7I~dlcqX0wY;/x8?pRzneMpL*)QdF3wuNTUY' );
define( 'SECURE_AUTH_KEY',  'fQp;nnegZE1m%d.|Q{DU0R+,wNCa}H%9BRCz$lvRWCz7VKIAnW2|ZNgbV_1~9XWo' );
define( 'LOGGED_IN_KEY',    '*g3^kO0q3-|(<ilg<:6U|#pkV<z`=s7pdjhb(r!RpVN0sXfWXAcC<o<CJ(As@_%9' );
define( 'NONCE_KEY',        '|df6L[CF^@oRi:]wu;(xE6#m}kEL+xMkA6J3T:7m%4_HP%)PW(Xp^Bhu#}HJtU4I' );
define( 'AUTH_SALT',        '{e|9^/49Qq9~7D1Hhmq:J03=f$Adt*:`nhxJ3.bRu0{rc}.ccs :vV?[aeH#WS2;' );
define( 'SECURE_AUTH_SALT', '$L>Gg!]m+~y{wYKOo=>LbF6u1uPvSomq>4!2#5)Mm!7T+Z^8*cSOP7md)$?qR*x ' );
define( 'LOGGED_IN_SALT',   'CDpF6uC]{YS.Ayb>mh pf MZW|n0V@yF!uYY:J15 7k#zD=4cm=x}Tj>9Q*zC{hz' );
define( 'NONCE_SALT',       'GU%zaHb0KU29caE64Xba|8KdjlZtPwgxbC85mhc<{)hkHSifl`aozn0jk!v#B3Yd' );

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
