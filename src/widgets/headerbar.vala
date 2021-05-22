/**
 *
 */
public class CustomHeaderBar : Gtk.HeaderBar {

    public CustomHeaderBar () {
        get_style_context ().add_class ("default-decoration") ;
        get_style_context ().add_class ("flat") ;
        var infobtn = new InfoButton () ;
        var mode_switch = new Granite.ModeSwitch.from_icon_name ("display-brightness-symbolic", "weather-clear-night-symbolic") ;
        var menu_button = new Gtk.MenuButton () ;
        var menu_list = new Gtk.Grid () ;
        var popover = new Gtk.Popover (null) ;
        var gtk_settings = Gtk.Settings.get_default () ;
        var about_btn = new Gtk.ModelButton () ;
        about_btn.text = "About" ;
        // var darktoggle = new Gtk.ModelButton () ;
        mode_switch.primary_icon_tooltip_text = "Light Mode" ;
        mode_switch.secondary_icon_tooltip_text = "Dark Mode" ;
        mode_switch.valign = Gtk.Align.CENTER ;
        mode_switch.bind_property ("active", gtk_settings, "gtk_application_prefer_dark_theme") ;
        // pack_end (infobtn) ;
        menu_list.orientation = Gtk.Orientation.VERTICAL ;
        menu_list.add (mode_switch) ;
        menu_list.add (about_btn) ;
		menu_list.show_all () ;
        popover.add (menu_list) ;
        menu_button.image = new Gtk.Image.from_icon_name ("open-menu-symbolic", Gtk.IconSize.SMALL_TOOLBAR) ;
        menu_button.popover = popover ;
        pack_end (menu_button) ;
        set_show_close_button (true) ;
    }

}