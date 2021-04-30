public class InfoButton : Gtk.Button {

    public InfoButton() {

        Object (
            image: new Gtk.Image.from_icon_name ("dialog-information-symbolic", Gtk.IconSize.SMALL_TOOLBAR)
            ) ;

        clicked.connect (() => {
            new About ();
        });

    }
}