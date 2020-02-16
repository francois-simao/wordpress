<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'wordpress' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'root' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', '' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '#ru[/?HCn}xz^!%Z*_FG`Sv?rvWT}pHXC&Ml5spA8ZNrYFm v}uXy-FygDT+3*#b' );
define( 'SECURE_AUTH_KEY',  '/zKAa8Pg;aL%FoZ%IQ+_q5SKL*ACXk|qn]V7[4O~8JPRw6(PGAYP]QE2ppn5Y,{V' );
define( 'LOGGED_IN_KEY',    'a~nde9[PPTfq3c~1X.W,T{Y:QtC:_#b,astP!/tp8|/%KEvxo;95.G(5SgKkcaOf' );
define( 'NONCE_KEY',        'H8L]?GuhjEk~Wx%p.:aAuGnT!(S~dIeq.eQRKexwiGH3WmPRn1O}i&b?k?waLmpd' );
define( 'AUTH_SALT',        'M];`I53Up;_&R%-V9uqCCO7,@|nl[1L/x]*:oI(95MNcMxNh*+d:G[hNK2vuhpbf' );
define( 'SECURE_AUTH_SALT', ')@)_g2f(->BP{g,|Sgl69|;]9#hQ9poZ&e-zR&FN1c,=THFbZBOu<Mts[ae;;6Pv' );
define( 'LOGGED_IN_SALT',   '=40gFo3Z?]x6EF,q7o?81Dg.8;0$jBlz T>1M/Dt=(m3NYS!v<}k>8TdZ!>R/C.u' );
define( 'NONCE_SALT',       '`_V~7=EH0sqntZ>=/QCbuIi?iuqp|M.>9y@qrX 3k{`QrrWIu|..[hrz/Ap.GU-X' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');
