public struct TMDBPersonMovieCredits: Codable {
    public let cast: [TMDBPersonMovieCreditsCast]
    public let crew: [TMDBPersonMovieCreditsCrew]
    public let id: Int
}

public struct TMDBPersonMovieCreditsCast: Codable {
    public var character, creditID, releaseDate: String?
    public let voteCount: Int
    public let video, adult: Bool
    public let voteAverage: Double
    public let title: String
    public let genreIDS: [Int]
    public let originalLanguage: String
    public let originalTitle: String
    public let popularity: Double
    public let id: Int
    public let backdropPath: String?
    public let overview: String
    public let posterPath: String?
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        character = try values.decode(String.self, forKey: .character)
        creditID = try values.decode(String.self, forKey: .creditID)
        
        if values.contains(.releaseDate) {
            releaseDate = try values.decodeIfPresent(String.self, forKey: .releaseDate)
        } else {
            releaseDate = nil
        }
        
        voteCount = try values.decode(Int.self, forKey: .voteCount)
        video = try values.decode(Bool.self, forKey: .video)
        adult = try values.decode(Bool.self, forKey: .adult)
        voteAverage = try values.decode(Double.self, forKey: .voteAverage)
        title = try values.decode(String.self, forKey: .title)
        genreIDS = try values.decode([Int].self, forKey: .genreIDS)
        originalLanguage = try values.decode(String.self, forKey: .originalLanguage)
        originalTitle = try values.decode(String.self, forKey: .originalTitle)
        popularity = try values.decode(Double.self, forKey: .popularity)
        id = try values.decode(Int.self, forKey: .id)
        backdropPath = try values.decodeIfPresent(String.self, forKey: .backdropPath)
        overview = try values.decode(String.self, forKey: .overview)
        posterPath = try values.decodeIfPresent(String.self, forKey: .posterPath)
    }

    public enum CodingKeys: String, CodingKey {
        case character
        case creditID = "credit_id"
        case releaseDate = "release_date"
        case voteCount = "vote_count"
        case video, adult
        case voteAverage = "vote_average"
        case title
        case genreIDS = "genre_ids"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case popularity, id
        case backdropPath = "backdrop_path"
        case overview
        case posterPath = "poster_path"
    }
}


public struct TMDBPersonMovieCreditsCrew: Codable {
    public let id: Int
    public let department, originalLanguage, originalTitle, job: String
    public let overview: String
    public let voteCount: Int
    public let video: Bool
    public let posterPath: String?
    public let backdropPath: String?
    public let title: String
    public let popularity: Double
    public let genreIDS: [Int]
    public let voteAverage: Double
    public let adult: Bool
    public let releaseDate: String?
    public let creditID: String
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        department = try values.decode(String.self, forKey: .department)
        originalLanguage = try values.decode(String.self, forKey: .originalLanguage)
        originalTitle = try values.decode(String.self, forKey: .originalTitle)
        job = try values.decode(String.self, forKey: .job)
        overview = try values.decode(String.self, forKey: .overview)
        voteCount = try values.decode(Int.self, forKey: .voteCount)
        video = try values.decode(Bool.self, forKey: .video)
        posterPath = try values.decodeIfPresent(String.self, forKey: .posterPath)
        backdropPath = try values.decodeIfPresent(String.self, forKey: .backdropPath)
        title = try values.decode(String.self, forKey: .title)
        popularity = try values.decode(Double.self, forKey: .popularity)
        genreIDS = try values.decode([Int].self, forKey: .genreIDS)
        voteAverage = try values.decode(Double.self, forKey: .voteAverage)
        adult = try values.decode(Bool.self, forKey: .adult)
        creditID = try values.decode(String.self, forKey: .creditID)
        
        if values.contains(.releaseDate) {
            releaseDate = try values.decodeIfPresent(String.self, forKey: .releaseDate)
        } else {
            releaseDate = nil
        }
        
    }

    public enum CodingKeys: String, CodingKey {
        case id, department
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case job, overview
        case voteCount = "vote_count"
        case video
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
        case title, popularity
        case genreIDS = "genre_ids"
        case voteAverage = "vote_average"
        case adult
        case releaseDate = "release_date"
        case creditID = "credit_id"
    }
}
