# asciied

We are working on asciied,  an open source [asciidoc](http://www.asciidoc.org)
editor for OS X, forked from [MacDown](http://macdown.uranusjr.com).

Project status: this is all in development, and it's not near even an
alpha-quality release.

## License

asciied is released under the terms of MIT License. You may find the content
of the license [here](http://opensource.org/licenses/MIT), or inside the
`LICENSE` directory.

You may find full text of licenses about third-party components in the
`LICENSE` directory, or the **About asciied** panel in the application.

## Development

If you wish to build asciied yourself, you will need the following
components/tools:

* OS X 10.8 SDK
* Git
* [CocoaPods](http://cocoapods.org)

After cloning the repository, run the following commands inside the repository
root (directory containing this `README.md` file):

```bash
git submodule update --init --recursive
pod _0.34.4_ install
```

and open `asciied.xcworkspace` in Xcode. The first command initialises the
dependency submodule(s) used in MacDown; the second one installs dependencies
managed by CocoaPods.

Due to an upstream bug, building with Cocoapods 0.35 fails, see also
[this comment](https://github.com/uranusjr/macdown/issues/220#issuecomment-65014799).

