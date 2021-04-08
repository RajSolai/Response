/**
 *
 */
public class ItenrView : Gtk.EventBox {

    /**
     *
     */
    public ItenrView () {
        var webview = new WebKit.WebView();
    	webview.load_uri("https://www.instagram.com/");
        set_size_request (375, 812) ;
        add (webview) ;
    }

}