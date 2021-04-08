/**
 *
 */
public class MainView : Gtk.EventBox {

    /**
     *
     */
    public MainView () {
    	var main_grid = new Gtk.Grid();
        var main_stack = new Gtk.Stack();
        var main_stack_switch = new Gtk.StackSwitcher();
        var url_entry = new Gtk.Entry();
        var entry_box = new Gtk.Box(Gtk.Orientation.HORIZONTAL,2);
        var go_btn = new Gtk.Button.with_label("GO");

        var pixel_view = new PixelView();
        var itenr_view = new ItenrView();
        var moto_view = new MotoView();
        var ise_view = new IseView();

        go_btn.clicked.connect (() => {
           ise_view.loadPage();
        });

        main_stack.homogeneous = false;
        main_grid.row_homogeneous = false;
        main_grid.column_homogeneous = false;
        //main_stack.expand = true ;
        main_stack.transition_type = Gtk.StackTransitionType.SLIDE_LEFT_RIGHT ;
        main_stack.add_titled(pixel_view,"pixel_view","Google Pixel");
        main_stack.add_titled(itenr_view,"itenr_view","IPhone 10R");
        main_stack.add_titled(moto_view,"moto_view","Moto G4");
        main_stack.add_titled(ise_view,"ise_view","IPhone SE");
       
        main_stack_switch.stack = main_stack;
        main_grid.orientation = Gtk.Orientation.VERTICAL;

        entry_box.add(url_entry);
        entry_box.add(go_btn);

        main_grid.add(entry_box);
        main_grid.add(main_stack_switch);
        main_grid.add(main_stack);

        add (main_grid) ;
    }

}