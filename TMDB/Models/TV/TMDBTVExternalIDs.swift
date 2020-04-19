public struct TMDBTVExternalIDs: Codable {
    public let id: Int
    public let imdbID, freebaseMid, freebaseID: String?
    public let tvdbID, tvrageID: Int?
    public let facebookID, instagramID, twitterID: String?

    public enum CodingKeys: String, CodingKey {
        case id
        case imdbID = "imdb_id"
        case freebaseMid = "freebase_mid"
        case freebaseID = "freebase_id"
        case tvdbID = "tvdb_id"
        case tvrageID = "tvrage_id"
        case facebookID = "facebook_id"
        case instagramID = "instagram_id"
        case twitterID = "twitter_id"
    }
}
