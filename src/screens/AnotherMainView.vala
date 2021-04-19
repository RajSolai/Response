/**
 *
 */
public class AnotherMainView : Gtk.EventBox {


    public AnotherMainView () {
        var thewebview = new IseView () ;
        var main_grid = new Gtk.Grid () ;
        var url_entry = new Gtk.Entry () ;
        var entry_box = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 2) ;
        var device_box0 = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 0) ;
        var device_box1 = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 0) ;
        var go_btn = new Gtk.Button.with_label ("Open") ;
        var iphone_se = new Gtk.Button.with_label ("iPhone SE") ;
        var moto_g4 = new Gtk.Button.with_label ("Moto G4") ;
        var iphone_8 = new Gtk.Button.with_label ("iPhone 8") ;
        var pixel_2 = new Gtk.Button.with_label ("Pixel 2") ;
        var sg_fold = new Gtk.Button.with_label ("Galaxy Fold") ;
        var loading_text = new Gtk.Label ("....") ;

        main_grid.row_homogeneous = false ;
        main_grid.column_homogeneous = false ;
        main_grid.orientation = Gtk.Orientation.VERTICAL ;

        go_btn.clicked.connect (() => {
            string uri ;
            if( "http://" in url_entry.text || "https://" in url_entry.text ){
                uri = url_entry.text + "/" ;
            } else {
                uri = "http://" + url_entry.text + "/" ;
            }
            print (uri) ;
            thewebview.loadPage (uri) ;
        }) ;

        thewebview.webview_loading_started.connect (() => {
            loading_text.label = "loading...." ;
        }) ;

        thewebview.webview_loading_finished.connect (() => {
            loading_text.label = "loaded !" ;
        }) ;

        iphone_se.clicked.connect (() => {
            var se = "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1" ;
            thewebview.resizePage (320, 568, se) ;
        }) ;
        iphone_8.clicked.connect (() => {
            var i8 = "Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1" ;
            thewebview.resizePage (375, 667, i8) ;
        }) ;
        moto_g4.clicked.connect (() => {
            var mg4 = "Mozilla/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Mobile Safari/537.36" ;
            thewebview.resizePage (360, 640, mg4) ;
        }) ;
        pixel_2.clicked.connect (() => {
            var p2 = "Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Mobile Safari/537.36" ;
            thewebview.resizePage (411, 731, p2) ;
        }) ;
        sg_fold.clicked.connect (() => {
            var sgf = "Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Mobile Safari/537.36" ;
            thewebview.resizePage (280, 650, sgf) ;
        }) ;


        device_box0.add (iphone_8) ;
        device_box0.add (iphone_se) ;
        device_box0.add (pixel_2) ;
        device_box1.add (moto_g4) ;
        device_box1.add (sg_fold) ;

        entry_box.pack_start (url_entry) ;
        entry_box.pack_start (go_btn) ;

        main_grid.add (entry_box) ;
        main_grid.add (device_box0) ;
        main_grid.add (device_box1) ;
        // main_grid.add (loading_text);
        main_grid.add (thewebview) ;

        add (main_grid) ;

    }

}