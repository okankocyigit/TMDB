public struct TMDBTVSeason: Codable {
    public let airDate: String?
    public let episodeCount, id: Int
    public let name: String
    public let posterPath, overview: String?
    public let seasonNumber: Int

    public enum CodingKeys: String, CodingKey {
        case airDate = "air_date"
        case episodeCount = "episode_count"
        case id, name, overview
        case posterPath = "poster_path"
        case seasonNumber = "season_number"
    }
}
