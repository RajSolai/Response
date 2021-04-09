/**
 *
 */
public class AnotherMainView : Gtk.EventBox {


    public AnotherMainView () {
        var thewebview = new IseView () ;
        var main_grid = new Gtk.Grid () ;
        var url_entry = new Gtk.Entry () ;
        var entry_box = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 2) ;
        var device_box = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 0) ;
        var go_btn = new Gtk.Button.with_label ("GO") ;
        //var iphone_x = new Gtk.Button.with_label ("iPhone X") ;
        var iphone_se = new Gtk.Button.with_label ("iPhone SE") ;
        var iphone_8 = new Gtk.Button.with_label ("iPhone 8") ;
        var pixel_2 = new Gtk.Button.with_label ("Pixel 2") ;

        main_grid.row_homogeneous = false ;
        main_grid.column_homogeneous = false ;
        main_grid.orientation = Gtk.Orientation.VERTICAL ;

        go_btn.clicked.connect (() => {
            string uri;
            if ("http://" in url_entry.text || "https://" in url_entry.text) {
                uri = url_entry.text+"/";
            }else {
                uri = "http://"+url_entry.text+"/";
            }
            print(uri);
            thewebview.loadPage (uri) ;
        }) ;

        // iphone_x.clicked.connect (() => {
        //     thewebview.resizePage (375,812) ;
        // }) ;
        iphone_se.clicked.connect (() => {
            thewebview.resizePage (320,568) ;
        }) ;
        iphone_8.clicked.connect (() => {
            thewebview.resizePage (375,667) ;
        }) ;
        pixel_2.clicked.connect (() => {
            thewebview.resizePage (411,731) ;
        }) ;
    

        //device_box.add (iphone_x) ;
        device_box.add (iphone_8) ;
        device_box.add (iphone_se) ;
        device_box.add (pixel_2) ;


        entry_box.pack_start (url_entry) ;
        entry_box.pack_start (go_btn) ;

        main_grid.add (entry_box) ;
        main_grid.add (device_box) ;
        main_grid.add (thewebview) ;

        add (main_grid) ;

    }

}