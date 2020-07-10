
/// initGame

//Game Resolution
application_surface_enable(true);

application_surface_draw_enable(true);
randomize() 


// set any global defaults
layer_force_draw_depth(true,0);		// force all layers to draw at depth 0
draw_set_colour( c_black );


global.screenflash = 0;
global.gameWidth = 768;
global.gameHeight = 1344;
global.zoom = 1;
global.heal = 100;
global.load = 100;
global.debug = 0;

//surface_resize(application_surface, global.gameWidth, global.gameHeight);
display_reset(0, false);

