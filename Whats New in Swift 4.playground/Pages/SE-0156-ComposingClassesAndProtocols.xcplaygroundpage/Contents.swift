/*:
 ## [SE-0156] Composing classes and protocols
 
 You can now declare a variable of a concrete type and constrain it to one or more protocols ar the same time.
 Now you can write the equivalent of the Objective-C code `UIViewController <SomeProtocol> *` in Swift
 */
import Foundation

class Speaker: NSObject {
    var name: String
    var project: String
    
    init(name: String, project: String) {
        self.name = name
        self.project = project
    }
}

protocol SpeakerProtocol {}

extension Speaker: SpeakerProtocol {}

class TechTalk: NSObject {
    var title: String
    var speaker: Speaker & SpeakerProtocol
    
    init(title: String, speaker: Speaker) {
        self.title = title
        self.speaker = speaker
    }
}

let speaker = Speaker(name: "", project: "")

//:[**Previous**](@previous)[    **Next**](@next)

