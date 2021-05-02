class EmptyUrlAlert : Gtk.MessageDialog {
    public EmptyUrlAlert () {
        Object (
            message_type: Gtk.MessageType.WARNING,
            text: "That Was an Empty Url 😥️ !",
            buttons: Gtk.ButtonsType.OK
            ) ;
        var response = run();
        if(response == Gtk.ResponseType.OK){
            destroy();
        }
        destroy();
    }

}