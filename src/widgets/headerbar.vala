/**
 * 
 */
public class CustomHeaderBar : Gtk.HeaderBar {
 
	public CustomHeaderBar() {
		get_style_context ().add_class ("default-decoration") ;
		get_style_context ().add_class ("flat") ;
		var header_bar_button = new Gtk.Button () ;
        header_bar_button.image = new Gtk.Image.from_icon_name ("open-menu-symbolic", Gtk.IconSize.SMALL_TOOLBAR) ;
        pack_end (header_bar_button) ;
        set_show_close_button (true) ;
	}

	
}