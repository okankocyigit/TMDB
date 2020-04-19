public struct TMDBTVEpisodeGroups: Codable {
    public let resultDescription: String
    public let episodeCount, groupCount: Int
    public let id, name: String
    public let network: TMDBNetwork?
    public let type: TMDBTVEpisodeGroupType

    public enum CodingKeys: String, CodingKey {
        case resultDescription = "description"
        case episodeCount = "episode_count"
        case groupCount = "group_count"
        case id, name, network, type
    }
}

public enum TMDBTVEpisodeGroupType: Int, Codable {
    case originalAirDate = 1
    case absolute = 2
    case dvd = 3
    case digital = 4
    case storyArc = 5
    case production = 6
    case tv = 7
}

public struct TMDBTVEpisodeGroupsDetail: Codable {
    public let resultDescription: String
    public let episodeCount, groupCount: Int
    public let id, name: String
    public let network: TMDBNetwork?
    public let type: Int
    public let groups: [TMDBTVEpisodeGroup]

    public enum CodingKeys: String, CodingKey {
        case resultDescription = "description"
        case episodeCount = "episode_count"
        case groupCount = "group_count"
        case id, name, network, type, groups
    }
}

public struct TMDBTVEpisodeGroup: Codable {
    public let id, name: String
    public let order: Int
    public let episodes: [TMDBTVEpisode]
    public let locked: Bool
}
