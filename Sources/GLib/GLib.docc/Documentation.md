# Documentation

You can generate documentation using the
[DocC plugin](https://apple.github.io/swift-docc-plugin/documentation/swiftdoccplugin/).
This is also the documentation that is auto-generated at
[https://rhx.github.io/SwiftGLib/](https://rhx.github.io/SwiftGLib/)

## Using DocC

To preview documentation matching your local installation, simply run

    swift package --disable-sandbox preview-documentation

then navigate to the URL shown for the local preview server.  Make sure you have JavaScript enabled in your browser.

## Using Jazzy

Alternatively, you can create static documentation using [jazzy](https://github.com/realm/jazzy).
Make sure you have [sourcekitten](https://github.com/jpsim/SourceKitten) and [jazzy](https://github.com/realm/jazzy) installed, e.g. on macOS (x86_64):

	brew install ruby sourcekitten
	/usr/local/opt/ruby/bin/gem install jazzy
	./generate-jazzy.sh
