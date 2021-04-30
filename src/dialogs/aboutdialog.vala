public class About : Gtk.AboutDialog {

    public About() {
        Object(
            program_name : "Response",
            logo_icon_name : "com.github.rajsolai.response",
            comments : "Test your web page's Responsiveness ! 👨‍💻️" ,
            website : "https://github.com/RajSolai/Response/",
            website_label : "Visit Response",
            version : "1.0.0" 
        );

        response.connect ((response_id) => {
            if( response_id == Gtk.ResponseType.CANCEL || response_id == Gtk.ResponseType.DELETE_EVENT ){
                hide_on_delete () ;
            }
        }) ;
        present () ;
    }

}