# Building

Normally, you don't build this package directly, but you embed it into your own project (see <doc:Usage> above).
However, you can build and test this module separately to ensure that everything works.

Make sure you have all the prerequisites installed (see <doc:GettingStarted> above).
After that, you can simply clone this repository and build the library and its unit tests
(be patient, this will download all the required dependencies and take a while to compile)
using:

	git clone https://github.com/rhx/SwiftGLib.git
	cd SwiftGLib
    swift build
    swift test
