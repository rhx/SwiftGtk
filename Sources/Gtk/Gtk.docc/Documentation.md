# Documentation

You can generate documentation using the
[DocC plugin](https://apple.github.io/swift-docc-plugin/documentation/swiftdoccplugin/).
You can also read a current version of this documentation online
[https://rhx.github.io/SwiftGtk4Doc/](https://rhx.github.io/SwiftGtk4Doc/)

## Using DocC

To preview documentation matching your local installation, simply run

    swift package --disable-sandbox preview-documentation

then navigate to the URL shown for the local preview server.  Make sure you have JavaScript enabled in your browser.

> Warning: If you have checked out a branch (such as `gtk4-monorepo`) that contains multiple targets,
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
