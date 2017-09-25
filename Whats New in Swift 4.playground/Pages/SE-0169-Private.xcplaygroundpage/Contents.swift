/*: [Previous](@previous)
 ## [SE-0169] Improve interaction Between private declarations and extensions:
 ### Collection Conformance
 */
import Foundation

class Speaker: NSObject {
    fileprivate var name: String
    var site: String
    
    init(name: String, site: String) {
        self.name = name
        self.site = site
    }
}

extension Speaker {
    func updateName(_ name: String) {
        self.name = name
    }
}
//:[**Previous**](@previous)[    **Next**](@next)
