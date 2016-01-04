<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package WordPress
 * @subpackage Twenty_Twelve
 * @since Twenty Twelve 1.0
 */

get_header(); ?>

<p>Not Found</p>
<div>
	<?php 
		$size = "full";
		$image_1 = get_field('image_1');
		?>

<?php echo wp_get_attachment_image( $image_1, $size );?>
</div>

<?php get_footer(); ?>