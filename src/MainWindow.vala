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
class MainWindow : Hdy.ApplicationWindow {

    public MainWindow (Gtk.Application app) {
        var window_handle = new Hdy.WindowHandle () ;
        var window_box = new Gtk.Box (Gtk.Orientation.VERTICAL,1) ;
        var header_bar = new CustomHeaderBar () ;
        var main_view = new AnotherMainView (this) ;
        window_box.add(header_bar);
        window_box.add(main_view);
        header_bar.title = _("Response") ;
        get_style_context ().add_class ("rounded") ;
        window_handle.add(window_box);
        add (window_handle) ;
        show_all () ;
    }
    
    construct {
        Hdy.init();
    }

}
