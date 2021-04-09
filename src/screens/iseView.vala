/**
 *
 */
public class IseView : Gtk.EventBox {

    private WebKit.WebView webview ;
    private WebKit.Settings settings;

    public IseView () {
        webview = new WebKit.WebView () ;
        settings = new WebKit.Settings ();
        settings.enable_developer_extras = true; 
        webview.set_settings (settings);
        webview.load_uri ("https://www.instagram.com/") ;
        set_size_request (320, 568) ;
        add (webview) ;
    }

    public void loadPage(string url) {
        webview.load_uri (url) ;
    }

    public void resizePage(int width, int height) {
        set_size_request (width, height) ;
    }

}