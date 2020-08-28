import UIKit

struct User:Codable
{
    var firstName:String
    var lastName:String
    var country:String

    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case country
    }
}
   let jsonString = """
   {
       "first_name": "John",
       "last_name": "Doe",
       "country": "United Kingdom"
   }
   """
   let jsonData = jsonString.data(using: .utf8)!

if let jsonData = jsonString.data(using: .utf8)
{
    let decoder = JSONDecoder()
    do {
        let user = try decoder.decode(User.self, from: jsonData)
        print(user.firstName)
    } catch {
        print(error.localizedDescription)
    }
} else {
    // Respond to error
}
