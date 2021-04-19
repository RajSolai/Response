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
        webview.load_changed.connect ((WEBKIT_LOAD_STARTED) => {
            webview_loading_started () ;
        }) ;
        webview.load_changed.connect ((WEBKIT_LOAD_FINISHED) => {
            webview_loading_finished () ;
        }) ;
        webview.load_changed.connect((WEBKIT_LOAD_COMMITTED)=>{
            webview_loading_started();
        });

        set_size_request (320, 568) ;
        add (webview) ;
    }

    public void loadPage(string url) {
        webview.load_uri (url) ;
    }

    public void resizePage(int width, int height,string ua) {
        set_size_request (width, height) ;
        settings.user_agent = ua;
    }

    public signal void webview_loading_started() ;

    public signal void webview_loading_finished() ;


}