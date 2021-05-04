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
        var iphone_se = new LabelButton ("iPhone SE", false) ;
        var moto_g4 = new LabelButton ("Moto G4", false) ;
        var iphone_8 = new LabelButton ("iPhone 8", false) ;
        var pixel_2 = new LabelButton ("Pixel 2", false) ;
        var sg_fold = new LabelButton ("Galaxy Fold", false) ;

        go_btn.clicked.connect (() => {
            var url = uri.generateUri (url_entry) ;
            if( url != "null" ){
                thewebview.loadPage (url) ;
            }else{
                new EmptyUrlAlert();
            }
        }) ;

        iphone_se.clicked.connect (() => {
            thewebview.resizePage (320, 568, ua.iphone_se) ;
            parent_window.resize(320,568);
        }) ;
        iphone_8.clicked.connect (() => {
            thewebview.resizePage (375, 667, ua.iphone_8) ;
            print(parent_window.resizable?"true":"false");
            parent_window.resize(375,667);
        }) ;
        moto_g4.clicked.connect (() => {
            thewebview.resizePage (360, 640, ua.moto_g4) ;
            parent_window.resize(360,640);
        }) ;
        pixel_2.clicked.connect (() => {
            thewebview.resizePage (411, 731, ua.pixel_2) ;
            parent_window.resize(411,731);
        }) ;
        sg_fold.clicked.connect (() => {
            thewebview.resizePage (280, 650, ua.sg_fold) ;
            parent_window.resize(280,650);
        }) ;


        device_box0.add (iphone_8) ;
        device_box0.add (iphone_se) ;
        device_box0.add (pixel_2) ;
        device_box1.add (moto_g4) ;
        device_box1.add (sg_fold) ;

        entry_box.pack_start (url_entry, true, true, 5) ;
        entry_box.pack_start (go_btn, true, true, 5) ;

        main_grid.add (entry_box) ;
        main_grid.add (device_box0) ;
        main_grid.add (device_box1) ;
        main_grid.add (thewebview) ;

        add (main_grid) ;

    }

}