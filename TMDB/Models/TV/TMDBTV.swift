public struct TMDBTV: Codable {
    public let originalName: String
    public let genreIDS: [Int]
    public let name: String
    public let popularity: Double
    public let originCountry: [String]
    public let voteCount: Int
    public let firstAirDate: String?
    public let backdropPath: String?
    public let originalLanguage: String
    public let id: Int
    public let voteAverage: Double
    public let overview: String?
    public let posterPath: String?
    public let rating: Double?

    public enum CodingKeys: String, CodingKey {
        case originalName = "original_name"
        case genreIDS = "genre_ids"
        case name, popularity
        case originCountry = "origin_country"
        case voteCount = "vote_count"
        case firstAirDate = "first_air_date"
        case backdropPath = "backdrop_path"
        case originalLanguage = "original_language"
        case id
        case voteAverage = "vote_average"
        case overview
        case posterPath = "poster_path"
        case rating
    }
}
