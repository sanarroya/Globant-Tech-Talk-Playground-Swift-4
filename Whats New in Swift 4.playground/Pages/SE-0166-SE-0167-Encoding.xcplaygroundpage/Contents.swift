//: [Previous](@previous)

//: [Next](@next)
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
    
    private enum CodingKeys: String, CodingKey {
        case url
        case message
        case author
        case comment_count
    }
}

let decoder = JSONDecoder()
decoder.dateDecodingStrategy = .iso8601
let commit = try decoder.decode(Commit.self, from: jsonData)
print(commit.comment_count)
