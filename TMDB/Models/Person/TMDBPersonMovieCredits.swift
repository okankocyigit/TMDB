public struct TMDBPersonMovieCredits: Codable {
    public let cast: [TMDBPersonMovieCreditsCast]
    public let crew: [TMDBPersonMovieCreditsCrew]
    public let id: Int
}

public struct TMDBPersonMovieCreditsCast: Codable {
    public let character, creditID, releaseDate: String
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
    public let releaseDate, creditID: String

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
