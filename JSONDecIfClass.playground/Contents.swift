import UIKit
class User: Codable {
    var first_name:String
    var last_name:String
    var country:String

init?(first_name: String, last_name: String, country: String) {
    
    // The name must not be empty
    guard !first_name.isEmpty else {
        return nil
    }
    guard !last_name.isEmpty else {
        return nil
    }
    guard !country.isEmpty else {
        return nil
    }
    self.first_name = first_name
    self.last_name = last_name
    self.country = country

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
        print(user.last_name)
    } catch {
        print(error.localizedDescription)
    }
} else {
    // Respond to error
}


