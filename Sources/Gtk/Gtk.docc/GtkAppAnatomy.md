# Anatomy of a Gtk Application

Gtk user interfaces consist of widgets.
Widgets are objects that derive from `Object`
and are organised in a hierarchical fashion, i.e.,
every widget is a container that can contain zero, one,
or sometimes more than one other widget.

The main container of a Gtk application is the ``/Gtk/ApplicationWindow``,
which is a subclass of ``Window`` that integrates with the actual ``/Gtk/Application``.
The user interface of an application is created by adding other widgets such as
``/Gtk/Button``s, text ``/Gtk/Entry`` fields, ``/Gtk/MenuButton``s and similar.
While it is possible to add widgets programmatically, a simpler
way is to create an XML `ui` file and use ``/Gtk/Builder`` to create the widgets
from the user interface file.  There are tools you can use to design user interfaces
graphically, such as [Cambalache](https://flathub.org/apps/ar.xjuan.Cambalache)
for gtk4 (as well as gtk3) and [Glade](https://gitlab.gnome.org/GNOME/glade)
for gtk3 (but there are [recommendations to write user interface files by hand]
(https://blogs.gnome.org/christopherdavis/2020/11/19/glade-not-recommended/)).

## Adding Widgets

Let's add a ``/Gtk/Button`` to our "Hello World" application
from the <doc:Tutorial> tutorial.  Here is the original source code
from that tutorial:

```Swift
import Gtk

let status = Application.run(startupHandler: nil) { app in
    let window = ApplicationWindowRef(application: app)
    window.title = "Hello, World"
    window.setDefaultSize(width: 160, height: 80)
    let label = LabelRef(str: "Hello, SwiftGtk")
    window.set(child: label)
    window.set(visible: true)
}

guard let status = status else {
    fatalError("Could not create Application")
}
guard status == 0 else {
    fatalError("Application exited with status \(status)")
}
```

We can simply replace the ``/Gtk/Label`` with a ``/Gtk/Button``:

Here is the resulting program:

```Swift
import Gtk

let status = Application.run(startupHandler: nil) { app in
    let window = ApplicationWindowRef(application: app)
    window.title = "Hello, World"
    window.setDefaultSize(width: 160, height: 80)
    let label = LabelRef(str: "Hello, SwiftGtk")
    window.set(child: label)
    window.set(visible: true)
}

guard let status = status else {
    fatalError("Could not create Application")
}
guard status == 0 else {
    fatalError("Application exited with status \(status)")
}
```
