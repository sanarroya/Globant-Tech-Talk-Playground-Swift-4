/*: 
 ## [SE-0161] Smart key paths:
 New strongly typed keypaths
 */
import Foundation

@objcMembers class Speaker: NSObject {
    dynamic var name: String = ""
    dynamic var site: String = ""
    
    init(name: String, site: String) {
        self.name = name
        self.site = site
    }
}

@objcMembers class TechTalk: NSObject {
    dynamic var title: String!
    dynamic var speaker: Speaker!
    private var observation: NSKeyValueObservation!
    private var techTalkContext = 0
    
    init(title: String, speaker: Speaker) {
        super.init()
        self.title = title
        self.speaker = speaker
        self.addObserver(self, forKeyPath: "speaker", options: .new, context: &techTalkContext)
        self.observation = observe(\.speaker){ observed, changed in
            print(changed)
            print("Speaker name: \(observed.speaker.name)")
            print("Speaker site: \(observed.speaker.site)")
        }
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if context == &techTalkContext {
            if let newSpeaker = change?[.newKey] as? Speaker {
                print("KVO Speaker name: \(newSpeaker.name)")
                print("KVO Speaker site: \(newSpeaker.site)")
            }
        }
    }
}

let blankSpeaker = Speaker(name: "", site: "Salitre")
let santiago = Speaker(name: "Santiago Avila", site: "Salitre")
let techTalk = TechTalk(title: "What's new in Swift 4", speaker: blankSpeaker)

/*:
 Key paths are formed by starting at a root type and drilling down any combination of property and subscript names.
 
 You write a key path by starting with a backslash: `\Book.title`. Every type automatically gets a `[keyPath: …]` subscript to get or set the value at the specified key path.
 */
techTalk[keyPath: \TechTalk.title]
// Key paths can to drill down and work for computed properties

/*:
 Key paths are objects that can be stored and manipulated. For example, you can append additional segments to a key path to drill down further.
 */
let speakerKeyPath = \TechTalk.speaker
type(of: speakerKeyPath)
let titleKeyPath = speakerKeyPath.appending(path: \.site) // you can omit the type name if the compiler can infer it
techTalk[keyPath: titleKeyPath]

/*:
 ### Key value observing
 */

techTalk.speaker = santiago

//:[**Previous**](@previous)[    **Next**](@next)
