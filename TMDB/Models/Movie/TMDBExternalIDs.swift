public struct TMDBExternalIDs: Codable {
    public let id: Int?
    public let imdbID, instagramID, twitterID, facebookID: String?

    public enum CodingKeys: String, CodingKey {
        case id
        case imdbID = "imdb_id"
        case facebookID = "facebook_id"
        case instagramID = "instagram_id"
        case twitterID = "twitter_id"
    }
}
