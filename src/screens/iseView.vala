/**
 *
 */
public class IseView : Gtk.EventBox {

    private WebKit.WebView webview ;

    public IseView () {
        webview = new WebKit.WebView () ;
        webview.load_uri ("https://www.instagram.com/") ;
        set_size_request (320, 568) ;
        add (webview) ;
    }

    public void loadPage() {
        webview.load_uri ("https://www.google.com/") ;
    }

    public void resizePage(int width, int height) {
        set_size_request (width, height) ;
    }

}