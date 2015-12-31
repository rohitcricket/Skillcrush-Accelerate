<?php
/**
 * The template for displaying the archive of case studies.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package WordPress
 * @subpackage Accelerate Marketing
 * @since Accelerate Marketing 1.0
 */

get_header(); ?>

<section class="home-page">
	<div class="site-content">
		<?php while ( have_posts() ) : the_post(); 
			

			$image_1 = get_field('image_1');
			$size = "medium";
			$services = get_field('services');
		?>

			<article class = "case-study">
		<aside class = "case-study-sidebar">

			
			<h2><?php the_title(); ?></h2>
			<h5><?php echo $services; ?></h5>

					<?php the_excerpt(); ?>

					<p><a href = "<$php the_permalink(); ?>">Site Link</a></p>
				</aside>

				<div class="case-study-images">
					<?php if($image_1) { ?>
						
						echo wp_get_attachment_image( $image_1, $size );
					<?php } ?>
					<?php if($image_2) { ?>
				
						echo wp_get_attachment_image( $image_2, $size );
					<?php } ?>
					<?php if($image_3) { ?>
						
						echo wp_get_attachment_image( $image_3, $size );
					<?php } ?>

				</div>
			</article>

			<?php the_excerpt(); ?>

			<div class='homepage-hero'>
				<?php the_content(); ?>
				<p>Is this working?</p>
				<a class="button" href="<?php echo home_url(); ?>/blog">View Our Work</a>
			</div>
		<?php endwhile; // end of the loop. ?>
	</div><!-- .container -->
</section><!-- .home-page -->

<?php get_footer(); ?>