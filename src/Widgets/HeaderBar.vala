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
public class CustomHeaderBar : Hdy.HeaderBar {

    public CustomHeaderBar () {
        get_style_context ().add_class ("flat") ;
        var infobtn = new InfoButton () ;
        var mode_switch = new Granite.ModeSwitch.from_icon_name ("display-brightness-symbolic", "weather-clear-night-symbolic") ;
        var gtk_settings = Gtk.Settings.get_default () ;
        mode_switch.primary_icon_tooltip_text = _("Light Mode") ;
        mode_switch.secondary_icon_tooltip_text = _("Dark Mode") ;
        mode_switch.valign = Gtk.Align.CENTER ;
        mode_switch.bind_property ("active", gtk_settings, "gtk_application_prefer_dark_theme") ;
        set_decoration_layout ("close:");
        pack_start (infobtn) ;
        pack_end (mode_switch) ;
        set_show_close_button (true) ;
    }

}
