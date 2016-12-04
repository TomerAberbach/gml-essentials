///scale_game()

// Checks if the game is in focus
if (window_has_focus()) {
    // Checks if the game is fullscreen
    if ((window_get_fullscreen()) == true) {
        // Gets the display dimensions
        var flo_maxw = (display_get_width());
        var flo_maxh = (display_get_height());
    } else {
        // Gets the window dimensions
        var flo_maxw = (window_get_width());
        var flo_maxh = (window_get_height());
    }
    
    // Gets the base width and height
    var flo_basew = (min(room_width, (view_wport[0] + ((view_enabled == false) * room_width))));
    var flo_baseh = (min(room_height, (view_hport[0] + ((view_enabled == false) * room_height))));
    
    // Gets the aspect ratio
    var flo_aspect = (flo_basew / flo_baseh);
    
    // Checks if the game is portrait
    if (flo_maxw < flo_maxh) {
        // Gets the width and height
        var flo_ww = (min(flo_basew, flo_maxw));
        var flo_hh = (flo_ww / flo_aspect);
    } else {
        // Gets the width and height
        var flo_hh = (min(flo_baseh, flo_maxh));
        var flo_ww = (flo_hh * flo_aspect);
    }
        
    // Checks if the width and height are not 0
    if ((flo_ww != 0) && (flo_hh != 0)) {
        // Checks if the base width and height are landscape
        if (flo_aspect > 1) {
            // Resizes the GUI
            display_set_gui_size((flo_baseh * flo_aspect), flo_baseh);
        } else {
            // Resizes the GUI
            display_set_gui_size(flo_basew, (flo_basew / flo_aspect));
        }
        
        // Resizes the application surface
        surface_resize(application_surface, flo_ww, flo_hh);
    }
}
