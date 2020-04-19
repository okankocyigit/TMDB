public struct TMDBPersonExternalIDs: Codable {
    public let imdbID: String?
    public let facebookID: String?
    public let freebaseMid: String
    public let freebaseID: String?
    public let tvrageID: Int?
    public let twitterID: String?
    public let id: Int

    public enum CodingKeys: String, CodingKey {
        case imdbID = "imdb_id"
        case facebookID = "facebook_id"
        case freebaseMid = "freebase_mid"
        case freebaseID = "freebase_id"
        case tvrageID = "tvrage_id"
        case twitterID = "twitter_id"
        case id
    }
}
