class UriGen {
    public string generateUri(Gtk.Entry text_entry) {
        string uri ;
        if( "http://" in text_entry.text || "https://" in text_entry.text ){
            uri = text_entry.text + "/" ;
        } else {
            uri = "http://" + text_entry.text + "/" ;
        }
        return uri ;
    }
}