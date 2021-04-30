class LabelButton : Gtk.Button{
    public LabelButton(string thislabel,bool iscolored){
        Object(
            label: thislabel
        );
        if (iscolored)
        {
            get_style_context ().add_class ("colored-button") ;
        }
    }
}