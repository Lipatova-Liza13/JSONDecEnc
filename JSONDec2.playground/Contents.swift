import UIKit

struct News:Codable{
    var headline: String
    var summary: String
    var date: String
    var image:String
    struct Ganre: Codable {
        var id:String
        var name:String
        enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        }
    }
    var genres:[Ganre]
    enum CodingKeys: String, CodingKey {
        case headline = "original_title"
        case summary = "overview"
        case date = "release_date"
        case image = "poster_path"
        case genres = "genres"
        
    }
}
   let jsonString = """
   {
     "adult": false,
     "backdrop_path": null,
     "belongs_to_collection": null,
     "budget": 0,
     "genres": [
       {
         "id": 99,
         "name": "Documentary"
       }
     ],
     "homepage": "",
     "id": 413323,
     "imdb_id": "tt5852644",
     "original_language": "en",
     "original_title": "Deadpool: From Comics to Screen... to Screen",
     "overview": "This documentary divided into five segments examines the source and its path to the movies, backstory, special effects story/character areas, cast and performances. It includes notes from Reynolds, Liefeld, Miller, Wernick, Reese, executive producers Aditya Sood and Stan Lee, co-creator/comics writer Fabian Nicieza, producer Simon Kinberg, comics writer Joe Kelly, specialty costume designer Russell Shinkle, makeup designer Bill Corso, production designer Sean Haworth, director of photography Ken Seng, executive producer/unit production manager John J. Kelly, previs supervisor Franck Balson, stunt coordinator Philip J. Silvera, visual effects supervisors Pauline Duvall and Jonathan Rothbart, visual effects producer Annemarie Griggs, 2nd unit director/stunt coordinator Robert Alonzo, special effects coordinator Alex Burdett, utility stunts Regis Harrington, composer Tom Holkenberg, and actors Morena Baccarin, TJ Miller, Brianna Hildebrand, Leslie Uggams, Ed Skrein, and Gina Carano.",
     "popularity": 0,
     "poster_path": "/chV0avy5ogIB2PMTInT4KpHDzwj.jpg",
     "production_companies": [],
     "production_countries": [],
     "release_date": "2016-05-10",
     "revenue": 0,
     "runtime": 80,
     "spoken_languages": [],
     "status": "Released",
     "tagline": "",
     "title": "Deadpool: From Comics to Screen... to Screen",
     "video": false,
     "vote_average": 0,
     "vote_count": 0
   }
   """
"""
"page": 1,
"results": [
  {
    "poster_path": "/9O7gLzmreU0nGkIB6K3BsJbzvNv.jpg",
    "adult": false,
    "overview": "Framed in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.",
    "release_date": "1994-09-10",
    "genre_ids": [
      18,
      80
    ],
    "id": 278,
    "original_title": "The Shawshank Redemption",
    "original_language": "en",
    "title": "The Shawshank Redemption",
    "backdrop_path": "/xBKGJQsAIeweesB79KC89FpBrVr.jpg",
    "popularity": 6.741296,
    "vote_count": 5238,
    "video": false,
    "vote_average": 8.32
  },
  {
    "poster_path": "/lIv1QinFqz4dlp5U4lQ6HaiskOZ.jpg",
    "adult": false,
    "overview": "Under the direction of a ruthless instructor, a talented young drummer begins to pursue perfection at any cost, even his humanity.",
    "release_date": "2014-10-10",
    "genre_ids": [
      18,
      10402
    ],
    "id": 244786,
    "original_title": "Whiplash",
    "original_language": "en",
    "title": "Whiplash",
    "backdrop_path": "/6bbZ6XyvgfjhQwbplnUh1LSj1ky.jpg",
    "popularity": 10.776056,
    "vote_count": 2059,
    "video": false,
    "vote_average": 8.29
  }
  """
   let jsonData = jsonString.data(using: .utf8)!

if let jsonData = jsonString.data(using: .utf8)
{
    let decoder = JSONDecoder()
    do {
        let user = try decoder.decode(News.self, from: jsonData)
        print(user.summary)
    } catch {
        print(error.localizedDescription)
    }
} else {
    // Respond to error
}
