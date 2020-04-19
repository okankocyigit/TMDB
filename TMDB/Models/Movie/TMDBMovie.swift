public struct TMDBMovie: Codable {
    public let popularity: Double?
    public let voteCount: Int?
    public let video: Bool?
    public let posterPath: String?
    public let id: Int
    public let adult: Bool?
    public let backdropPath: String?
    public let originalLanguage: String
    public let originalTitle: String
    public let genreIDS: [Int]?
    public let title: String
    public let voteAverage, rating: Double?
    public let overview, releaseDate: String?

    public enum CodingKeys: String, CodingKey {
        case popularity
        case voteCount = "vote_count"
        case video
        case posterPath = "poster_path"
        case id, adult
        case backdropPath = "backdrop_path"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case genreIDS = "genre_ids"
        case title
        case voteAverage = "vote_average"
        case overview
        case releaseDate = "release_date"
        case rating
    }
}

