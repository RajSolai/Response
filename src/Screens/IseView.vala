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
public class IseView : Gtk.EventBox {

    private WebKit.WebView webview ;
    private WebKit.Settings settings ;
    private string current_url = "https://rajsolai.github.io/Response/";

    public IseView () {
        webview = new WebKit.WebView () ;
        settings = new WebKit.Settings () ;
        settings.enable_developer_extras = true ;
        webview.set_settings (settings) ;
        webview.load_uri (current_url) ;
        set_size_request (300, 500) ; // initial size
        add (webview) ;
    }

    public void loadPage(string url) {
        current_url = url;
        refresh_page();
    }

    public void resizePage(int width, int height, string ua) {
        set_size_request (width, height) ;
        settings.user_agent = ua ;
    }
    
    public void refresh_page () {
        webview.load_uri (current_url) ;
    }
    
    public void move_forward () {
        webview.go_back();
    }
    
    public void move_back () {
        webview.go_forward();
    }

}
