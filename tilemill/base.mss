/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Water areas
 * - Water ways
 * - Administrative Boundaries
 *
 */

// Water, land, bos, gebouw, weg

Map {
  background-color: @water;
  //buffer-size: 256;
}

/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#land,
#land-low[zoom>=0][zoom<10],
#land-high[zoom>=10] {
  polygon-fill: @land;
  //polygon-gamma: 0.75;
}

#landuse_gen0[zoom>3][zoom<=9],
#landuse_gen1[zoom>9][zoom<=12],
#landuse[zoom>12] {
  [type='cemetery']      { polygon-fill: @cemetery; }
  [type='college']       { polygon-fill: @school; }
  [type='commercial']    { polygon-fill: @industrial; }
  [type='common']        { polygon-fill: @park; }
  [type='forest']        { polygon-fill: @wooded; }
  [type='golf_course']   { polygon-fill: @sports; }
  [type='grass']         { polygon-fill: @grass; }
  [type='hospital']      { polygon-fill: @hospital; }
  [type='industrial']    { polygon-fill: @industrial; }
  [type='park']          { polygon-fill: @park; }
  [type='parking']       { polygon-fill: @parking; }
  [type='pedestrian']    { polygon-fill: @pedestrian_fill; }
  [type='pitch']         { polygon-fill: @sports; }
  [type='residential']   { polygon-fill: @residential; }
  [type='school']        { polygon-fill: @school; }
  [type='sports_center'] { polygon-fill: @sports; }
  [type='stadium']       { polygon-fill: @sports; }
  [type='university']    { polygon-fill: @school; }
  [type='wood']          { polygon-fill: @wooded; }
}

#landuse_overlays[type='nature_reserve'][zoom>6] {
  line-color: @wooded;
  line-opacity:  0.3;
  line-dasharray: 1,1;
  polygon-fill: @wooded;
  polygon-opacity: 0.1;
  [zoom=7] { line-width: 0.4; }
  [zoom=8] { line-width: 0.6; }
  [zoom=9] { line-width: 0.8; }
  [zoom=10] { line-width: 1.0; }
  [zoom=11] { line-width: 1.5; }
  [zoom>=12] { line-width: 2.0; }
}

/* ================================================================== */
/* BUILDINGS
/* ================================================================== */

// Buildings zat onder Aeroway
#building_lines::glow {
  [rand1 < 7][osm_id_mod10 > 2] {
    [zoom=12] {
      line-width: 0.55px;
      line-opacity: 0.4;
      line-color: darken(@light, 10%);
      image-filters: agg-stack-blur(1, 1);
    }
    [zoom=13] {
      line-width: 0.8px;
      line-opacity: 0.5;
      line-color: darken(@light, 10%);
      image-filters: agg-stack-blur(1, 1);
    }
    [zoom=14] {
      line-width: 1.2px;
      line-opacity: 0.8;
      line-color: darken(@light, 10%);
      image-filters: agg-stack-blur(2, 2);
    }
    [zoom=15] {
      line-width: 1.5px;
      line-opacity: 0.9;
      line-color: darken(@light, 10%);
      image-filters: agg-stack-blur(4, 4);
    }
    [zoom=16] {
      line-width: 2px;
      opacity: 1;
      line-color: darken(@light, 10%);
      image-filters: agg-stack-blur(8, 8);
    }
    [zoom=17] {
      line-width: 2px;
      opacity: 1;
      line-color: @light;
      image-filters: agg-stack-blur(12, 12);
    }
    [zoom=18] {
      line-width: 4px;
      opacity: 1;
      line-color: @light;
      image-filters: agg-stack-blur(16, 16);
    }
    [zoom=19] {
      //line-color: @light;
   	  //image-filters: agg-stack-blur(15, 15);
  	  }
    }

}

