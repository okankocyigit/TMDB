public struct TMDBReviewDetail: Codable {
    public let id, author, content, iso639_1: String
    public let mediaID: Int
    public let mediaTitle, mediaType: String
    public let url: String

    public enum CodingKeys: String, CodingKey {
        case id, author, content
        case iso639_1 = "iso_639_1"
        case mediaID = "media_id"
        case mediaTitle = "media_title"
        case mediaType = "media_type"
        case url
    }
}
