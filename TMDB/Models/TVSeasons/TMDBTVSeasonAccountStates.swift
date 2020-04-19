public struct TMDBTVSeasonAccountStates: Codable {
    public let id: Int
    public let episodeNumber: Int
    public let rated: TMDBBool
    
    public enum CodingKeys: String, CodingKey {
        case id, rated
        case episodeNumber = "episode_number"
    }
}
