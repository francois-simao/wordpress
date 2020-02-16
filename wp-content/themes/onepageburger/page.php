<?php /* Template Name: page */ ?>   <!-- ouvre le menu à droite dans l'interface WP -->

<?php get_header(); ?>

<section>
<div class="container-fluid menu-offre bg-img-gris p-0 " id="offres">
        <div class="container bg-img-ardoise p-0">
            <div class="row ml-0 mr-0">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 p-0">
                    <h2 class="text-light text-center mt-2">MENUS & OFFRES</h2>
                </div>
            </div>
            <div class="row ml-0 mr-0 text-light text-center mt-4 mb-4">
                <div class="col-xl-3 col-lg-3 col-md-6  text-light d-flex flex-column mt-2 text-center menu mb-4">
                    
               <!-- ajout de ma nouvelle widget area -->
                <?php if ( is_active_sidebar( 'offre1' ) ) : ?>
	            <?php dynamic_sidebar( 'offre1' ); ?>
                <?php endif; ?>
                </div>

                <div class="col-xl-3 col-lg-3 col-md-6 text-light d-flex flex-column mt-2 text-center p-0 menu">
                <?php if ( is_active_sidebar( 'offre2' ) ) : ?>
	            <?php dynamic_sidebar( 'offre2' ); ?>
                <?php endif; ?>
                </div>

                <div class="col-xl-3 col-lg-3 col-md-6 text-light d-flex flex-column mt-2 text-center menu">
                <?php if ( is_active_sidebar( 'offre3' ) ) : ?>
	            <?php dynamic_sidebar( 'offre3' ); ?>
                <?php endif; ?>
                </div>

                <div class="col-xl-3 col-lg-3 col-md-6 text-light d-flex flex-column mt-2 text-center menu">
                <?php if ( is_active_sidebar( 'offre4' ) ) : ?>
	            <?php dynamic_sidebar( 'offre4' ); ?>
                <?php endif; ?>
                </div>
                   
            </div>
        </div>
    </div>
</section>



