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
public class About : Gtk.AboutDialog {

    public About () {
        Object (
            program_name: "Response",
            logo_icon_name: "com.github.rajsolai.response",
            comments: "Test your web page's Responsiveness ! 👨‍💻️",
            website: "https://github.com/RajSolai/Response/",
            website_label: "Visit Response",
            version: "1.1.1"
            ) ;

        response.connect ((response_id) => {
            if( response_id == Gtk.ResponseType.CANCEL || response_id == Gtk.ResponseType.DELETE_EVENT ){
                hide_on_delete () ;
            }
        }) ;
        present () ;
    }

}