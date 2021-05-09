class HorizontalBox : Gtk.Box {
    public HorizontalBox (int space) {
        Object (
            orientation: Gtk.Orientation.HORIZONTAL,
            spacing: space
            ) ;
        get_style_context ().add_class ("h-box") ;
    }

}