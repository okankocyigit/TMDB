public struct TMDBTVEpisode: Codable {
    public let airDate: String
    public let episodeNumber, id: Int
    public let name, overview, productionCode: String
    public let seasonNumber: Int
    public let showID: Int?
    public let stillPath: String?
    public let voteAverage: Double
    public let voteCount: Int
    public let crew: [TMDBCrew]?
    public let guestStars: [TMDBCast]?
    public let rating: Double?

    public enum CodingKeys: String, CodingKey {
        case airDate = "air_date"
        case episodeNumber = "episode_number"
        case id, name, overview
        case productionCode = "production_code"
        case seasonNumber = "season_number"
        case showID = "show_id"
        case stillPath = "still_path"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case crew
        case guestStars = "guest_stars"
        case rating
    }
}
