import UIKit
//  Struct in struct
struct Response: Codable
{
    struct User: Codable {
        var first_name:String
        var last_name:String
    }

    var users:[User]
}

let jsonString = """
{
    "users":
    [
        {
            "first_name": "Arthur",
            "last_name": "Dent"
        }, {
            "first_name": "Zaphod",
            "last_name": "Beeblebrox"
        }, {
            "first_name": "Marvin",
            "last_name": "The Paranoid Android"
        }
    ]
}
"""
let jsonData = jsonString.data(using: .utf8)!
let response = try! JSONDecoder().decode(Response.self, from: jsonData)

for user in response.users {
    print(user.first_name)
}
