public struct TMDBPersonTVCredits: Codable {
    public let cast: [TMDBPersonTVCreditsCast]
    public let crew: [TMDBPersonTVCreditsCrew]
    public let id: Int
}

public struct TMDBPersonTVCreditsCast: Codable {
    public let creditID, originalName: String
    public let id: Int
    public let genreIDS: [Int]
    public let character, name: String
    public let posterPath: String?
    public let voteCount: Int
    public let voteAverage, popularity: Double
    public let episodeCount: Int
    public let originalLanguage, firstAirDate, backdropPath, overview: String
    public let originCountry: [String]

    public enum CodingKeys: String, CodingKey {
        case creditID = "credit_id"
        case originalName = "original_name"
        case id
        case genreIDS = "genre_ids"
        case character, name
        case posterPath = "poster_path"
        case voteCount = "vote_count"
        case voteAverage = "vote_average"
        case popularity
        case episodeCount = "episode_count"
        case originalLanguage = "original_language"
        case firstAirDate = "first_air_date"
        case backdropPath = "backdrop_path"
        case overview
        case originCountry = "origin_country"
    }
}

public struct TMDBPersonTVCreditsCrew: Codable {
    public let id: Int
    public let department, originalLanguage: String
    public let episodeCount: Int
    public let job, overview: String
    public let originCountry: [String]
    public let originalName: String
    public let genreIDS: [Int]
    public let name, firstAirDate, backdropPath: String
    public let popularity: Double
    public let voteCount: Int
    public let voteAverage: Double
    public let posterPath: String?
    public let creditID: String

    public enum CodingKeys: String, CodingKey {
        case id, department
        case originalLanguage = "original_language"
        case episodeCount = "episode_count"
        case job, overview
        case originCountry = "origin_country"
        case originalName = "original_name"
        case genreIDS = "genre_ids"
        case name
        case firstAirDate = "first_air_date"
        case backdropPath = "backdrop_path"
        case popularity
        case voteCount = "vote_count"
        case voteAverage = "vote_average"
        case posterPath = "poster_path"
        case creditID = "credit_id"
    }
}