<section>
<section class=" section-tours" id="section-tours">
        <div class="container" id="carte">
            <div class="row justify-content-center">
                <div class="section-tours-title">
                    <h2 data-text="la Carte " class=" my-5 text-center">
                        la Carte
                    </h2>
                </div>
            </div>
            <div class="row">
                <div class="col-12  col-xs-12 col-sm-12 col-md-6 mx-auto col-lg-4 col-xl-4 ">
                   
            
                <div class="card-burger">
                    <!-- carte 1 recto -->
                        <div class="card__side card__side--front">
                            <div class="card__picture card__picture--1">
                                <img src="wp-content/themes/onepageburger/images/burger-1.png" class="img-fluid card__picture--img" alt="...">
                            </div>
                            <?php if ( is_active_sidebar( 'offre5' ) ) : ?>
	                        <?php dynamic_sidebar( 'offre5' ); ?>
                            <?php endif; ?>
                        </div>


                    <!-- carte 1 verso -->
                        <div class="card__side card__side--back card__side--back-1">
                            <div class="card__cta mt-5">
                                <div class="card__price-box">
                                    <p class="card__price-only">LE VESOUL’R</p>
                                    <p class="card__price-value">12.90€</p>
                                    
                                </div>
                                <a href="#popup" id="Reserve1" class="btn btn--white">Reserver!</a>
                                
                            </div>
                            <div class="card-des">
                                <div class="card-rating text-center">
                                    <span class="text-light">Avis :</span>
                                    <img src="wp-content/themes/onepageburger/images/bouton-burger.png" class="card-rating-img ml-2" alt="...">
                                    <img src="wp-content/themes/onepageburger/images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="wp-content/themes/onepageburger/images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="wp-content/themes/onepageburger/images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="wp-content/themes/onepageburger/images/bouton-burger.png" class="card-rating-img" alt="...">
                                </div>                               
                            </div>                           
                        </div>
                    </div>
                </div>




                <div class="col-12  col-xs-12 col-sm-12 col-md-6 mx-auto col-lg-4 col-xl-4">
                    <div class="card-burger">
                        <!-- carte 2 recto -->
                        <div class="card__side card__side--front">
                            <div class="card__picture card__picture--1">
                                <img src="wp-content/themes/onepageburger/images/mcdo.jpg" class="img-fluid card__picture--img" alt="...">
                            </div>
                            <?php if ( is_active_sidebar( 'offre6' ) ) : ?>
	                        <?php dynamic_sidebar( 'offre6' ); ?>
                            <?php endif; ?>
                        </div>

                        <!-- carte 2 verso -->
                        <div class="card__side card__side--back card__side--back-1">
                            <div class="card__cta mt-5">
                                <div class="card__price-box">
                                    <p class="card__price-only">LE FUNNY DUCK</p>
                                    <p class="card__price-value">14.90€</p>
                                </div>
                                <a href="#popup" id="Reserve2" class="btn btn--white">Réserver!</a>
                            </div>
                            <div class="card-des">
                                <div class="card-rating text-center">
                                    <span class="text-light">Avis :</span>
                                    <img src="images/bouton-burger.png" class="card-rating-img ml-2" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>



                <div class="col-12  col-xs-12 col-sm-12 col-md-6 mx-auto col-lg-4 col-xl-4">
                    <div class="card-burger">
                        <!-- carte 3 recto -->
                        <div class="card__side card__side--front">
                            <div class="card__picture card__picture--1">
                                <img src="wp-content/themes/onepageburger/images/burger-4.png" class="img-fluid card__picture--img" alt="...">
                            </div>
                            <?php if ( is_active_sidebar( 'offre7' ) ) : ?>
	                        <?php dynamic_sidebar( 'offre7' ); ?>
                            <?php endif; ?>                          
                        </div>

                        <!-- carte 3 verso -->
                        <div class="card__side card__side--back card__side--back-1">
                            <div class="card__cta mt-5">
                                <div class="card__price-box">
                                    <p class="card__price-only">L’AMÉRICAIN</p>
                                    <p class="card__price-value">11.90€</p>
                                </div>
                                <a href="#popup" id="Reserve3" class="btn btn--white">Reserver!</a>
                            </div>
                            <div class="card-des">
                                <div class="card-rating text-center">
                                    <span class="text-light">Avis :</span>
                                    <img src="images/bouton-burger.png" class="card-rating-img ml-2" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                </div>                               
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-12  col-xs-12 col-sm-12 col-md-6 mx-auto col-lg-4 col-xl-4">
                    <div class="card-burger">
                        <!-- carte 4 recto -->
                        <div class="card__side card__side--front">
                            <div class="card__picture card__picture--1">
                                <img src="wp-content/themes/onepageburger/images/burger-vegan-1.png" class="card__picture--img" alt="...">
                            </div>
                            <?php if ( is_active_sidebar( 'offre8' ) ) : ?>
	                        <?php dynamic_sidebar( 'offre8' ); ?>
                            <?php endif; ?>
                        </div>


                        <!-- carte 4 verso -->
                        <div class="card__side card__side--back card__side--back-1">
                            <div class="card__cta mt-5">
                                <div class="card__price-box">
                                    <p class="card__price-only">LE VEGGIE</p>
                                    <p class="card__price-value">12.90€</p>
                                </div>
                                <a href="#popup" id="Reserve4" class="btn btn--white">Reserver!</a>
                            </div>
                            <div class="card-des">
                                <div class="card-rating text-center">
                                    <span class="text-light">Avis :</span>
                                    <img src="images/bouton-burger.png" class="card-rating-img ml-2" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-12  col-xs-12 col-sm-12 col-md-6 mx-auto col-lg-4 col-xl-4">
                    <div class="card-burger">
                        <!-- carte 5 recto -->
                        <div class="card__side card__side--front">
                            <div class="card__picture card__picture--1">
                                <img src="wp-content/themes/onepageburger/images/burger-6.png" class=" img-fluid card__picture--img" alt="...">
                            </div>
                            <?php if ( is_active_sidebar( 'offre9' ) ) : ?>
	                        <?php dynamic_sidebar( 'offre9' ); ?>
                            <?php endif; ?>
                        </div>


                        <!-- carte 5 verso -->
                        <div class="card__side card__side--back card__side--back-1">
                            <div class="card__cta mt-5">
                                <div class="card__price-box">
                                    <p class="card__price-only text-uppercase">Le Montagnard</p>
                                    <p class="card__price-value">12.90€</p>
                                </div>
                                <a href="#popup" id="Reserve5" class="btn btn--white">Reserver!</a>
                            </div>
                            <div class="card-des">
                                <div class="card-rating text-center">
                                    <span class="text-light">Avis :</span>
                                    <img src="images/bouton-burger.png" class="card-rating-img ml-2" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>




                <div class="col-12  col-xs-12 col-sm-12 col-md-6 mx-auto col-lg-4 col-xl-4">
                    <div class="card-burger">
                        <!-- carte 6 recto -->
                        <div class="card__side card__side--front">
                            <div class="card__picture card__picture--1">
                                <img src="wp-content/themes/onepageburger/images/burger-2.png" class="img-fluid card__picture--img" alt="...">
                            </div>
                            <?php if ( is_active_sidebar( 'offre10' ) ) : ?>
	                        <?php dynamic_sidebar( 'offre10' ); ?>
                            <?php endif; ?>
                        </div>

                        <!-- carte 6 verso -->
                        <div class="card__side card__side--back card__side--back-1">
                            <div class="card__cta mt-5">
                                <div class="card__price-box">
                                    <p class="card__price-only text-uppercase">Le Chicky</p>
                                    <p class="card__price-value">11.90€</p>
                                </div>
                                <a href="#popup" id="Reserve8" class="btn btn--white">Reserver!</a>
                            </div>
                            <div class="card-des">
                                <div class="card-rating text-center">
                                    <span class="text-light">Avis :</span>
                                    <img src="images/bouton-burger.png" class="card-rating-img ml-2" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                </div>                               
                            </div>
                        </div>
                    </div>
                </div>



                <div class="col-12  col-xs-12 col-sm-12 col-md-6 mx-auto col-lg-4 col-xl-4">
                    <div class="card-burger">
                        <!-- carte 7 recto -->
                        <div class="card__side card__side--front">
                            <div class="card__picture card__picture--1">
                                <img src="wp-content/themes/onepageburger/images/mm.jpg" class="img-fluid card__picture--img" alt="...">
                            </div>
                            <?php if ( is_active_sidebar( 'offre11' ) ) : ?>
	                        <?php dynamic_sidebar( 'offre11' ); ?>
                            <?php endif; ?>
                        </div>

                        <!-- carte 7 verso -->
                        <div class="card__side card__side--back card__side--back-1">
                            <div class="card__cta mt-5">
                                <div class="card__price-box">
                                    <p class="card__price-only text-uppercase">le saônois</p>
                                    <p class="card__price-value">13.90€</p>
                                </div>
                                <a href="#popup" id="Reserve7" class="btn btn--white">Reserver!</a>
                            </div>
                            <div class="card-des">
                                <div class="card-rating text-center">
                                    <span class="text-light">Avis :</span>
                                    <img src="images/bouton-burger.png" class="card-rating-img ml-2" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-12  col-xs-12 col-sm-12 col-md-6 mx-auto col-lg-4 col-xl-4">
                    <div class="card-burger">
                        <!-- carte 8 recto -->
                        <div class="card__side card__side--front">
                            <div class="card__picture card__picture--1">
                                <img src="wp-content/themes/onepageburger/images/le-crémeux-min-.jpg" class="img-fluid card__picture--img" alt="...">
                            </div>
                            <?php if ( is_active_sidebar( 'offre12' ) ) : ?>
	                        <?php dynamic_sidebar( 'offre12' ); ?>
                            <?php endif; ?>
                        </div>

                        <!-- carte 8 verso -->
                        <div class="card__side card__side--back card__side--back-1">
                            <div class="card__cta mt-5">
                                <div class="card__price-box">
                                    <p class="card__price-only text-uppercase">le fun burger</p>
                                    <p class="card__price-value">14.90€</p>
                                </div>
                                <a id="Reserve6" href="#formModal" class="btn btn--white">Reserver!</a>
                            </div>
                            <div class="card-des">
                                <div class="card-rating text-center">
                                    <span class="text-light">Avis :</span>
                                    <img src="images/bouton-burger.png" class="card-rating-img ml-2" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                    <img src="images/bouton-burger.png" class="card-rating-img" alt="...">
                                </div>                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            
            <div class="modal fade" id="formModal">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <div class="modal-title">
                                <h4>Réserver La Table</h4>
                            </div>
                            <button type="button" data-dismiss="modal" class="close">
                                &times;
                            </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group row  ">
                                    <label class="col-form-label col-md-2 ">Nombre de personne</label>
                                    <div class="col-2 col-md-1 ">
                                        <div class="form-check form-check-inline">
                                            <input type="radio" id="1" name="r" class="form-check-input  ">
                                            <label class="form-check-label "><strong>1</strong></label>
                                        </div>
                                        
                                    </div>
                                    <div class="col-2 col-md-1  ">
                                        <div class="form-check form-check-inline ">
                                            <input type="radio" id="1" name="r" class="form-check-input">
                                            <label class="form-check-label "><strong>2</strong></label>
                                        </div>
                                    </div>
                                    <div class="col-2 col-md-1 ">
                                        <div class="form-check form-check-inline ">
                                            <input type="radio" id="1" name="r" class="form-check-input">
                                            <label class="form-check-label"><strong>3</strong></label>
                                        </div>
                                    </div>
                                    <div class="col-2 col-md-1 ">
                                        <div class="form-check form-check-inline ">
                                            <input type="radio" id="1" name="r" class="form-check-input">
                                            <label class="form-check-label"><strong>4</strong></label>
                                        </div>
                                    </div>
                                    <div class="col-2 col-md-1 ">
                                        <div class="form-check form-check-inline ">
                                            <input type="radio" id="1" name="r" class="form-check-input">
                                            <label class="form-check-label"><strong>5</strong></label>
                                        </div>
                                    </div>
                                    <div class="col-2 col-md-1 ">
                                        <div class="form-check form-check-inline ">
                                            <input type="radio" id="1" name="r" class="form-check-input">
                                            <label class="form-check-label"><strong>6</strong></label>
                                        </div>
                                    </div>

                                </div>
                                <!-- <div class="form-group row">
                                        <label class="col-form-label col-md-2">Section</label>
                                        <div class="col-md-4">
                                                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                                        <label class="btn btn-success active">
                                                          <input type="radio" name="options" autocomplete="off"  checked id="option1"> Non-Smoking
                                                        </label>
                                                        <label class="btn btn-danger">
                                                          <input type="radio" name="options" autocomplete="off"  id="option2"> Smoking
                                                        </label>
                                                       
                                                  </div>
                                        </div>
                                       
                                    </div> -->

                                <div class="form-group row">
                                    <label class="col-form-label col-md-2">La date et l'heure</label>
                                    <div class="col-md-4">
                                        <input class="form-control" type="date" placeholder="1">
                                    </div>
                                    <div class="col-md-4">
                                        <input class="form-control" type="time" placeholder="Time">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-3 offset-md-2">
                                        <button type="button" class="btn btn-secondary  ml-auto"
                                            data-dismiss="modal">Quitter</button>

                                        <button type="submit" class="btn btn-primary">Réserver</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>




</section>


<?php get_footer(); ?>