/**
 *
 */
public class MotoView : Gtk.EventBox {

    /**
     *
     */
    public MotoView () {
    	var webview = new WebKit.WebView();
    	webview.load_uri("https://www.instagram.com/");
        set_size_request (360, 640) ;
        add(webview);
    }

}