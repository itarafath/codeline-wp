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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'arafath');

/** MySQL database password */
define('DB_PASSWORD', 'master@123');

/** MySQL hostname */
define('DB_HOST', '127.0.0.1');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '39))|;~1_Hj,WmM;&X;5vz;vdMdM%|lGo1+[V+>{) -3nx&Ey%*jRn$@J$OR)VL4');
define('SECURE_AUTH_KEY',  'YDqr^!RObGlnc2l..S-_k_C!ke|k9=`ZT5;dA?6a33`FW,hJ4#6!rA~76ZTMI%SI');
define('LOGGED_IN_KEY',    'k#?gbEu$]Ym[Qe4/1EXD!9Jf?]+Qqj}iP1`tKxV^5$ |O.v]w7aZ*}!#j=j4d$i&');
define('NONCE_KEY',        '*0!E/hjHp}>,@s!5W_1o*HXgW(C<)]JT9dfDwQ#5@G<e^gNBi9b4qZMk8~@dUx9J');
define('AUTH_SALT',        'c4)d#1pWSTTg_dW{PJ(flg_ow9.KH2f@ d{wzGG<cRsbN&/CmsCbzmFGb)Roj=O.');
define('SECURE_AUTH_SALT', 'DT);oUX8a5J0<;&;4|&!KX9,|>Y22]z5fPQgc:Q0&g H9Y*8_C]sO8jTz#*dn0(K');
define('LOGGED_IN_SALT',   '7p45vln5-2srqNG@]Tl#g-#H3KG~CY ,YVT8]P(Nk%C=X.eIU;qr/U^n2Z{iq&5@');
define('NONCE_SALT',       '}*8/E:yzU2tP(>}:m>o-G2d/qP-YD*!*;5SWa[kAEg(ZVbR7Nudm&)6=v/B_vz_X');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);
define( 'FS_METHOD', 'direct' );
/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
