#include <gtk/gtk.h>
     
static int counter = 0;

void greet(GtkWidget *widget, gpointer data) {
    // printf equivalent in GTK+
    g_print ("Hi there! Welcome to GTK\n");
    g_print ("%s clicked %d times\n", (char*)data, ++counter);
}
     
int main(int argc, char *argv[]) {
    GtkWidget *window;
    gtk_init (&argc, &argv);
     
    window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
     
    gtk_container_set_border_width(GTK_CONTAINER (window), 20);
     
     
    gtk_widget_show_all(window); 
    gtk_main ();
     
    return 0;
}
