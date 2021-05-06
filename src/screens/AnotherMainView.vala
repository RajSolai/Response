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
        var device_box0 = new HorizontalBox (3) ;
        var device_box1 = new HorizontalBox (3) ;
        var go_btn = new LabelButton ("Check", true) ;
        var sample = new Gtk.ModelButton () ;
        var iphone_se = new Gtk.ModelButton () ;
        var moto_g4 = new Gtk.ModelButton () ;
        var iphone_8 = new Gtk.ModelButton () ;
        var pixel_2 = new Gtk.ModelButton () ;
        var sg_fold = new Gtk.ModelButton () ;

        iphone_se.text = "iPhone SE" ;
        moto_g4.text = "Moto G4" ;
        iphone_8.text = "iPhone 8" ;
        pixel_2.text = "Pixel 2" ;
        sg_fold.text = "Galaxy Fold" ;

        //
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
            thewebview.resizePage (320, 568, ua.iphone_se) ;
            parent_window.resize (320, 568) ;
        }) ;
        iphone_8.clicked.connect (() => {
            thewebview.resizePage (375, 667, ua.iphone_8) ;
            parent_window.resize (375, 667) ;
        }) ;
        moto_g4.clicked.connect (() => {
            thewebview.resizePage (360, 640, ua.moto_g4) ;
            parent_window.resize (360, 640) ;
        }) ;
        pixel_2.clicked.connect (() => {
            thewebview.resizePage (411, 731, ua.pixel_2) ;
            parent_window.resize (411, 731) ;
        }) ;
        sg_fold.clicked.connect (() => {
            thewebview.resizePage (280, 650, ua.sg_fold) ;
            parent_window.resize (280, 650) ;
        }) ;


        // device_box0.add (iphone_8) ;
        // device_box0.add (iphone_se) ;
        // device_box0.add (pixel_2) ;
        // device_box1.add (moto_g4) ;
        // device_box1.add (sg_fold) ;
        device_box1.add (menu_button) ;


        entry_box.pack_start (url_entry, true, true, 5) ;
        entry_box.pack_start (go_btn, true, true, 5) ;

        main_grid.add (entry_box) ;
        // main_grid.add (device_box0) ;
        main_grid.add (device_box1) ;
        main_grid.add (thewebview) ;

        add (main_grid) ;

    }

}