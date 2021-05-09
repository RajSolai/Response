class MainWindow : Gtk.Window {

    public MainWindow(Gtk.Application app) {
        var header_bar = new CustomHeaderBar () ;
        var main_view = new AnotherMainView (this) ;
        header_bar.title = "Response" ;
        get_style_context ().add_class ("rounded") ;
        set_titlebar (header_bar) ;
        add (main_view) ;
        show_all();
    }
    
}