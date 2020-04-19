public struct TMDBTimezone: Codable {
    public let iso3166_1: String
    public let zones: [String]

    public enum CodingKeys: String, CodingKey {
        case iso3166_1 = "iso_3166_1"
        case zones
    }
}
