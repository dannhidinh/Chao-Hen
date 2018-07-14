/**
 * ControlP5 ScrollableList
 *
 * replaces DropdownList and and ListBox. 
 * List can be scrolled by dragging the list or using the scroll-wheel. 
 *
 * by Andreas Schlegel, 2014
 * www.sojamo.de/libraries/controlp5
 *
 */


import controlP5.*;
import java.util.*;

PImage bg;
ControlP5 cp5;

void setup() {
  size(800, 800);
  bg = loadImage("game_bg-default.png");
  cp5 = new ControlP5(this);
  cp5.setColorBackground(color(211,211,211, 50));
  List l = Arrays.asList("fling", "drag", "splody hands", "change skin", "add text");
  /* add a ScrollableList, by default it behaves like a DropdownList */
  cp5.addScrollableList("options")
    .setPosition(30, 30)
    .setSize(200, 400)
    .setBarHeight(30)
    .setItemHeight(30)
    .addItems(l)
    .setColorValue(0xff2b2b2b)
    .setFont(createFont("gadugi",12))
    .setBackgroundColor(0x00FFFFFF);
    // .setType(ScrollableList.LIST) // currently supported DROPDOWN and LIST
    ;
    
    cp5.getController("options").getCaptionLabel().setColor(color(0xff2b2b2b) );

}

void draw() {
  background(bg);
}

void dropdown(int n) {
  /* request the selected item based on index n */
  println(n, cp5.get(ScrollableList.class, "options").getItem(n));

  /* here an item is stored as a Map  with the following key-value pairs:
   * name, the given name of the item
   * text, the given text of the item by default the same as name
   * value, the given value of the item, can be changed by using .getItem(n).put("value", "abc"); a value here is of type Object therefore can be anything
   * color, the given color of the item, how to change, see below
   * view, a customizable view, is of type CDrawable 
   */

 /* CColor c = new CColor();
  c.setBackground(color(255,200,200));
  cp5.get(ScrollableList.class, "options").getItem(n).put("color", c);*/
}
/*
void keyPressed() {
  switch(key) {
    case('1'):
    //make the ScrollableList behave like a ListBox
    cp5.get(ScrollableList.class, "options").setType(ControlP5.LIST);
    break;
    case('2'):
    //make the ScrollableList behave like a DropdownList
    cp5.get(ScrollableList.class, "options").setType(ControlP5.DROPDOWN);
    break;
    case('3'):
    //change content of the ScrollableList
    List l = Arrays.asList("a-1", "b-1", "c-1", "d-1", "e-1", "f-1", "g-1", "h-1", "i-1", "j-1", "k-1");
    cp5.get(ScrollableList.class, "options").setItems(l);
    break;
    case('4'):
    //remove an item from the ScrollableList
    cp5.get(ScrollableList.class, "options").removeItem("k-1");
    break;
    case('5'):
    //clear the ScrollableList
    cp5.get(ScrollableList.class, "options").clear();
    break;
  }
}
*/
