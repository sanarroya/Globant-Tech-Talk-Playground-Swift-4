/*:
 ## [SE-0166] Archival and serialization
 
 Defines a way for any Swift type (classes, structs and enums) to describe how to archive and serialize itself.
 */
import Foundation

let jsonData = """
{
    "url": "https://github.com",
    "author": {
        "name": "Santiago Avila",
        "email": "santiago.avila@globant.com",
        "date": "2017-09-26T16:00:49Z"
    },
    "message": "Swift 4",
    "comment_count" : 0,
}
""".data(using: .utf8)!

struct Author: Codable {
    let name: String
    let email: String
    let date: Date
}

struct Commit: Codable {
    let url: URL
    let author: Author
    let message: String
    let comment_count: Int
}


//:[**Previous**](@previous)[    **Next**](@next)
