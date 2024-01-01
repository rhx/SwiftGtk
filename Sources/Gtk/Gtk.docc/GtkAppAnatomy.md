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

```Swift
    let button = ButtonRef(label: "Hello, Button")
    window.set(child: button)
```

Here is the resulting program:

```Swift
import Gtk

let status = Application.run(startupHandler: nil) { app in
    let window = ApplicationWindowRef(application: app)
    window.title = "Hello, World"
    window.setDefaultSize(width: 160, height: 80)
    let button = ButtonRef(label: "Hello, Button")
    window.set(child: button)
    window.set(visible: true)
}

guard let status = status else {
    fatalError("Could not create Application")
}
guard status == 0 else {
    fatalError("Application exited with status \(status)")
}
```

## Memory Management

One question that arises is why we have been using
``/Gtk/ApplicationWindowRef``, ``/Gtk/LabelRef``, and
``/Gtk/ButtonRef`` instead of ``/Gtk/ApplicationWindow``,
``/Gtk/Label``, and ``/Gtk/Button``?  What is the difference?
The answer is memory management.  The `Ref` data types are
low-level data types that do not perform any automatic
memory management (but we could use the `refSink()`, `ref()`,
and `unref()` methods if we wanted to perform manual memory
management).  For a simple program with a static user interface,
we do not need to worry about releasing memory until the program
quits when the application window closes.  Therefore we do not
perform any reference counting and Gtk will make sure that our
widgets (which inherit from the `InitiallyUnowned` class)
won't get released prematurely.

>Tip: For more complex programs that add/remove windows and
widgets, you can use the non-`Ref` Swift class types such as
``/Gtk/Window``, ``/Gtk/Label``, or ``/Gtk/Button`` and utilise
[Swift's automatic reference counting (ARC)](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/automaticreferencecounting/)
for automatic memory management.
For simplicity, we won't worry about this in this tutorial.

In our modified ``Hello, World`` program, the whole interior of the
``/Gtk/Window`` is now a ``/Gtk/Button``.  But what if we want both
a ``/Gtk/Label`` and a ``/Gtk/Button`` in our ``/Gtk/Window``?
In the next section, we will see how we add multiple widgets
to our window.

## Layout Boxes

Most ``/Gtk/Widget``s only allow a single child.  If we want
a layout with multiple user interface elements, we need to
use a layout widget such as ``/Gtk/Box``.  To put both the
``/Gtk/Label`` and the ``/Gtk/Button`` in a ``/Gtk/Box``
using a vertical layout, we can use following:

```Swift
    let box = BoxRef(orientation: .vertical, spacing: 8)
    box.halign = .center
    box.valign = .center
    box.append(child: label)
    box.append(child: button)
    window.set(child: box)
```

This creates a vertical layout ``/Gtk/Box`` with a spacing
of 8 points.  The ``/Gtk/Box/halign`` and ``/Gtk/Box/valign``
properties are set to ``/Gtk/Align/center`` to ensure the
child widgets (the ``/Gtk/Label`` and the ``/Gtk/Button``)
are horizontally and vertically centred in the box.

Here is what the resulting program looks like:

```Swift
import Gtk

let status = Application.run(startupHandler: nil) { app in
    let window = ApplicationWindowRef(application: app)
    window.title = "Hello, World"
    window.setDefaultSize(width: 160, height: 80)
    let label = LabelRef(str: "Click the button below:")
    let button = ButtonRef(label: "Click Me!")
    let box = BoxRef(orientation: .vertical, spacing: 8)
    box.halign = .center
    box.valign = .center
    box.append(child: label)
    box.append(child: button)
    window.set(child: box)
    window.set(visible: true)
}

guard let status = status else {
    fatalError("Could not create Application")
}
guard status == 0 else {
    fatalError("Application exited with status \(status)")
}
```

While this program now contains a ``/Gtk/Button``,
nothing happens when the button gets pushed.
In the next section, we look at how to add actions
to control widgets such as buttons.

## Signals and Actions

In order for the user interface to be responsive,
``/Gtk/Widget``s use signals to react to events and
trigger actions.  An action is a simple callback
function or closure that gets called whenever the
corresponding event occurs (a corresponding signal
has been received by the widget).

For example, the button has a ``/Gtk/ButtonSignalName/clicked`` signal
that occurs whenever the button has been clicked.
We can connect a closure to the ``/Gtk/ButtonSignalName/clicked`` signal:

```Swift
    button.onClicked {
        print("Button '\($0.label!)' clicked.")
    }
```

The ``/Gtk/ButtonProtocol/onClicked`` method is a Swift convenience method
that wraps the low-level ``/Gtk/ButtonProtocol/connect(signal:flags:handler:)``
method (which itself is a convenience method that wraps a Swift closure into
user data that are passed to a `Callback` function pointer using the
``/Gtk/ButtonProtocol/connect(signal:flags:data:destroyData:signalHandler:)`` method.)
The parameter that is passed in (`$0` in the example) is a reference to the widget
that received the signal (in this case the ``/Gtk/Button`` itself).
The whole program now looks like this:

```Swift
import Gtk

let status = Application.run(startupHandler: nil) { app in
    let window = ApplicationWindowRef(application: app)
    window.title = "Hello, World"
    window.setDefaultSize(width: 160, height: 80)
    let label = LabelRef(str: "Press the button below:")
    let button = ButtonRef(label: "Press Me!")
    let box = BoxRef(orientation: .vertical, spacing: 8)
    box.halign = .center
    box.valign = .center
    box.append(child: label)
    box.append(child: button)
    window.set(child: box)
    window.set(visible: true)

    button.onClicked {
        print("Button '\($0.label!)' clicked.")
    }
}

guard let status = status else {
    fatalError("Could not create Application")
}
guard status == 0 else {
    fatalError("Application exited with status \(status)")
}
```

