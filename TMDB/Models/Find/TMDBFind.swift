public struct TMDBFind: Codable {
    public let movieResults: [TMDBMovie]
    public let tvResults: [TMDBTV]
    public let tvEpisodeResults: [TMDBTVEpisode]
    public let personResults: [TMDBPerson]
    public let tvSeasonResults: [TMDBTVSeason]

    public enum CodingKeys: String, CodingKey {
        case movieResults = "movie_results"
        case personResults = "person_results"
        case tvResults = "tv_results"
        case tvEpisodeResults = "tv_episode_results"
        case tvSeasonResults = "tv_season_results"
    }
}