#building_lines::glow2 {
  [rand1 < 5][osm_id_mod10 > 3] {
    /*[zoom=14] {
      line-width: 2px;
      line-opacity: 0.3;
      line-color: darken(@light, 20%);
      image-filters: agg-stack-blur(1, 1);
    }*/
    [zoom=15] {
      line-width: 2px;
      line-opacity: 0.3;
      line-color: darken(@light, 20%);
      image-filters: agg-stack-blur(1, 1);
    }
    [zoom<=15] {
      line-width: 0px;
    }
    [zoom=16] {
      line-width: 2px;
      line-opacity: 0.3;
      line-color: darken(@light, 20%);
      image-filters: agg-stack-blur(1, 1);
    }
    [zoom=17] {
      line-width: 2px;
      line-opacity: 0.9;
      line-color: darken(@light, 20%);
      image-filters: agg-stack-blur(12, 12);
    }
  }
}

#buildings {
  polygon-fill: @building;
  opacity: 1;
  [zoom>=16] {
    line-color: #302725;
    line-width: 0.5;
  }  
}

/* ================================================================== */
/* LIGHT POSTS
/* ================================================================== */
/*
#lightposts {
  marker-fill: @light2;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  marker-width: 0;
  [zoom=15] {
    marker-width: 3px;
    image-filters: agg-stack-blur(0, 0);
  }
  [zoom=16] {
    marker-width: 6px;
    image-filters: agg-stack-blur(12, 12);
  }
  [zoom=17] {
    marker-width: 9px;
    image-filters: agg-stack-blur(18, 18);
  }
}*/

/*#lightposts::middle {
  marker-fill: @road;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  [zoom<=15] {
    marker-width: 0px;
  }
  [zoom=16] {
    marker-width: 1.5px;
  }
  [zoom=17] {
    marker-width: 2px;
  }
}*/

/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

#water_gen0[zoom>3][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] {
  polygon-fill: @water-light;
  
  ::blur {
    polygon-fill: @water;
	polygon-pattern-file: url(wave.png);
    polygon-geometry-transform: translate(0, 2);
  }
}

/* ================================================================== */
/* WATER WAYS
/* ================================================================== */

#waterway_low[zoom>=8][zoom<=12] {
  line-color: @water;
  [zoom=8] { line-width: 0.1; }
  [zoom=9] { line-width: 0.2; }
  [zoom=10]{ line-width: 0.4; }
  [zoom=11]{ line-width: 0.6; }
  [zoom=12]{ line-width: 0.8; }
}

#waterway_med[zoom>=13][zoom<=14] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=13]{ line-width: 1; }
    [zoom=14]{ line-width: 1.5; }
  }
  [type='stream'] {
    [zoom=13]{ line-width: 0.2; }
    [zoom=14]{ line-width: 0.4; }
  }
}

#waterway_high[zoom>=15] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=15]{ line-width: 2; }
    [zoom=16]{ line-width: 3; }
    [zoom=17]{ line-width: 4; }
    [zoom=18]{ line-width: 5; }
    [zoom=19]{ line-width: 6; }
    [zoom>19]{ line-width: 7; }
  }
  [type='stream'] {
    [zoom=15]{ line-width: 0.6; }
    [zoom=16]{ line-width: 0.8; }
    [zoom=17]{ line-width: 1; }
    [zoom=18]{ line-width: 1.5; }
    [zoom>18]{ line-width: 2; }
  }
  [type='ditch'],
  [type='drain'] {
    [zoom=15]{ line-width: 0.1; }
    [zoom=16]{ line-width: 0.3; }
    [zoom=17]{ line-width: 0.5; }
    [zoom=18]{ line-width: 0.7; }
    [zoom=19]{ line-width: 1; }
    [zoom>19]{ line-width: 1.5; }
  }
}

/* ================================================================== */
/* ADMINISTRATIVE BOUNDARIES
/* ================================================================== */

/*#admin[admin_level='2'][zoom>1] {
  line-color:@admin_2;
  line-width:0.5;
  [zoom=2] { line-opacity: 0.25; }
  [zoom=3] { line-opacity: 0.3; }
  [zoom=4] { line-opacity: 0.4; }
}*/
