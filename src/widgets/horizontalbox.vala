class HorizontalBox : Gtk.Box{
    public HorizontalBox(int space){
        Object(
            orientation: Gtk.Orientation.HORIZONTAL,
            spacing: space
        );
    }
}