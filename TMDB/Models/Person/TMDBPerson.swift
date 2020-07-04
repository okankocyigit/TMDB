public struct TMDBPerson: Codable {
    public let knownForDepartment: String?
    public let adult: Bool
    public let id: Int
    public let profilePath: String?
    public let name: String
    public let knownFor: [TMDBPersonKnownFor]
    public let gender: Int
    public let popularity: Double

    public enum CodingKeys: String, CodingKey {
        case knownForDepartment = "known_for_department"
        case adult, id
        case profilePath = "profile_path"
        case name
        case knownFor = "known_for"
        case gender, popularity
    }
}

public struct TMDBPersonKnownFor: Codable {
    public let voteCount: Int
    public let id: Int
    public let video: Bool?
    public let mediaType: String
    public let voteAverage: Double
    public let title, releaseDate: String?
    public let originalLanguage: String
    public let originalTitle: String?
    public let genreIDS: [Int]
    public let backdropPath: String?
    public let adult: Bool?
    public let overview, posterPath: String?
    public let originalName, name: String?
    public let originCountry: [String]?
    public let firstAirDate: String?

    public enum CodingKeys: String, CodingKey {
        case voteCount = "vote_count"
        case id, video
        case mediaType = "media_type"
        case voteAverage = "vote_average"
        case title
        case releaseDate = "release_date"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case genreIDS = "genre_ids"
        case backdropPath = "backdrop_path"
        case adult, overview
        case posterPath = "poster_path"
        case originalName = "original_name"
        case name
        case originCountry = "origin_country"
        case firstAirDate = "first_air_date"
    }
}
