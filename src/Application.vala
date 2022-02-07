/*
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

public class Application : Gtk.Application {

    private MainWindow main_window = null ;
    private const string BRAND_STYLESHEET = """
        .main-grid {
            margin: 2px;
            margin-top: 5px;
        }
        .h-box {
            padding-left: 3px;
        }
        .control-box {
            margin-left: 1rem;
        }    
    """;

    public Application () {
        Object (
            application_id: "com.github.rajsolai.response",
            flags : ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate() {

        weak Gtk.IconTheme default_theme = Gtk.IconTheme.get_default () ;
        default_theme.add_resource_path ("/com/github/rajsolai/response") ;

        // stylesheet
        var provider = new Gtk.CssProvider () ;
        try{
            provider.load_from_data (BRAND_STYLESHEET, -1) ;
        Gtk.StyleContext.add_provider_for_screen (Gdk.Screen.get_default (), provider, Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION) ;
        }catch(Error e){
            warning (e.message);
        }

        main_window = new MainWindow (this) ;
        add_window (main_window) ;

    }

    public static int main(string[] args) {
        var app = new Application () ;
        return app.run (args) ;
    }

}

