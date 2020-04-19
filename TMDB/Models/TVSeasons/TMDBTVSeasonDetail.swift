public struct TMDBTVSeasonDetail: Codable {
    public let id, airDate: String
    public let episodes: [TMDBTVEpisode]
    public let name, overview: String
    public let tmdbNetworkID: Int
    public let posterPath: String
    public let seasonNumber: Int

    public enum CodingKeys: String, CodingKey {
        case id = "_id"
        case airDate = "air_date"
        case episodes, name, overview
        case tmdbNetworkID = "id"
        case posterPath = "poster_path"
        case seasonNumber = "season_number"
    }
}
