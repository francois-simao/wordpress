<?php

//on crée une zone pour le menu de navigation mais non fonctionnel
register_nav_menu ('menuheader', 'Menu du Header');
//  fonction    nom de la fonction/id   nom qui va s'afficher dans WP

// custom logo
function theme_prefix_setup() {
    add_theme_support( 'custom-logo' );
    }
    add_action( 'after_setup_theme', 'theme_prefix_setup' );


function header_widgets_init() {
 
        register_sidebar( array(
        
         'name' => 'Burger du moment',
         'id' => 'offre1',
         'before_widget' => '<div class="">',
         'after_widget' => '</div>',
         'before_title' => '<h2 class="">',
         'after_title' => '</h2>',
         ) );
         
         
        register_sidebar( array(
        
         'name' => 'Menu du midi',
         'id' => 'offre2',
         'before_widget' => '<div class="">',
         'after_widget' => '</div>',
         'before_title' => '<h2 class="">',
         'after_title' => '</h2>',
         ) );

        register_sidebar( array(
        
            'name' => 'Menu kids',
            'id' => 'offre3',
            'before_widget' => '<div class="">',
            'after_widget' => '</div>',
            'before_title' => '<h2 class="">',
            'after_title' => '</h2>',
            ) );

        register_sidebar( array(
        
            'name' => 'Offre du moment',
            'id' => 'offre4',
            'before_widget' => '<div class="">',
            'after_widget' => '</div>',
            'before_title' => '<h2 class="">',
            'after_title' => '</h2>',
            ) );
         
         }






         register_sidebar( array(
        
            'name' => 'Le Vesoul R',
            'id' => 'offre5',
            'before_widget' => '<div class="">',
            'after_widget' => '</div>',
            'before_title' => '<h2 class="">',
            'after_title' => '</h2>',
            ) );

        register_sidebar( array(
        
            'name' => 'Le FUNNY DUCK',
            'id' => 'offre6',
            'before_widget' => '<div class="">',
            'after_widget' => '</div>',
            'before_title' => '<h2 class="">',
            'after_title' => '</h2>',
             ) );

            register_sidebar( array(
        
                'name' => 'L AMERICIAN',
                'id' => 'offre7',
                'before_widget' => '<div class="">',
                'after_widget' => '</div>',
                'before_title' => '<h2 class="">',
                'after_title' => '</h2>',
                ) );

                register_sidebar( array(
        
                'name' => 'Le VEGGIE',
                'id' => 'offre8',
                'before_widget' => '<div class="">',
                'after_widget' => '</div>',
                'before_title' => '<h2 class="">',
                'after_title' => '</h2>',
                ) );
        
                register_sidebar( array(
        
                    'name' => 'Le MONTAGNARD',
                    'id' => 'offre9',
                    'before_widget' => '<div class="">',
                    'after_widget' => '</div>',
                    'before_title' => '<h2 class="">',
                    'after_title' => '</h2>',
                    ) );


                register_sidebar( array(
        
                    'name' => 'Le CHICKY',
                    'id' => 'offre10',
                    'before_widget' => '<div class="">',
                    'after_widget' => '</div>',
                    'before_title' => '<h2 class="">',
                    'after_title' => '</h2>',
                    ) );


                register_sidebar( array(
        
                    'name' => 'Le SAONOIS',
                    'id' => 'offre11',
                    'before_widget' => '<div class="">',
                    'after_widget' => '</div>',
                    'before_title' => '<h2 class="">',
                    'after_title' => '</h2>',
                    ) );

                register_sidebar( array(
        
                    'name' => 'Le FUN BURGER',
                    'id' => 'offre12',
                    'before_widget' => '<div class="">',
                    'after_widget' => '</div>',
                    'before_title' => '<h2 class="">',
                    'after_title' => '</h2>',
                    ) );


        add_action( 'widgets_init', 'header_widgets_init' );

