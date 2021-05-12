/**
 * Copyright (c) 2021 - Today solairaj (www.github.com/Rajsolai)
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA
 *
 * Authored by: solairaj <msraj085@gmail.com>
 */
public class AnotherMainView : Gtk.EventBox {


    public AnotherMainView (Gtk.Window parent_window) {
        var uri = new UriGen () ;
        var ua = new UserAgents () ;
        var thewebview = new IseView () ;
        var main_grid = new MainGrid () ;
        var url_entry = new UrlEntry () ;
        var entry_box = new HorizontalBox (5) ;
        var device_box = new HorizontalBox (3) ;
        var go_btn = new LabelButton ("Check", true) ;
        var iphone_se = new Gtk.ModelButton () ;
        var moto_g4 = new Gtk.ModelButton () ;
        var iphone_8 = new Gtk.ModelButton () ;
        var pixel_2 = new Gtk.ModelButton () ;
        var sg_fold = new Gtk.ModelButton () ;
        var sizes = new SizeChart () ;
        var resizemech = new ResizeMech () ;

        iphone_se.text = "iPhone SE" ;
        moto_g4.text = "Moto G4" ;
        iphone_8.text = "iPhone 8" ;
        pixel_2.text = "Pixel 2" ;
        sg_fold.text = "Galaxy Fold" ;

        var menu_list = new Gtk.Grid () ;
        menu_list.orientation = Gtk.Orientation.VERTICAL ;
        menu_list.add (iphone_8) ;
        menu_list.add (iphone_se) ;
        menu_list.add (moto_g4) ;
        menu_list.add (pixel_2) ;
        menu_list.add (sg_fold) ;
        menu_list.show_all () ;
        var popover = new Gtk.Popover (null) ;
        popover.add (menu_list) ;
        var menu_button = new Gtk.MenuButton () ;
        menu_button.popover = popover ;
        //

        go_btn.clicked.connect (() => {
            var url = uri.generateUri (url_entry) ;
            if( url != "null" ){
                thewebview.loadPage (url) ;
            } else {
                new EmptyUrlAlert (parent_window) ;
            }
        }) ;

        iphone_se.clicked.connect (() => {
            resizemech.resize (thewebview,
                               parent_window,
                               sizes.iphone_se[0],
                               sizes.iphone_se[1],
                               ua.iphone_se) ;
        }) ;
        iphone_8.clicked.connect (() => {
            resizemech.resize (thewebview,
                               parent_window,
                               sizes.iphone_8[0],
                               sizes.iphone_8[1],
                               ua.iphone_8) ;
        }) ;
        moto_g4.clicked.connect (() => {
            resizemech.resize (thewebview,
                               parent_window,
                               sizes.moto_g4[0],
                               sizes.moto_g4[1],
                               ua.moto_g4) ;
        }) ;
        pixel_2.clicked.connect (() => {
            resizemech.resize (thewebview,
                               parent_window,
                               sizes.pixel_2[0],
                               sizes.pixel_2[1],
                               ua.pixel_2) ;
        }) ;
        sg_fold.clicked.connect (() => {
            resizemech.resize (thewebview,
                               parent_window,
                               sizes.sg_fold[0],
                               sizes.sg_fold[1],
                               ua.sg_fold) ;
        }) ;

        device_box.add (new Gtk.Label ("  Select Device : ")) ;
        device_box.add (menu_button) ;

        entry_box.pack_start (url_entry, true, true, 5) ;
        entry_box.pack_start (go_btn, true, true, 5) ;

        main_grid.add (entry_box) ;
        main_grid.add (device_box) ;
        main_grid.add (thewebview) ;

        add (main_grid) ;

    }

}