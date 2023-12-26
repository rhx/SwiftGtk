# Troubleshooting

This section shows some common errors you might encounter and how to fix them.

## FFI Module Errors

On some versions of macOS, when Xcode is installed,
there is a conflict between the FFI library module
available through Xcode and the command line tools.
This typically results in an error such as

    /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.2.sdk/usr/include/ffi/module.modulemap:1:8: error: redefinition of module 'FFI'
    module FFI [system] {
           ^
    /Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/ffi/module.modulemap:1:8: note: previously defined here
    module FFI [system] [extern_c] {
           ^
    error: fatalError

A way to resolve this is to remove the Command Line Tools.
Alternatively, you can temporarily rename the CommandLineTools folder, i.e.

    sudo mv /Library/Developer/CommandLineTools{,.orig}
    
Later you can move the folder back:

    sudo mv /Library/Developer/CommandLineTools{.orig,}

## Missing `.gir` Files

If you get an error such as

	Girs located at
	Cannot open '/GLib-2.0.gir': No such file or directory

Make sure that you have the relevant `gobject-introspection` packages installed (as per the Pre-requisites section), including their `.gir` and `.pc` files.

## Old Swift toolchain or Xcode
If, when you run `swift build`, you get a `Segmentation fault (core dumped)` or circular dependency error such as

	warning: circular dependency detected while parsing pangocairo: harfbuzz -> freetype2 -> harfbuzz
	
this probably means that your Swift toolchain is too old, particularly on Linux.
Make sure the latest toolchain is the one that is found when you run the Swift compiler (see above).

  If you get an older version, make sure that the right version of the swift compiler is found first in your `PATH`.  On macOS, use xcode-select to select and install the latest version, e.g.:

	sudo xcode-select -s /Applications/Xcode.app
	xcode-select --install
