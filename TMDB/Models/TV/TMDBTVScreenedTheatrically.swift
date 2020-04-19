public struct TMDBTVScreenedTheatrically: Codable {
    public let id, episodeNumber, seasonNumber: Int

    public enum CodingKeys: String, CodingKey {
        case id
        case episodeNumber = "episode_number"
        case seasonNumber = "season_number"
    }
}
