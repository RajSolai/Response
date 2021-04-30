/**
 * 
 */
public class CustomHeaderBar : Gtk.HeaderBar {
 
	public CustomHeaderBar() {
		get_style_context ().add_class ("default-decoration") ;
		get_style_context ().add_class ("flat") ;
		var infobtn = new InfoButton () ;
        pack_end (infobtn) ;
        set_show_close_button (true) ;
	}

	
}