/*: [Previous](@previous)
 ## [SE-0169] Improve interaction Between private declarations and extensions:
 ### Collection Conformance
 */
import Foundation

class TechTalk {
    fileprivate var speakerName: String?
}

extension TechTalk {
    func updateSpeakerName(_ name: String) {
        speakerName = name
    }
}
//: [Next](@next)
