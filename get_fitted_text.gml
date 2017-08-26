///get_fitted_text(fon_font, str_text, int_width)

// Sets the specified font
draw_set_font(argument0);

// Sets the specified text
var str_otext = argument1;
var str_ctext = argument1;

// Loops through the specified text characters
for (var int_i = 1; int_i <= string_length(str_otext); int_i++) {
    // Gets a portion of the specified text characters
    str_ctext = string_copy(str_otext, 1, int_i);
    
    // Checks if the portion of the specified text has passed the specified width
    if (string_width(str_ctext) > argument2) {
        // Loops to find the beginning of the word at the end of the portion of the specified text
        for (var int_j = 0; int_j < int_i; int_j++) {
            // Checks if the beginning of the word at the end of the portion of the specified text was found
            if (string_char_at(argument1, int_i - int_j) == " ") {
                // Replaces the space before the word at the end of the portion of the specified text with a new line
                str_otext = string_delete(str_otext, int_i - int_j, 1));
                str_otext = string_insert("#", str_otext, int_i - int_j));
                
                // Ends the loop
                break;
            }
        }
    }
}

// Returns the formatted text
return str_otext;
