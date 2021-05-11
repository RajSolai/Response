class ResizeMech {
    public void resize (IseView web_view,
                   Gtk.Window parent_window,
                   int height,
                   int width,
                   string user_agent
                   ) {
        web_view.resizePage (height, width, user_agent) ;
        parent_window.resize (height, width) ;
    }
}