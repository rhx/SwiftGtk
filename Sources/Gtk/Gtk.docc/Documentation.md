# Documentation

The documentation for SwiftGtk is written in DocC and contains tutorials
as well as reference documentation auto-generated from the `.gir` files.

You can generate documentation using the
[DocC plugin](https://apple.github.io/swift-docc-plugin/documentation/swiftdoccplugin/).
You can also read a current version of this documentation online
[https://rhx.github.io/SwiftGtk4Doc/](https://rhx.github.io/SwiftGtk4Doc/)

## Documentation Structure

The documentation structure for SwiftGtk follows the structure of the generated Swift source files.
For every [Object](/documentation/GLibObject/Object), there is a Swift
[Protocol](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols/)
that provides a default implementation of the Object's methods and properties.
For the documentation, the use of Protocols means that the methods and properties
are usually documented in the `Default Implementations` Section towards the bottom
rather than the main section of the type documentation.

>Tip: You can quickly navigate to the `Default Implementations` Section
      by clicking on the `Relationships` link in the navigation column
      on the right hand side.

There are two concrete types that wrap the Object in Swift and inherit the protocol implementation:

 - a `Ref` type (named after the type with a `Ref` suffix)
   that simply provides a typed wrapper around the underlying C language pointer.
   This type is typically returned by methods, functions, or properties that reference already
   existing instances of a given Object, e.g. a ``/Gtk/MenuModelRef`` returned by the
   ``/Gtk/Application/menubar`` property or a list (``/GLib/RefList``) of ``/Gtk/WindowRef``
   returned by the ``/Gtk/Application/windows`` property.

   Memory management for `Ref` instances uses the underlying `GLib`/`Gtk` mechanisms, which in most
   cases means that ``/GLibObject/ref`` and ``/GLibObject/unref`` calls need to be used for
   reference counting and manual memory management.

 - a class type (named after the type without a `Ref` suffix)
   that provides a full Swift class implementation of the type.
   For most Objects this means that memory is fully managed through Swift's [automatic reference counting]
   (https://docs.swift.org/swift-book/documentation/the-swift-programming-language/automaticreferencecounting/)
   mechanism.

For example, the documentation for the methods provided by ``/Gtk/Window``
can be found in the ``/Gtk/WindowProtocol`` article.  The same is true for ``/Gtk/WindowRef``.

## Using DocC

To preview documentation matching your local installation, simply run

    swift package --disable-sandbox preview-documentation

then navigate to the URL shown for the local preview server.  Make sure you have JavaScript enabled in your browser.

>Warning: If you have checked out a branch (such as `gtk4-monorepo`) that contains multiple targets,
          you need to tell the Swift Package Manager to generate documentation for a particular target.

To generate and preview documentation for a particular target, use the `--target` option
to specify the specific target you are interested in. For example:

    swift package --disable-sandbox preview-documentation --target Gtk


## Using Jazzy

Alternatively, you can create static documentation using [jazzy](https://github.com/realm/jazzy).
Make sure you have [sourcekitten](https://github.com/jpsim/SourceKitten) and [jazzy](https://github.com/realm/jazzy) installed, e.g. on macOS (x86_64):

	brew install ruby sourcekitten
	/usr/local/opt/ruby/bin/gem install jazzy
	./generate-jazzy.sh
