<?php
add_action('wp_enqueue_scripts', 'unite_child_enqueue_styles');
function unite_child_enqueue_styles()
{
    wp_enqueue_style('parent-style', get_template_directory_uri() . '/style.css');
}

function create_film()
{
    $args = array(
        'label' => 'Films',
        'public' => true,
        'has_archive' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'rewrite' => array('slug' => 'films'),
        'query_var' => true,
        'menu_icon' => 'dashicons-format-video',
    );
    register_post_type('films', $args);
}

function create_genre_taxonomy(){
    register_taxonomy(
        'genre',
        'films',
        array(
            'label' => __( 'Genre' ),
            'rewrite' => array( 'slug' => 'genre' ),
            'hierarchical' => false
        )
    );
}
function create_country_taxonomy(){
    register_taxonomy(
        'country',
        'films',
        array(
            'label' => __( 'Country' ),
            'rewrite' => array( 'slug' => 'country' ),
            'hierarchical' => false
        )
    );
}
function create_year_taxonomy(){
    register_taxonomy(
        'year',
        'films',
        array(
            'label' => __( 'Year' ),
            'rewrite' => array( 'slug' => 'year' ),
            'hierarchical' => false
        )
    );
}
function create_actors_taxonomy(){
    register_taxonomy(
        'actors',
        'films',
        array(
            'label' => __( 'Actors' ),
            'rewrite' => array( 'slug' => 'actors' ),
            'hierarchical' => false
        )
    );
}


add_action( 'init', 'create_film' );
add_action( 'init', 'create_country_taxonomy' );
add_action( 'init', 'create_genre_taxonomy' );
add_action( 'init', 'create_year_taxonomy' );
add_action( 'init', 'create_actors_taxonomy' );

?>