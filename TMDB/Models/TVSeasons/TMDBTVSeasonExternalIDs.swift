public struct TMDBTVSeasonExternalIDs: Codable {
    public let id: Int
    public let freebaseMid, freebaseID: String?
    public let tvdbID: Int?
    public let tvrageID: Int?

    public enum CodingKeys: String, CodingKey {
        case id
        case freebaseMid = "freebase_mid"
        case freebaseID = "freebase_id"
        case tvdbID = "tvdb_id"
        case tvrageID = "tvrage_id"
    }
}
