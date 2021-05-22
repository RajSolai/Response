/**
 *
 */
public class CustomHeaderBar : Gtk.HeaderBar {

    public CustomHeaderBar () {
        get_style_context ().add_class ("default-decoration") ;
        get_style_context ().add_class ("flat") ;
        var infobtn = new InfoButton () ;
        var mode_switch = new Granite.ModeSwitch.from_icon_name ("display-brightness-symbolic", "weather-clear-night-symbolic") ;
        mode_switch.primary_icon_tooltip_text = _ ("Light background") ;
        mode_switch.secondary_icon_tooltip_text = _ ("Dark background") ;
        mode_switch.valign = Gtk.Align.CENTER ;
        var gtk_settings = Gtk.Settings.get_default () ;
        mode_switch.bind_property ("active", gtk_settings, "gtk_application_prefer_dark_theme") ;
        pack_end (infobtn) ;
        pack_start (mode_switch) ;
        set_show_close_button (true) ;
    }

}