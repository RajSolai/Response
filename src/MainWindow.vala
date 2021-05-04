class MainWindow : Gtk.Window {

    public MainWindow(Gtk.Application app) {
        var header_bar = new CustomHeaderBar () ;
        var main_view = new AnotherMainView (this) ;
        title = "Response" ;
        set_titlebar (header_bar) ;
        add (main_view) ;
        show_all();
    }


    
}