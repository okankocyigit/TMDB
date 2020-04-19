public struct TMDBTVContentRating: Codable {
    public let iso3166_1, rating: String

    public enum CodingKeys: String, CodingKey {
        case iso3166_1 = "iso_3166_1"
        case rating
    }
}
