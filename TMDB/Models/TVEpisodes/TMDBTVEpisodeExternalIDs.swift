public struct TMDBTVEpisodeExternalIDs: Codable {
    public let id: Int
    public let imdbID, freebaseMid, freebaseID: String
    public let tvdbID, tvrageID: Int

    public enum CodingKeys: String, CodingKey {
        case id
        case imdbID = "imdb_id"
        case freebaseMid = "freebase_mid"
        case freebaseID = "freebase_id"
        case tvdbID = "tvdb_id"
        case tvrageID = "tvrage_id"
    }
}
