/*:
 # What's new in Swift 4
 
 ## Contents
 
 1. Required tools (see below)
 1. [Strings](SE-0163-0168-Strings)
 1. [One-Sided Ranges](SE-0172-Ranges)
 1. [Private declarations](SE-0169-Private)
 1. [Key paths](SE-0161-SmartKeyPaths)
 1. [Encoding and Decoding]()
 1. [`Dictionary` and `Set` enhancements]()
 1. [`SwapAt` method]()
 1. [`reduce` with `inout`]()
 1. [Composing classes and protocols]()
 1. [Limiting `@objc` inference]()

 ## Required Tools
 
 This playground requires Swift 4. Xcode 9 includes Swift 4 by default. You can also run it in Xcode 8.3, but you need to install a Swift 4 toolchain (donʼt worry, itʼs easy):
 1. Download [the Swift 4.0 release from swift.org][Snapshot downloads].
 1. Run the installer to install the snapshot.
 1. In Xcode, go to _Preferences > Components > Toolchains…_ and select Swift 4.0:
 
 ![][xcode-8-3-toolchain-dialog]
 
 
 It might be a good idea to quit and relaunch Xcode after switching toolchains. I had occasional problems with syntax highlighting and code completion that a relaunch fixed.
 
 [Xcode 9]: https://developer.apple.com/download/
 [Snapshot downloads]: https://swift.org/builds/swift-4.0-release/xcode/swift-4.0-RELEASE/swift-4.0-RELEASE-osx.pkg
 [xcode-8-3-toolchain-dialog]: xcode-8-3-toolchain-dialog.png
 
 [**Previous**](@previous)[    **Next**](@next)
 */

