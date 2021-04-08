/**
 *
 */
public class PixelView : Gtk.EventBox {

    /**
     *
     */
    public PixelView () {
    	var webview = new WebKit.WebView();
    	webview.load_uri("https://www.instagram.com/");
        set_size_request (411, 731) ;
        add(webview);
    }

}