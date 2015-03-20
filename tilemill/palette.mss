/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */


/* set up font sets for various weights and styles */
@font_lt:           "Helvetica Neue Light";
@font_lt_italic:    "Helvetica Neue Light Italic";
@font:              "Helvetica Neue Regular";
@font_italic:       "Helvetica Neue Italic";
@font_bold:         "Helvetica Neue Bold";
@font_bold_italic:  "Helvetica Neue Bold Italic";


/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:          #040404;
@water:         #0c1821;
@water-light:   #12232d;
@light:         #c2a60f;
@light2:        #d7a634;
@forest:        #010201;
@building:      #050404;

@road:  darken(@land, 1%);
@road_case: #222;//lighten(@road, 5%);

@grass:             @land;
@beach:             @land;
@cemetery:          @land;
@wooded:            @forest;
@agriculture:       @land;
@park:              @land;
@hospital:          @land;
@school:            @land;
@sports:            @land;

@residential:       @land;
@commercial:        @land;
@industrial:        @land;
@parking:           @land;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     @road;
@motorway_fill:     @road;
@motorway_case:     @road_case;

@trunk_line:        @road;
@trunk_fill:        @road;
@trunk_case:        @road_case;

@primary_line:      @road;
@primary_fill:      @road;
@primary_case:      @road_case;

@secondary_line:    @road;
@secondary_fill:    @road;
@secondary_case:    @road_case;

@standard_line:     @road;
@standard_fill:     @road;
@standard_case:     @road_case;

@pedestrian_line:   @road;
@pedestrian_fill:   @road;
@pedestrian_case:   @road_case;

@cycle_line:        @road;
@cycle_fill:        @road;
@cycle_case:        @road_case;

@rail_line:         @road;
@rail_fill:         @road;
@rail_case:         @road_case;

@aeroway:           @road;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

@label_text:         #999;
@label_halo:         #111;

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@country_text:      @label_text;
@country_halo:      @label_halo;

@state_text:        @label_text;
@state_halo:        @label_halo;

@city_text:         @label_text;
@city_halo:         @label_halo;

@town_text:         @label_text;
@town_halo:         @label_halo;

@road_text:         @label_text;
@road_halo:         @label_halo;

@other_text:        @label_text;
@other_halo:        @label_halo;

@locality_text:     @label_text;
@locality_halo:     @label_halo;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      @label_text;
@village_halo:      @label_halo;

/* ****************************************************************** */


