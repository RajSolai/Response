/**
 *
 */
public class IseView : Gtk.EventBox {

    private WebKit.WebView webview ;
    private WebKit.Settings settings ;

    public IseView () {
        webview = new WebKit.WebView () ;
        settings = new WebKit.Settings () ;
        settings.enable_developer_extras = true ;
        webview.set_settings (settings) ;
        webview.load_uri ("https://rajsolai.github.io/lroton/") ;
        set_size_request (320, 568) ;// initial size
        add (webview) ;
    }

    public void loadPage(string url) {
        webview.load_uri (url) ;
    }

    public void resizePage(int width, int height,string ua) {
        set_size_request (width, height) ;
        settings.user_agent = ua;
    }

}