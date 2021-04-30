/**
 *
 */
public class AnotherMainView : Gtk.EventBox {


    public AnotherMainView () {
        var uri = new UriGen ();
        var ua = new UserAgents();
        var thewebview = new IseView () ;
        var main_grid = new Gtk.Grid () ;
        var url_entry = new Gtk.Entry () ;
        var entry_box = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 5) ;
        var device_box0 = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 3) ;
        var device_box1 = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 3) ;
        var go_btn = new Gtk.Button.with_label ("Check") ;
        var iphone_se = new Gtk.Button.with_label ("iPhone SE") ;
        var moto_g4 = new Gtk.Button.with_label ("Moto G4") ;
        var iphone_8 = new Gtk.Button.with_label ("iPhone 8") ;
        var pixel_2 = new Gtk.Button.with_label ("Pixel 2") ;
        var sg_fold = new Gtk.Button.with_label ("Galaxy Fold") ;

        main_grid.row_homogeneous = false ;
        main_grid.column_homogeneous = false ;
        main_grid.orientation = Gtk.Orientation.VERTICAL ;
        main_grid.row_spacing = 3 ;
        url_entry.placeholder_text = "Enter URL here" ;


        go_btn.clicked.connect (() => {
            thewebview.loadPage (uri.generateUri(url_entry)) ;
        }) ;

        iphone_se.clicked.connect (() => {
            thewebview.resizePage (320, 568, ua.iphone_se) ;
        }) ;
        iphone_8.clicked.connect (() => {
            thewebview.resizePage (375, 667, ua.iphone_8) ;
        }) ;
        moto_g4.clicked.connect (() => {
            thewebview.resizePage (360, 640, ua.moto_g4) ;
        }) ;
        pixel_2.clicked.connect (() => {
            thewebview.resizePage (411, 731, ua.pixel_2) ;
        }) ;
        sg_fold.clicked.connect (() => {
            thewebview.resizePage (280, 650, ua.sg_fold) ;
        }) ;


        device_box0.add (iphone_8) ;
        device_box0.add (iphone_se) ;
        device_box0.add (pixel_2) ;
        device_box1.add (moto_g4) ;
        device_box1.add (sg_fold) ;

        entry_box.pack_start (url_entry, true, true, 5) ;
        entry_box.pack_start (go_btn, true, true, 5) ;

        main_grid.add (entry_box) ;
        main_grid.add (device_box0) ;
        main_grid.add (device_box1) ;
        main_grid.add (thewebview) ;

        add (main_grid) ;

    }

}